Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DE8F55394
	for <ddprobe@lists.linux.dev>; Sat,  8 Oct 2022 19:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8977CC433D6
	for <ddprobe@lists.linux.dev>; Sat,  8 Oct 2022 19:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665256853;
	bh=yVPtBFobXS4ZJe6LzhzQ8sM4+PyIOQFNNLNbIvfl98U=;
	h=To:Subject:From:Date:From;
	b=sCDTDoWxBGSp6xXda4xJ/ZUii/YCQM+y4AWK0rEebiwPY2uFap7mW64/+bT4kz8Zc
	 af1ZCYY++aeoHEKoTlCET0T0VwAmu92yf0kgHu/x3YnpqM1kDgk/Rl+idRkdY7VkQa
	 Yq3xGykkdhw07KmRiUpOO2393kbklHBvyYQWi2HcuEA6wfpdKzwmde6xlhf1bkyCgl
	 uau0ZXbU/UytXHjYta3VjZGiydF+l5tl3V7e2DvUuCBlK0fW5IlX4N3FFLOdi/DzPe
	 QzP4B8g6ff0Ds+2wN5XVPwFJve/xTscRnbdJyNOweHq0UZWUOZkFTuSMYFwLrGIHeF
	 3yLMUSTnyhxHg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 689F4C433F5
	for <ddprobe@lists.linux.dev>; Sat,  8 Oct 2022 19:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166525685341.3173.15053380447527764399.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 208cc7248df0aeabfac648b9752e44126ffeac20cbc55f98e40323fee5a0e832
Date: Sat, 08 Oct 2022 19:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665256853
