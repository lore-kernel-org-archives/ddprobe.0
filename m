Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C556AAD49
	for <ddprobe@lists.linux.dev>; Sun,  6 Nov 2022 21:20:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 746FDC433D6
	for <ddprobe@lists.linux.dev>; Sun,  6 Nov 2022 21:20:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667769654;
	bh=DObCl5jrp1PUXl8y6P4l5MWkhOk99LPLupaJLs/9w5w=;
	h=To:Subject:From:Date:From;
	b=RieJUurwkjxovHYYglayB0UVQIzmS0D2YtEj2pxygKF0IddepKg+HjwaRMKGGfQG+
	 5DB1uJ90e6T6YLKpZWxDRvR3eHySQK93QQwn6fYz0XJvjVa4ySDhhtFaVGJCAJrYaB
	 ldsrj2Jmiq9ksltI3cnlBQRMcbM1eCqdwpXJmhZOaZSA2+mHC/0RbTvVRfp+RMl/NN
	 4NUhrO+wog+RY0uCir4DqYiDEQ8uBnieMgW9foWJ2TcCDzL7nEfkHJiC9Dpt2+c+3y
	 wDw6DvcRbwIUU35+2zVzmTYNPHc7DShQTAozh+WIoxBaywie/f9SjsAvH94/Tra0Q5
	 VDGpXM/N3Dx+g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5937CC433FE
	for <ddprobe@lists.linux.dev>; Sun,  6 Nov 2022 21:20:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166776965435.8813.6529759209120537602.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: de26106994d0fbfa684d05e120e87bf81d32fd844a854e79c55f0115c864d53a
Date: Sun, 06 Nov 2022 21:20:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667769654
