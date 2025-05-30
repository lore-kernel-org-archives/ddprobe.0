Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D9BA286403
	for <ddprobe@lists.linux.dev>; Fri, 30 May 2025 23:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748646594; cv=none; b=JJBPvksnphuLyuvLy7sUFDKKut/tXoI0nZuSHXGDatAaKY1bhEFin/X//Lc05B1Ag39MCFs/Tzj5skn4cWCgUpWHejfS+5O0Hd3bfR5jXE2/1FUzBEb+azh5/mAmDCdFdrw/reFuVsemEYYksFGf7IDTyS3GLOUk+ZOk2/qXm9o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748646594; c=relaxed/simple;
	bh=QZZDuCm23S/tZgjR/zVBf3u1OczntwUy+/Ybmk9RhJE=;
	h=To:Subject:From:Message-Id:Date; b=eqQTS5hhF6WZW1XXBFxef8zBwbEfh6d/ZEuFmL/LxRb/1aoXN5EQYQt5y2iq3WAmGCbkM69xuVx+njciunZph7ZwDzh8nVR2B7Rw+SETE/LBJrRJfJwBJ7A0xWjHwlae2c6iLwGjY/TuFWHWdUpRrSZwzLCKp6VNhOXfLbBZUpY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BIaQQ3GR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BIaQQ3GR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAB97C4CEE9
	for <ddprobe@lists.linux.dev>; Fri, 30 May 2025 23:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748646593;
	bh=QZZDuCm23S/tZgjR/zVBf3u1OczntwUy+/Ybmk9RhJE=;
	h=To:Subject:From:Date:From;
	b=BIaQQ3GRezwfMehlc2NxNe3J42KQetofWCN0T1uRzLGhYQtJEsUZpIewXdRm2efai
	 FMOYpPOQ1rMBcNAHClzXCS8kdzQmcWYAGOhp9z3R0i8G34g2M5MU9fMXEPFQAJfDhl
	 SXhau21jDg8iPeTj1WorTXAuE2HPW5CLg7Yy0YQJ5swYPu967HKCBRya49mjFjPvrc
	 +/wQ+RD88x/ZRdszmgnvBl4pbbKWHGvKOMTuYF22DcRXv15rtFQ3Q3GSLl1yOdc56M
	 +fWEThY0f7BsTd3mYcaNxhjvSLC2hyivLBHMpncLLQz3hkPtARkEFTsc/sGm9saCKo
	 LDWOWHjHfxP+Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95580C5B543
	for <ddprobe@lists.linux.dev>; Fri, 30 May 2025 23:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174864659358.21682.4157539089475885475.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ead4520cbdf043e693924af5b7757247eaea0e50989cf0433472db769238352e
Date: Fri, 30 May 2025 23:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748646593
