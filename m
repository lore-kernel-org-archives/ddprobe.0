Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7E34A38B
	for <ddprobe@lists.linux.dev>; Tue,  4 Jun 2024 04:05:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717473923; cv=none; b=B02HnvBaFY0iqZ4hap79jc/h78HvNgPWtUoEN9TiDcS9xBTeuuSISGrETE65hjZDRxNYGG84DhA5e5xqzu81QwAatNiq9pzYCGLNfXL54qvq7a4itYmOaRdJYYzpyPFCQhiQjA57/vMF+t/paLeZYxVFjFo4d+kXc+denEy3r6o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717473923; c=relaxed/simple;
	bh=IrhG3KMSF6EVgrPsPH/3KKIxjFvPTlZyLAcjKY83cgo=;
	h=To:Subject:From:Message-Id:Date; b=Fo2KqV2/5c5/DF0veITFwSoOo+GG/I9v1+b5OOJzGuJjrFjjXIQzua2W7Lq2KaeyATrLdeNGWUu6nbAPRQm5ydfiYHlmtnYdzdyxyenFvksacqv9x5LmOgJ8L9KEFJE9dSPku3HY7jXhNAOL+S/WjOH5oHWNG8g3pPlP5BFIKtk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JSoJG2za; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JSoJG2za"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 12976C2BBFC
	for <ddprobe@lists.linux.dev>; Tue,  4 Jun 2024 04:05:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717473923;
	bh=IrhG3KMSF6EVgrPsPH/3KKIxjFvPTlZyLAcjKY83cgo=;
	h=To:Subject:From:Date:From;
	b=JSoJG2zaYRvVjwpXihX0sqNx1FJfhzAWign9crYiv8eY08NV7PGsdLnHbRNBCSuDm
	 x80xsfjpAVEN735wHjqBcT5Fx0vs+hnfU/LpypSS4wKm1MXCtLhqeG9bNwvnRHWC2D
	 m1OUj43SOu1qpU1beiq7ZvqGgskgCV1Z9Gze7VdC1m7zc8mmoeKklNI2ZQvyrKCfp/
	 5BKbgdgdWFM6LRSfKKLFp2M4L+gfgLZ13Va3tzAtmOK8N8H7Pb3OT1Qw5IOA/Rc5KD
	 u/MmvINZ1MsX5OyDc3M9KsTh4SZCOSQLBirSD6D7AyNmkN2024KaL1MmbvSES6IdHA
	 4AqnXq7c6YJNA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E1ACAC25B74
	for <ddprobe@lists.linux.dev>; Tue,  4 Jun 2024 04:05:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171747392288.2452.2339483942900089267.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 86a03702c8850f1dbb463d64e9a980476a76d7f6fb6640d8f8f6d1d354bd95df
Date: Tue, 04 Jun 2024 04:05:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717473922
