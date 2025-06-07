Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 12BC01D63EF
	for <ddprobe@lists.linux.dev>; Sat,  7 Jun 2025 22:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749334794; cv=none; b=Ih62bfw1CC6BrM66Yn0sHJyGrl4h9jSb+I3KOyZVFF3g/kXlETt11OM9o5zUghBQ0Rne3xSV+ltwRVI1+z1xD6dCDRJHJOshHwB+IRSVTvR5+D5F6xhtKRRFwnFYynJo1+nJVHN+cPbehTniW35Q5GtjcEoDi6G/ctQik7opzAU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749334794; c=relaxed/simple;
	bh=Bticfi6DRYAbopLsjVQf4kxvfsce8rr5UFgRq1GI57I=;
	h=To:Subject:From:Message-Id:Date; b=qtR7o15HgJT9MyErGLFhmjCb7wiXbQNRbjaSS+HXfNJtHHEGATBfXwnoDCLnxzymQsjg8jRxkEQRuYyXJ9snTyX463whhxY2AtvQGRq8nphp7kiiBUJeBnzRGLz5JFwwBG0pLdJ+c0Dngxt8K8Q+4qdJyTz+eT++skpmXpg7pvM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YrPAVtM1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YrPAVtM1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7D18C4CEE4
	for <ddprobe@lists.linux.dev>; Sat,  7 Jun 2025 22:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749334793;
	bh=Bticfi6DRYAbopLsjVQf4kxvfsce8rr5UFgRq1GI57I=;
	h=To:Subject:From:Date:From;
	b=YrPAVtM15lQ5VJUN9BN8F1BHyi3I6v+1iPww6ldaIPHv4cT+C0va+Ydl/B+nJDkPC
	 8UVnw9TJcBYSmwR2P7hokH88ApQEw//EJgmd+/cL1Owin4x03VECR+qtqnhzo+6dAK
	 Zq5H69bd2j3DcEirJ74TffbYqELCsSCEvgqnSAj68gcetguFHK8S8tOIjlVRpWBXyS
	 T9EZW/vCK3Zxp8WceOVh788AH4jCJzSHzR4yZ4/ifJ9D8fUPWqPmpqMEgWDv/cyAxN
	 7uLKcZ3SU5BpzIjC4P64j0GkHsnkS7SKYZN56v4SRaJzo46Lqk3jdT5yp1ViCDi7g6
	 hm3uy/cAMPcBg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93EEFC5B543
	for <ddprobe@lists.linux.dev>; Sat,  7 Jun 2025 22:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174933479357.2590.6169776403803309338.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d20c51b7243ab4c3c5829977657f971fc0700dd463ff7eae1fbdb14c81d7db76
Date: Sat, 07 Jun 2025 22:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749334793
