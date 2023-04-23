Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D24E620
	for <ddprobe@lists.linux.dev>; Sun, 23 Apr 2023 04:21:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DF059C433EF
	for <ddprobe@lists.linux.dev>; Sun, 23 Apr 2023 04:21:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1682223665;
	bh=oi0Udls+AQy/WNUjZmJwyR3tU4GFa5ZxFW/D8x+Sbkw=;
	h=To:Subject:From:Date:From;
	b=n0+J6ihhcTcjT7kfpLWyX5wgdmG1W/k6FusOgvTL7g8Bm972iQpKf1Fh1vU4QkmGu
	 /JkkU2e51U7Cfy1K1G6YYOQAfnhAf9cekZHIIiJx/vp9E3xP7aDQZvDmv3inMRGSI/
	 FZWJLDoYwPkOEH9p5tdatCWcZ570nZ3A0rikhaq2MH1GB0YWNIFK/tAEgC+Zey/HxP
	 wkc9aa3vI2Y8slZtp218L7lj0+4NsXfvmXHDt7Yff2FgrPlirBuJdJgeB+8N5TKIiZ
	 9NM6IS2118V1SDkHyMKqF2EioeA6L48kkg+t/Chp+qbjueaaeZksM2S883wPwWuzv2
	 /GsGppZLxMlFA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BF51EC77B73
	for <ddprobe@lists.linux.dev>; Sun, 23 Apr 2023 04:21:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168222366577.25585.15654307622014417294.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0a3066df8911107f94dcf8b663ce7f2d5e6da0cfd2888819c309e83c58ad1cbb
Date: Sun, 23 Apr 2023 04:21:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1682223665
