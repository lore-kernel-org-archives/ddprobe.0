Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CEB2127B57
	for <ddprobe@lists.linux.dev>; Wed, 10 Jul 2024 11:26:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720610783; cv=none; b=P9QpNFqPADc99iw4NzOcJHtm1Wnx1pLcmz6gcY5fmAIGrccX+1gyVhbeVU5dH00BLdtXcDxzy6aqHn5vwyfoJk+5S+rYzDNiZDPqpN7oiBKB7fHnKD4ABjYjFWkAvH/OcOpd5gONlGnh3tOxbeG+IZ2wRAkyw5lIMWOuEC8GaZ4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720610783; c=relaxed/simple;
	bh=EpYV86EdMqJCISd5dm3UeYNxExYBWgRcSWW4mGcrMIE=;
	h=To:Subject:From:Message-Id:Date; b=f947XFtdiJVNTNWNrJRyDCOh1h/tYMGxfdVqhOCpqJDVDvUHNbqiXeh5u86QbBi2U/mwjWZKTWZnwDdgNB9PF6zqu4PkOBRBXaAxwwwZSBjrt4FGl5e6jm3waM+bblGZDnUXVSSXwNqg2i0j/gomV/6KkKeFfRJDcR58ojkOMIw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bnLWl0ib; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bnLWl0ib"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE853C32781
	for <ddprobe@lists.linux.dev>; Wed, 10 Jul 2024 11:26:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720610782;
	bh=EpYV86EdMqJCISd5dm3UeYNxExYBWgRcSWW4mGcrMIE=;
	h=To:Subject:From:Date:From;
	b=bnLWl0ib0nSDcBQUaqnmoH+V9WnlyWKS7s9dBAmAFUg+SKgvB5imH4+fISA3gdmu0
	 fXmmQq8ojAOx4PmMcAmn1vssxq5iJijCLAEGAmTfiRt1beEnn60pUqglCuGQU4+ehn
	 XUdKM4wT0k6xIN/LzWG6+yk6CAfkYy9WQdGK4uJQ4/GMnHAQrscfy8T1z6EDIOwzqd
	 wJs78wlzwY3j+GVzXEIm1PL2TSu3dNkXVTQAbiGHuTPU+yTPYR5SUBCZFjHgM8a9ek
	 aJY4NfVpMd1VHVQLQKwFPKSQ3Kir74gYF4LxzrA56ff3u93SwEwYwQ9T/HmATc8lHj
	 Mkw69Rc5nXHuw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BBD23C3DA42
	for <ddprobe@lists.linux.dev>; Wed, 10 Jul 2024 11:26:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172061078275.488.9975686179340581639.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 837076286baad67d4be66124707ff2123646eaf1f4ea25228254f357a6c57016
Date: Wed, 10 Jul 2024 11:26:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720610782
