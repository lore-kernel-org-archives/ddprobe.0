Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5F54F11CB8
	for <ddprobe@lists.linux.dev>; Sun, 14 Jul 2024 18:40:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720982423; cv=none; b=J9yYUj6s8kqkXIswWCIT/rMcZqlsjZ8nod6U8PdoECid+mpjBa0ZK40yGUqlx6VGU5TYBgDrDmjIqzYKXF/dC0TVqyxZMofYGkwm4uPHudh4/GIqK5zQAYzDf9qtdTYcHvM8pEVzZyGRfc9YelHheNrHVBzbLyvKU3PG7RCYlcc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720982423; c=relaxed/simple;
	bh=xjulPUQkOQZGpBo54hGVJ3Dl4G521ZmEnGeq7t0d6Qk=;
	h=To:Subject:From:Message-Id:Date; b=tWAiJLKKnLLiajlABiVlMRba92IAhtaAA9kEqMzpyaJaPVFLNPtW6p6vLzkp0Io1T2vXMgALO/ZRjYCK+VjAr7KfLEGcv0KMLQ/5aHY76NoGphlvhzzcGjcljxTkm1LK828mpGBWT4ZvTQ5oj+LCVrfc+FGlmkSMK8FYtqRDdfI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=p8uODoUr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="p8uODoUr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D539FC116B1
	for <ddprobe@lists.linux.dev>; Sun, 14 Jul 2024 18:40:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720982422;
	bh=xjulPUQkOQZGpBo54hGVJ3Dl4G521ZmEnGeq7t0d6Qk=;
	h=To:Subject:From:Date:From;
	b=p8uODoUre7YI91ijiKN7XfRpIOyHz1TEzitxEqPyqQtsjD/bKJkGORCwg/AoAFNRS
	 xH5JQZ4+K1fubxf+OsHuyS2t2dcborWCsmPZtncuWW9sHJ1mdCCnbmUPm9/FyBePt+
	 4geWHhGFqz+8Et4dxnI1ovd+tGYzF2KDf1Tf5tjvDcB0wNdRbsZ6l08+r4PEEm4rA7
	 7LShN7EFK71ohFK7J/OUquNnaBptDJHC2VDCYQZZzfaK8HDD+UMARCDDj3UEPxO9Q2
	 aHiNHZsOYMrJ8Zs81/tppPqx1c1/80smcahDfFpc90iPiglX3LYnMs11UDlspJr4JD
	 mXX5DAXggPMvw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BEB0FC3DA42
	for <ddprobe@lists.linux.dev>; Sun, 14 Jul 2024 18:40:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172098242275.17465.2775846948771132388.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b75b2512d412c8691f14babfa5f33029f480f02527cb5b48823178f48d7e41bc
Date: Sun, 14 Jul 2024 18:40:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720982422
