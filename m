Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3797F2EF66B
	for <ddprobe@lists.linux.dev>; Sat, 27 Jun 2026 16:58:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782579514; cv=none; b=CU9T14T7jBrXB6geFwHAkUGAmSPgv91h89RHJAhIYSew5YUD3Z19BsyrMWGEHFnBDbVjAdh6PH+hPphsi11WIbQYDTZQ2n3Y7a+GYFA0ueZ4yCsTxPhfGVjKZ8wBnFkRm7/HBIkw8MFwrp2KRGemUZnNxd30Xmz0S+q7QhbKV78=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782579514; c=relaxed/simple;
	bh=CSxo6L2WuE9/H5Dizb3bIucECNlrxby+N/rv/VGn+b0=;
	h=To:Subject:From:Message-Id:Date; b=IDsTp3uLqU1KI7jg/Z7z7S1WfG6Ky2YAJDpvEFBi8uR/JMo2zLfcR28Xs0rlz/1ejXRuzDew5385jZARAvnAX3JVK3Ao2ofCL0RuNOHd1Kw3/JbWAYyaL7GTgzU2AS3FBCGRhJJxHDh4qLjZuC1Z1bu+mbdKz/9DisCDg3W6J74=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=X/2O4hdI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="X/2O4hdI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E05C8C2BCB7
	for <ddprobe@lists.linux.dev>; Sat, 27 Jun 2026 16:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782579513;
	bh=CSxo6L2WuE9/H5Dizb3bIucECNlrxby+N/rv/VGn+b0=;
	h=To:Subject:From:Date:From;
	b=X/2O4hdI3WzjTr2PEsFX6UKC2kJZA2lrwp9f+K7i96ICb1Y9nq/ZpohJz22r667hR
	 MJAe4P6aj/8MiSFsrHSACIDJSw+Tbssv1srZiaDkI/a0QyBiM5krs2x7GRVpGr8ocl
	 U92jMOCEkN+x2j3VmaUp6YL1kGNc++lu5KhvCT9GG9g3Y5ycTEhseZjaSeQQ8X+ppD
	 PH6kdkjeNHauPXpgNjmJ9B37z8Kumu0J+caGaavWLbpxPQ0lcskw3P/WdbA+XvZAey
	 tqkU7XhZKLY4vI3H4q8KtLCKhET9OP03AcARI++09VzqpIttDBlZhYpC3ExebPA0sB
	 LpeD/BKdQ8WHQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C22BEC43458
	for <ddprobe@lists.linux.dev>; Sat, 27 Jun 2026 16:58:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178257951374.28364.15520474043385635975.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6032ff9caabda3ce57da85a028214d709f66451b27951bce951559f2c9dcb97c
Date: Sat, 27 Jun 2026 16:58:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782579513
