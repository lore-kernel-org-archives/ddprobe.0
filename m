Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3975523504E
	for <ddprobe@lists.linux.dev>; Fri,  9 May 2025 19:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746818394; cv=none; b=ACGwoqfMYgkAA/IZlnB0Xtpvv1avn2EGOrncZRZEAAleO9cUxSaHp1AJihGqFME5JuXGSiSAO50Bcg02lPA0Djv7UZi+t/Kv9ua7xYubkqFoh2Q6wBc8BLirUHOLHrIhF6bs7vGMTqjl0bLd74N4gtlruSFxNtDBqrQmwkJzX4k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746818394; c=relaxed/simple;
	bh=FETeFgiIfKGdM2WqHKQ8q11LyOhcUcLUp0F+zyC3lo0=;
	h=To:Subject:From:Message-Id:Date; b=jFqWPloY5ptCIT9Ptm+2279K4sPaRQXO+xWKTTAcHbVPwrnK59m4vcyXSZ+mYdh4B+mAwwSNIrhTYPjuMfzNDZtl3OE4smLCBCMt4bHiT/e5J1leKOJdrxmQQG6QC8uGF32EqTBKyLUgtusG7TJ0vuAaI4/gCIyExUwZ4t+6JI4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=N4yqiGyo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="N4yqiGyo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E775C4CEE4
	for <ddprobe@lists.linux.dev>; Fri,  9 May 2025 19:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746818393;
	bh=FETeFgiIfKGdM2WqHKQ8q11LyOhcUcLUp0F+zyC3lo0=;
	h=To:Subject:From:Date:From;
	b=N4yqiGyoBqZzV75T3Z9TCXR+cw++T1xRM6KOcFucxNmCu1hFob3x7LvE8y1OT+Dvd
	 pvSySPOE5PJq2KAz0bkcR0XOUEwIfOyTX9TSRiXGAs3eJjeWJfL8p1HJ2wXaZNPOT2
	 dHsiMEOBaQqFAXoR3JwVmIGLqBXc+X8iRsRfdHS7ExSHV5qcO3kq3N/nkgoED2A+UN
	 it7SDx8wI3sXecw2CweJqhPtTQqnegbw74INDHMwzX/DHWfxajwrRY6we3bjrvxbF4
	 3M5E4S3BQHUv9ZFJR574witTgAF3UnI/hOO2STMK/xYsIqRDXI+wtEbNBeFfRC5wTT
	 GBaw/BnE2HeWA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8ECF0C3ABC9
	for <ddprobe@lists.linux.dev>; Fri,  9 May 2025 19:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174681839357.17319.13812339633108298045.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f8768fd63852457c2e2104287230d83e6d457e255728f8412bf249d205903b58
Date: Fri, 09 May 2025 19:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746818393
