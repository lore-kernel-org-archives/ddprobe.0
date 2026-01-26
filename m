Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34BBD2367B5
	for <ddprobe@lists.linux.dev>; Mon, 26 Jan 2026 05:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769406234; cv=none; b=DLzgEU7GKr0rXwROnTlnmNR/b7HIRvRibJlys2wuvYW3cbgPetDDNAjyP5pnhN3tT0yhdIsJ5JJmvchJlxKxCTqpvS/KD6Vx2jhzlERBWgAVKm5H2KwOzGeA2KXr4/y4eVndSvmHFp4X8g/9/Z7fqXk7xw1q/zag+HtxudNqCjM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769406234; c=relaxed/simple;
	bh=AV8Pq7NFVjQ2rzfXwgBxO1moRQDuzv8zb2hOAJi4p+4=;
	h=To:Subject:From:Message-Id:Date; b=VcZGhljvFotNpvoXB9C9aEaiC1V2UHYz20hmubJ2J+6KhGkg0CZKC2lfuEWcuORDDBxofSt283YKVTo/c9HWUbW1eSB3wUH6w7H1fqltyuQY2BkKDf9U8/Enw8tgDvpRfrk1jWiLg4uGdeBxAsAS73jmPQpbqsINYeDD7rXsQa4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qe1K7XU+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qe1K7XU+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF55EC116C6
	for <ddprobe@lists.linux.dev>; Mon, 26 Jan 2026 05:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769406233;
	bh=AV8Pq7NFVjQ2rzfXwgBxO1moRQDuzv8zb2hOAJi4p+4=;
	h=To:Subject:From:Date:From;
	b=qe1K7XU+njo9VCv/ZcagZQHuxaEmId+pdKpqZ8biF8YeylvTCHHnI1/a6yQo/vIOj
	 Aaji0jq5mnKT5Kl2exNpFqfR7r+lcDEgmdgS+Gpyaw56UULfj2n3+uX+TcbOD7wzzV
	 vQm01oUNvo7WLCXLrhK9oWrTgUrjJzhVI0TOL1oWjnFptETNnCCGxt2ZYv7amn1i7u
	 p9T7oavQ/7MoYvT91OC5yrOl7zmLVan+QqSaFNyOOWpE1djianY7GG9ill/M8DCgBn
	 kNKfDaQJ3ib9Pu1qfNdjRBa6WTl72M6NOEweO99A6q60Vys5XckbCoVnGb6uaV1DaV
	 YSjDqMNZPrKtg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9BDECC88E42
	for <ddprobe@lists.linux.dev>; Mon, 26 Jan 2026 05:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176940623359.8154.8468961472768232782.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b8b381f9c969187a9459946fc58ec9f926167d2521ed0046e3d22e8d09967047
Date: Mon, 26 Jan 2026 05:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769406233
