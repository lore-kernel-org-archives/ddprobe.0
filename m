Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31E1D17BD6
	for <ddprobe@lists.linux.dev>; Sat, 25 Jan 2025 15:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737819354; cv=none; b=W+7sMSIow75P6/1hzi+rFHqeJIthtEEiF5hC81JPCQwZKRPVrb+qZIP0qX0i1nVGo0pOOe4KTon57CZKs7raA0MFSrGe91WZy1CBfin6taFRv0Z2hL3NSmADl81DJALiyhxwSK4T8ov+vM+j1aN7gICIMEFPum7urEljGNpBGgM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737819354; c=relaxed/simple;
	bh=AWk9tCPzryhzOK3dvB68/dwi69PmvmeGiQVdmZVHCRg=;
	h=To:Subject:From:Message-Id:Date; b=psErwS2pYz2IJr+9j8NG2nOt/5mdHDaaavv3XLrI7pwcKhwngPFgk5ESrmZLmFFXv/O82DAX4w2U1ONqZBFHB3t0ETQ3HjSFCQxd7zpFVnPCaZ6V52+BZKmMBeQ6WRpws4Wo3Lnqud+VH730m3MbmTkd37x/vlAL8L8HBeAgn4o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WQfEjT7P; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WQfEjT7P"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AFB69C4CED6
	for <ddprobe@lists.linux.dev>; Sat, 25 Jan 2025 15:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737819353;
	bh=AWk9tCPzryhzOK3dvB68/dwi69PmvmeGiQVdmZVHCRg=;
	h=To:Subject:From:Date:From;
	b=WQfEjT7Pett9QQF3g3Eq8RA8x+Rlnx/UzWXaUp+RigSx9PkzQsUdQj4wtFiI3azMU
	 of9fb3TIYnNiEGf1OUrrh99HDw5bv+0mmuwa6ZA4MgVjUUjnkPYo9yGvOvG+dZ2KTL
	 rZt4fJCpq0lFVtglDHNW65jhgjPijObkWeHDeOAUS4WVSOuQEDTc3U6ZkNi/9V5jFG
	 Djfm2a864dBvFcbaDU+/9YuEFYjBkfg5PsfsAwOzYWcBtdzveceypn9nlqBQ8VfU31
	 FrEimMN2SX1ekNp1YQ9CjWUgvugAq6m/dKY1jP44pteHRjoDBZrXFtrN6Oqot7Dpnb
	 OwQ7tTQhCTHMw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A29FC0218C
	for <ddprobe@lists.linux.dev>; Sat, 25 Jan 2025 15:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173781935360.11283.6464263438926072553.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4a6f2071f1d410fc977daffd764a1621c999ce602757a0d28a3717ecb1042327
Date: Sat, 25 Jan 2025 15:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737819353
