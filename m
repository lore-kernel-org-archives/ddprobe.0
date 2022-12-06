Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B3E7F1362
	for <ddprobe@lists.linux.dev>; Tue,  6 Dec 2022 10:40:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6F3F5C433D7
	for <ddprobe@lists.linux.dev>; Tue,  6 Dec 2022 10:40:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670323254;
	bh=VehW1RytfTB63yxoma7tM2Zd53QV3FfogsbusLLv3XQ=;
	h=To:Subject:From:Date:From;
	b=MMiInhRMlPP9mZKghsLWjxJKpaS3Qwq1ScB/6dRGD/bnaTnUcNuK3lYuxP8ueUt2s
	 Cm+K1TkGSFxv/U+W8nXLa6Dreb1tGaxCDAI5FYSJp7jMCNqCzIhlkw9qb0t9EX44af
	 /6yLxoXTYDA6/OOmsSC3SUOuwWRu2dIpiTqdgY8lJq4loOxTotvq4ziqLCYh7NQPxX
	 s+A0GTfGAZ++QYK2CQXt2WjTRD2yxkGlPm0dr38nlXbO8C1JPlC2ju6MVHsSZvqWn4
	 UWiFhklw9pnF13RK8AtwitpEcKPwEiFF3/sEdK9XEV/KqYxxyqgEIS8eDZ2tR4rCoq
	 OCoMClXov08aA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 575B7C352A1
	for <ddprobe@lists.linux.dev>; Tue,  6 Dec 2022 10:40:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167032325434.25910.234223177546306954.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 21c80dd713354ddece3568794c63179060bcab8a7f2fd8540300a185767bb5d0
Date: Tue, 06 Dec 2022 10:40:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670323254
