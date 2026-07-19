Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A44E199D8
	for <ddprobe@lists.linux.dev>; Sun, 19 Jul 2026 07:38:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784446714; cv=none; b=acshpC4DAJ5h/c/FEPSuS0IZldy4wBBuo2MhPeCiIWH2iX7nUrMhfX1OeMJYIdpNhDWMGKXftozWgOdYbCtFM2n5TnHtgu7kauElQZoqr15xeXnggtgwYVb3UlZIfeSVqwanLRJ2bGUv2szMZD1rlXC1WTBHbRE67ac7TdIpFGs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784446714; c=relaxed/simple;
	bh=14u2LgqKZj45o69fAXF8YxLzgVAshWw+lDZ+XRu8HIM=;
	h=To:Subject:From:Message-Id:Date; b=Qa+uNu1mb/9fec1S5/zQTsZi5B5T80o2zqTDjGeP0+Fl6JeRUGlZxEabFJLMWDEJNSL3LeIJU1ay/A59BnXybcE2w9QPR2GJ2aKc2SD5u26V6EJPwsq2/KMzqMjD50UCibo44DdleKYa0uXNLgRw+j3tIQ8HhHBEH/2zJ5PiVZI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AuvCdvgW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AuvCdvgW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE3C8C19425
	for <ddprobe@lists.linux.dev>; Sun, 19 Jul 2026 07:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784446713;
	bh=14u2LgqKZj45o69fAXF8YxLzgVAshWw+lDZ+XRu8HIM=;
	h=To:Subject:From:Date:From;
	b=AuvCdvgWrRKD8Iv54AClsYnBccPHYKYB99oTCmMpLHuw+rrx+JEwkzXRx7e+4QnFf
	 ltgLCVrIaarIPgEnyAtlj7yMW3zqXINAQYnnAKVMqSyjvQNT4RtiqLkbgyE/QS3ip5
	 7zfcyX255j+rq0kL4BIR0LQORmNf96SCowcS8SmLMGI9GxuYNmo7MmDLAXEKFBBQuW
	 YOFWYY/3dFyLZP9+9VA6o4QRK5o6gR4oDOTAJnFNhmYKMdYym+DOruDcgHFleskHUo
	 aGQTFyqVt4+nyoXrSmH2kKxEVubdAqNxC9aK2/IbOM0fYc2eQE+nrPOi+KDmRjMVJo
	 pmR9a8XmxCG+g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB237C4450A
	for <ddprobe@lists.linux.dev>; Sun, 19 Jul 2026 07:38:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178444671368.17810.66531031911264751.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cc6ca71fc414009244fbd0bc5dfd26784a6188e268affa08fcc96e8fe407b12d
Date: Sun, 19 Jul 2026 07:38:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784446713
