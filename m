Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 260F1171D2
	for <ddprobe@lists.linux.dev>; Sun,  8 Jun 2025 02:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749349794; cv=none; b=A33AwcZysZVquYfchf64hpSMMJpOYnpO+ZJQxRHkiMFnyN++/r5VF0p8+puzQfDPxRH0yecr+EDdqGKBPeSQsc+EZM69dTYsJEBU6qRBOLb2i7xPyLMx21FV+tKCzEizuFPqefgbkxgjYEjjMPxya46iAk+Fw3ReJoDoRqZF+Fc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749349794; c=relaxed/simple;
	bh=QHMgrZxCQaMwhPPccMjdM4LyUm8AnQ1q9e+J75SYfNE=;
	h=To:Subject:From:Message-Id:Date; b=ZlwXRrv7mXXQDOCtG4IHLDAmYI+5jIq1AGFzsRTIHvydh2LCOHmmoI3JpP+Iy5EUUva5lRF1gNqg6qnJNbBW2HRS3lnImdZB3Y9hcJjrvkfo0W/nGnb3DQ1xz8R9Q3Q5DXSxAstPiJQT85Y9Tqkd+KnDmTv1x3dvRAJHbBI4VtE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=S2t/z8CR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="S2t/z8CR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4147C4CEE4
	for <ddprobe@lists.linux.dev>; Sun,  8 Jun 2025 02:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749349793;
	bh=QHMgrZxCQaMwhPPccMjdM4LyUm8AnQ1q9e+J75SYfNE=;
	h=To:Subject:From:Date:From;
	b=S2t/z8CRDWhGi98As6AszhyJRoa+V8UCB/xnZJzgyVY7PbF+sm8KuNGtdIITvTsid
	 mluWDO9PyI02veYd+QQzoR1Or9AnBlR5KEXb/pSkrUpsUd2umlq3RMLNCAnVbJeZyM
	 jV6Fzx8c3wq6QpWOWDRTPS3lCL5Id1iTL0E5D1x9x7zf7pLIFZeMxxDlwYTqCcrYAW
	 epUm/qpBF8aWyfMKTp7/9RBEo4fvdOT9QgzoNuoPajrE9oi+sSilnF1TU880uBlpLj
	 p0MaZQoR9DCtmZk26aRKYIuNcGd81eyhyuMBdIyGVZbkNQk1raxz3aXe4flA4H2qCX
	 wvobb/VJuSZ+Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94B92C5B543
	for <ddprobe@lists.linux.dev>; Sun,  8 Jun 2025 02:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174934979357.24208.15898026150392161042.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b2405f9d995b848330ec4e0c83f5a09fcc31db7e1b4b6e33f1ca26412744d9a7
Date: Sun, 08 Jun 2025 02:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749349793
