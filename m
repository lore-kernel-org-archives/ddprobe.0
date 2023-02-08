Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3101D2561
	for <ddprobe@lists.linux.dev>; Wed,  8 Feb 2023 13:40:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DCD2BC433D2
	for <ddprobe@lists.linux.dev>; Wed,  8 Feb 2023 13:40:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1675863605;
	bh=pL6CrSgaedTHhS6FxPS1T4PBNeYSIwg0AvMlCzfss38=;
	h=To:Subject:From:Date:From;
	b=iZA8iBTzR92kvNAY2XAKClInB2asvZGZQGF7ET0v1iGv29V7238+5OFZm4XA7pquh
	 I6w6IZnlYB7ycY6Tf/kn8QgbMR/5yzYLT3wiABItfTfy6GJiCMoElrHi4c6/UlPd7S
	 TsTjZOOW02q1AhI1M+fevBHEsjaasYb3tRQNhTm76oVirpr06/M3vdpAAH7xv5AQJh
	 u1jyzWo06O3j7uyQ8WdAmHoG9E4htXdcZ906fbCnQ1pC027tVM1TXFMsHOv8bL9x/c
	 rOQZDEVmoykWM77ZXnBLp8LYENLTaPxpzH5ztq9qjDeyJNooTErUiH9SmzENYXxFkk
	 Lg+fGjievRtXQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BD815C636CC
	for <ddprobe@lists.linux.dev>; Wed,  8 Feb 2023 13:40:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167586360575.23068.14938857047261385715.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6ddea81afa8c6bae8d3b7ce74f49819800d3d1445539e1deaa54e40ce34e0ad5
Date: Wed, 08 Feb 2023 13:40:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1675863605
