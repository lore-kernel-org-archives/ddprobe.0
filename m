Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BB4CD63C
	for <ddprobe@lists.linux.dev>; Wed,  5 Oct 2022 09:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6D31DC433C1
	for <ddprobe@lists.linux.dev>; Wed,  5 Oct 2022 09:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664962253;
	bh=Qg2H29hyKAr70lRO5sGCWfHLeE0d5xSmyJ9A+GtL2j0=;
	h=To:Subject:From:Date:From;
	b=dPO47d295nIiE3YSi/Z+cX7OoYK1yGGBkG9qnqot2dMpkERniImHR/IQ+is9VZYKg
	 msX/LHWNwx1PjLBATpAD8NrkMA4FlCBCf0a9nA1QLNxb8NYTcCNxCGRbVjbffTwJIS
	 HjLAiZANLUBopFJeUtEdLj3sqTbNTKCDxDh22E0YQk6GJZDEiFj7IAWhJPXfzLYMI7
	 aVFv6uhydmoxRFy32uRQsmbz3YL+YlHnti2DsR3XQayFTvondDy3IY8mymZ00OklZ6
	 NgnSBLVAbbX8/BGIrcqdNzimuaVboozl79QZLWmU62W12zgY0pdElzrfRrmB+o0F+z
	 BxKxkkt3km8Tg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 51B0EC433FE
	for <ddprobe@lists.linux.dev>; Wed,  5 Oct 2022 09:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166496225332.5748.3001443836386654401.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 241f95baa9a8f03b7991aeae0e9ec7c96e580fdfda680775fe7bf7a1c5b28ef7
Date: Wed, 05 Oct 2022 09:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664962253
