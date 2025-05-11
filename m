Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5905433993
	for <ddprobe@lists.linux.dev>; Sun, 11 May 2025 07:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746949794; cv=none; b=qpXAmQV4XvpgwTFL7cbrp6lIrQOhNPqD8gzJxkstJrPHflyC+iPWUW0J3AT0g6Wi7OpiULmUQySj+1Bzyp7W6Nnum5/kq9RajvzQm3a3tkE/xyDmAaMAQ2NdybFZt/ZkWjqLCYjjkBfRIWHaKGVAWaVN+t/c06GHJj/dK2N+Gn8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746949794; c=relaxed/simple;
	bh=cq786i/NtsdZGmfRRMVdYi7M16epG+EOqbf6wTGjwI4=;
	h=To:Subject:From:Message-Id:Date; b=gPmxwnZjCgv+5pur7H3Ux+Lc7lfzgKnKW8BQ2HEPy2zpppnAo6tctlJ5sToGnEcbsXUmckCu39IVqXME3PIKMyoge2Q4LZ2rasaDG72hQo+CFfMoyhdBBpg/0ov59fCQE5WGhDRHbfhxcQnDyqsqmBp9kNafcwZ1NKtx0PFbWIo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GlJ4ELkz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GlJ4ELkz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B65E2C4CEE4
	for <ddprobe@lists.linux.dev>; Sun, 11 May 2025 07:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746949793;
	bh=cq786i/NtsdZGmfRRMVdYi7M16epG+EOqbf6wTGjwI4=;
	h=To:Subject:From:Date:From;
	b=GlJ4ELkzys0lswFPUDh4C0+OifDdIjAO5lITrLWQcXzfJ+em45cJa+l0gNyPu313a
	 5fkf12H9mPKVD0R1OYmObhKcuNJiY6B9VzhRAEaMMUnXFVcpgR22Ay9Q20xTb0OgSz
	 lodLNVI/ekilsHKTrEg0DDM1IwncAEflGSnPDx62opsaFwMZHa7mesiYm7CeaE1LyM
	 Q2xCkMV6Cc87oEMCv/I1zMgeXTqsdMJWcjHjHuKT2GWj4hzVdGcHIF6S6m0MhbqvtO
	 7IY5KAdGAJ72IxO7tNGJKn3ZrtATEJluFbiaaaqyHTqEGLkn16n/SPreHS8G2GHI7i
	 6HsxO2adxCxJw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A2D17C3ABC5
	for <ddprobe@lists.linux.dev>; Sun, 11 May 2025 07:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174694979362.12446.5443719004399877107.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9b0f29235eb5bfb8b61221f8356aabc70bb0ddc216d90ee9ba49cebdc83e4f8b
Date: Sun, 11 May 2025 07:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746949793
