Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 226183370F2
	for <ddprobe@lists.linux.dev>; Fri, 17 Oct 2025 14:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760712594; cv=none; b=IDZYBcAVWGbTpsoXzm5LR2ycYXhAYd/OmM+6+8R9Tuvm0o2ufgUf7aG/vHxFNpeksjdXBxeL1AI2Byg1rqgMwEcP13opEu1qavfAqI8kq8I5yFmQ26tPX/K38v4S5en1gexkt+vpg9h/oR2MZShx3APHFGDvpt30tYYsM/dtrh8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760712594; c=relaxed/simple;
	bh=2Q+MbxRo1ZvfV2rNwZqxtIUD031f7otGaw4TQEgpXEw=;
	h=To:Subject:From:Message-Id:Date; b=VLuwBeL/1sjYwLZ9YxLphLOsY8becmxuuWWn2NMv0oqq5uqqk+1R9KNlilaQOo4Q8juy/O9HWsN+jrT1kOIenIER/YzZ/0QUm7o7zoF0398A9lO5bUa1TDhVvxHl630Vzp25eYd6wj7UrjcyYFoT7r+1pdPhLFnuNTI5Px/VCBM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YVUKXpVE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YVUKXpVE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E0E7C4CEE7
	for <ddprobe@lists.linux.dev>; Fri, 17 Oct 2025 14:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760712593;
	bh=2Q+MbxRo1ZvfV2rNwZqxtIUD031f7otGaw4TQEgpXEw=;
	h=To:Subject:From:Date:From;
	b=YVUKXpVEC8gpZmMMIhVNNODi12yaILKibba2wJcI6HGBuPC30ZNgv+y9ZZS0a7hyB
	 o1NHUPgFs2jDBatD1J6+euiFuqcYGj3MAY36in7Hb5l8Nl0bdyNgtUHT2xGTLz5Hyt
	 Qqah62Z20FNNFEqPhfJJq3a3YgkGLO4YTOEkpwUA06XmYee+0/0vGyfVmRgq/K9KvA
	 sLUXkh4SfhBzpl+QCayb7s5b6ePgy0jlXX9KLZKHuMNmXb1J3WzvaJcJjB4ryOnALP
	 Y1X6h7stAKyZE0UcRMOfmrQlX9dQyj7UmgVtPR154QZgrzzFAK7XnnHaURS6QV10W2
	 iZXNnaLfENAaQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F0D0CCD199
	for <ddprobe@lists.linux.dev>; Fri, 17 Oct 2025 14:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176071259357.9700.13822497644401244724.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ff7019754c558a90690a8faf866a07b6602299f222e4fe04ca12f7ae9711912f
Date: Fri, 17 Oct 2025 14:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760712593
