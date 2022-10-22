Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B3F217C
	for <ddprobe@lists.linux.dev>; Sat, 22 Oct 2022 07:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6CCEFC433D6
	for <ddprobe@lists.linux.dev>; Sat, 22 Oct 2022 07:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666423853;
	bh=dbtMcKILMzkYoOVYQrzco9m73VWPoI8442H5LNscrFo=;
	h=To:Subject:From:Date:From;
	b=E6/WRw2bBPtcjpiEKctPz4DY1DRt5xIpgFFhSIm4ACKLroDr4qTX6lpDdvmvoCycv
	 fwOOXafWQYbanh+C9vuJGwUv/YSufYDKISW1Z0bGiJSTb60KdPXwO6irv+X2QTeAgL
	 SiaiVxc7Y5pQ6QUtgq3hEOKg8fcEsWnQPz/l6yYzxAPZ89162ylP5GZW5xSgx+7r26
	 FPt1hdvKvRMa7xw5MMy8BQ0JabIWIkZVKh7GyrSfm6WxHAP3tn6DkQRsFfaupQt6bd
	 NrmNa9JZtMRRXD/4xbGLgMujeQkxpHuHgqtMAd1O9+ciDHrTZJxUdTQwG+84VuLrsy
	 rLEW8AniSgrFw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 50306C04A95
	for <ddprobe@lists.linux.dev>; Sat, 22 Oct 2022 07:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166642385332.25837.8580524623605806101.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7c58136ec7c1a0d9de4c4c06c7744790de5b907bad874ac9663d18d2c24910ec
Date: Sat, 22 Oct 2022 07:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666423853
