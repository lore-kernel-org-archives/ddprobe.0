Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1DD2057335
	for <ddprobe@lists.linux.dev>; Sat,  6 Apr 2024 22:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712443697; cv=none; b=qigOMmJ532j6m5bd8Bg2j9C/C84y+nP9yAvNk2FARuo8oG9tF35lnDn8GzepqhslXUzPH2H2CbvrS0M+R4U1w72L1z9TM7NKoMa+y5UlUK2XGrHKMVuwpU+4mdJ/pUE1Q2NmOp2BF5I1IeQc0p23JyHRkcpcJsmv3ufDHTHao5Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712443697; c=relaxed/simple;
	bh=OHyn7jg8ysmc6kFXTPhvS1vMMyJxK0X/bH2mKO3Dnx8=;
	h=To:Subject:From:Message-Id:Date; b=nKQpQLw52xavXR/rLLqBsxJNox6Zb4bJrR8RzLN9xCbra2jao6ccS+pFPpbZo4dhj/wwIIEymxdEntHdQ/7VUMfLoXMrCPiXCwiww1xtHGlbxw9V3/Lzbpj2YkdQ/VCHSJrhtqp3b64Kh+B9H22m5JgxYMZkfIRjfwTGvlSk2E8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nhWYt37d; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nhWYt37d"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8D559C433C7
	for <ddprobe@lists.linux.dev>; Sat,  6 Apr 2024 22:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712443696;
	bh=OHyn7jg8ysmc6kFXTPhvS1vMMyJxK0X/bH2mKO3Dnx8=;
	h=To:Subject:From:Date:From;
	b=nhWYt37daDKoxZXUOiRCv59DqaVjw9CRQxHaRK3415Rj96+f4e7T2uA7kMH/b6MFy
	 LKinn3j0BXRcgOLA641+iQu5dEPOCMTBWnnAxOkOk83pEt4vYJR1uzIzjhtcgLPgDb
	 GiW66zxbxwUn+leEHKsbEpdwLAlvWFOCCHKXUtPy1agkNNUcNqMTz0soscx1mAe8ur
	 UHRfuLbsVdSlHNKbE9jQw04T8B8rtsE3o0XCTu1PAm8E9OS3/jsI53DaJwENVvkGAF
	 ms+7ee6WypvVKnWC5vPOgacdnnYiVk9Se+2CIxWQwFOiNfs0tPu/umVi6mbqRk7wvQ
	 VquXHfJWJzU2w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 76B82C67861
	for <ddprobe@lists.linux.dev>; Sat,  6 Apr 2024 22:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171244369644.5035.7762973486283925502.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 552fb9e9c9651f4188408b47a64158419e73dc41e55327083817342caf909ce2
Date: Sat, 06 Apr 2024 22:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1712443696
