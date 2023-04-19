Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4BAA13D67
	for <ddprobe@lists.linux.dev>; Wed, 19 Apr 2023 14:05:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DECFEC433D2
	for <ddprobe@lists.linux.dev>; Wed, 19 Apr 2023 14:05:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1681913105;
	bh=2HkFOagHnn/yDCUotERcQnC5vWWTWiqnRBhcuhJgpOY=;
	h=To:Subject:From:Date:From;
	b=i8BLN/JrtDOnCtnFDQuvJrZBzP2455y/MEnFbj5eS+mFHHjQed9i5jrI2nT5LCZkz
	 Md+Dizp3X+qtfZGsShHY+ESlRTh68X9omcI7e0QrMf6xCsarlhh/Jni52wn+uQAC8o
	 1x8s8l44lf1uqBc957aFXs/YxRNqpkCpCrKCE4eCNmKeeGpC+0q3lGKbCeDHTSoA4s
	 CjX0ht8kBe/KJkfcLcK4jmvZT3Ppgp2QjFrFfCIlu6sYWj5BZy75EZGTCoCABIz/+3
	 crG3otQbKlXyiz5eRCqM4jiBQDJSwNDw9fAJltwyPbds+VqTMSsufEOi943ABT5qdy
	 LQk2nO2e6LPoA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BC720C77B73
	for <ddprobe@lists.linux.dev>; Wed, 19 Apr 2023 14:05:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168191310576.7006.12930134241807963998.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 44d4808ec86ec521f04afc41cec1e7b84cc2c3381e2d0510ef71d4cde41cf1d9
Date: Wed, 19 Apr 2023 14:05:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1681913105
