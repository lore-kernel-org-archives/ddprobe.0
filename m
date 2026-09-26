Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A30F0352C51
	for <ddprobe@lists.linux.dev>; Sat, 26 Sep 2026 17:30:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790443835; cv=none; b=PcUAtkBUXKsozZKI7cxpZa8aBJt03cnEehrEgOparPjGDHoA5RWFjJM3m8Ep4UP/5NO7umzpjBNZY1F4cRHkD+G6+h/XJOm9u9qwtr9i+JuJGSRkqdrYTv0nvGK2ucTwM+1uFOfYPRN8ohuTEbw9e59Fdlg0gCJYHFRyKKR1aaQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790443835; c=relaxed/simple;
	bh=Xxvp0Jky/yEBHE/0tY+pKnbIXIg8HV6Na5g0a5YJNtw=;
	h=To:Subject:From:Message-Id:Date; b=Ehv9HOmd2oERqS0pNsSwXeIv80Zdq6UljyFEEo0UAPPSQYddZQd/yIDH7seUsB+5Dbd/GGbj1N520FqX16Q/DbTllhERg8wpbBy4ro6C/hV08vIMDZ/AepUvdK3EbnswFWhaYMgcEhyff0XgEpGhQQdd5nr7eihnvmkNDG8f/dw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=r5pOkgK9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="r5pOkgK9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC8E0C2BCB8
	for <ddprobe@lists.linux.dev>; Sat, 26 Sep 2026 17:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790443833;
	bh=Xxvp0Jky/yEBHE/0tY+pKnbIXIg8HV6Na5g0a5YJNtw=;
	h=To:Subject:From:Date:From;
	b=r5pOkgK9+KktTbnb8D2RYPxe4sh+0L8SNm+2RjBmVWLgMuBYTADvkImWCNViQvWc9
	 UUbhZ+aol8DRRxiyKDj3RCx8YPpkA1KLl/kJMzIKb1uCeU7wEw3IQE2MFWxm+o0m+1
	 VZLL/fsdg1X2ok57fy+LE+04XzYx3BT7IMmYjiK3KedLFDbSySNqwuRbbBw9eFJeix
	 SZf7iqIklv1XXDb/KKqR6xDcNbfIhFXbqUBjjoV4jPcHw6/2v3ZntakYvUxyOcWFfw
	 YGq8VcaW/EbZch8sicUuqGYupgu5nHFafGA4ARG0zQa1dpo2X+/7D1yF2NatuKvRxO
	 kP14KaRDh4RJQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA5DEC9832F
	for <ddprobe@lists.linux.dev>; Sat, 26 Sep 2026 17:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179044383368.23053.15487971186613276906.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 965edd7593697f7fbe8b8fe2ae390dee911cf40186fc8ec13310fedab64ccded
Date: Sat, 26 Sep 2026 17:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790443833
