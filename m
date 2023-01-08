Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EA3C31FAF
	for <ddprobe@lists.linux.dev>; Sun,  8 Jan 2023 09:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9BCF5C433D2
	for <ddprobe@lists.linux.dev>; Sun,  8 Jan 2023 09:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673169087;
	bh=KxiqJb17LsEKBeHBnpIMTU0WA7TwXN2qNZBr/GJOmAg=;
	h=To:Subject:From:Date:From;
	b=XM/V43nuOrn3GsElr69kQUDyZBxCHerG9hFB3Qqm+31h9BF/1FzFNYz8I9UzwZtei
	 RQjUlnowIUP+Ee3ualD1slI/PssR4G+oHO/lwpOcvYTNeNGmUcBgkAegNSVjk5a2rk
	 ppxowZO5UlnoH7/LN+u1Hr1jVfYxnmh0VWhd7byFuqneUYTKz+B3yhnHEnvkspbaXb
	 YM6YTkgr9HN6yHM1DyG7fiq0lGDSNzJRKo9nR96wJar9NAyJd4ecSgrxffh5SBV6EH
	 kC7Qctn0wXnPwgPofA/5QayssRRKp38yLYC0t3X7l/1Y5AhkjSojRhJJSxynT+5Hbw
	 EMO63NY/w/4Rg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7B1FDC53210
	for <ddprobe@lists.linux.dev>; Sun,  8 Jan 2023 09:11:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167316908749.22751.11166687229699291564.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 80cfd191bf53bae064ed1f53ae00d5ebc93bf97dd9f3b383bb2f55938fba38c9
Date: Sun, 08 Jan 2023 09:11:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673169087
