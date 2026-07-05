Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 342E037D10E
	for <ddprobe@lists.linux.dev>; Sun,  5 Jul 2026 11:48:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783252114; cv=none; b=E81eLoxMl1QyaQHp9ig6mwnsB1djCYY4c6CNWqD61r7vNsDaDuz0wsVYzg0hhOd/TcQBHFBJre3BXME5AKewLusg1mDSCZPQ2NKfF4JARPrdYQX1Ei27+OlvtoJ2wpLgwqg2mP1mKdlSCIicdxf6qtCjbhVAIJ+BvoUoCIcJ6pY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783252114; c=relaxed/simple;
	bh=/i94OBSr3fBV/SmZNTsu89Kn8zgWx71BjEAnuRf36Yk=;
	h=To:Subject:From:Message-Id:Date; b=fsOUJ/3+c2P0FJAMl4nXObQuQKzr32mEGnsSDYL94u5N/LD0Cy9vIHHoxGLrLnYb/3DXz18wG3n0O6rJq5WEzC8KjfUmuSRJdwmYu6To42YA70O7bGHjvmhoReVZpT+goruWXwRW1zJwlc9T51jBcRAfE1yqYV+4dfSm/Gkf7aw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LoMIUOGT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LoMIUOGT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF819C2BCC7
	for <ddprobe@lists.linux.dev>; Sun,  5 Jul 2026 11:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783252113;
	bh=/i94OBSr3fBV/SmZNTsu89Kn8zgWx71BjEAnuRf36Yk=;
	h=To:Subject:From:Date:From;
	b=LoMIUOGTXx2rVdTG8n6lPLf+Zq0uULe2noFGAuZ8fXQ6y/zrwQuXHbTY1TFS0tGOi
	 r1FmY2EgCMMqyqOdSKdr9NFkIjvoEILrJ1UzO/h7+6H97Gxx5ZLW4KWZISqhZB0dGr
	 bMC7Mcpvuqee4TxRKntKF8lnqddNs4SAHpH2EHbe7Nn/fFDa301LlAZq93SbE+gLIP
	 gk7Hm0GMdMOcUCmdzMGIc1NNACHfSXJhnEa+YS/bEemRifCoKtgVsWzTjQjsgF3HL9
	 QAGMjvrD2AELS7IbuDI9PKHX77/GrEyrUxZrqNT6e6OdRoXjVJPVqasUpWBz+XMBze
	 63zwK8pc5tQcQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAFE0C43458
	for <ddprobe@lists.linux.dev>; Sun,  5 Jul 2026 11:48:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178325211368.3705.5916152391307694609.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 408d3b268efdd91685da0bf4270478a0cb582f464406a4841cc6c363c9bdcadb
Date: Sun, 05 Jul 2026 11:48:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783252113
