Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D59E36FC7
	for <ddprobe@lists.linux.dev>; Thu, 29 Dec 2022 15:51:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7D77CC433D2
	for <ddprobe@lists.linux.dev>; Thu, 29 Dec 2022 15:51:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672329087;
	bh=XbJ6mfdP9eVGspoS3oH7xa1aGsN763wsh4D+6AWujiM=;
	h=To:Subject:From:Date:From;
	b=QDm+zwLi2PszUmaTSDMyhe+XL/uGEybUIof9QnqAInyERdcfo0SINhDFI1KSDsCSt
	 V31vPMm4m2ipKCxopTugP9msS8mvt1ui+ut8dFrW8yH9GziDc3nIhaKYao8QrDce/c
	 Ns2JtudfEPxyQjPhAJ1ihzS3tzBbdApuywMKmpHQv55exxicoJ/J3071+al5Ax+Egy
	 923Ixv0qThimChx/Ns+xlh5AcEpVHYXPiLyjpZ7KiIKuKWpPwcqRWWheASOpwPjxNg
	 e5OlF2bH7iMzK/6P/cuavzcz97qAOEb0QRyTHckC3hJL7orTlWUoNnARClxQ8IXw20
	 IVCmpuS9s68wg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 600B4C4332F
	for <ddprobe@lists.linux.dev>; Thu, 29 Dec 2022 15:51:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167232908738.29524.9168679064178130671.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d7f3fd34ef3355dd2cc54f748824c05b5380de6a9bb5d2f1c4f58927fed0a25b
Date: Thu, 29 Dec 2022 15:51:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672329087
