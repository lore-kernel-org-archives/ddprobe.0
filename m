Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 53078194C9E
	for <ddprobe@lists.linux.dev>; Fri,  7 Feb 2025 17:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738947954; cv=none; b=pMUc0kh76X5ifahdb9EOFvtFzlvNw9DEEe9Os7jXSHx8rnOcDwzXJjhpsug/emsxGfhFSBJzwNxNA909BmhodmR1vf5H5qGLtMfxMJnFQB+DSjT5qKZ6B1jHBAST8lvT2YrRquNhDJzAB/qLmVjMYrZJZEfAvIITwsl/juanzDQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738947954; c=relaxed/simple;
	bh=1PWHv+cnz9lPJuvICQVGNrUWC0aKo6jO4G6ijJMgF9Q=;
	h=To:Subject:From:Message-Id:Date; b=oUwRixeFdQ8+4Bm2N1mJvCOkcYGv/2Qh+GhPtAnfl/cDAfXmTWw40hkzj02+B3aR1O5Vtg3GaZKGG+0uJS33dSKyCDoTsPY/p4HgqS1wViVgtBYi5pVza4Z/IRYw8LeRS+cUIJPCtukVWvMoHSpgrZwGud4d7qXhWtb3vCdxxqM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AsYDR9YC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AsYDR9YC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF4F9C4CEE2
	for <ddprobe@lists.linux.dev>; Fri,  7 Feb 2025 17:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738947953;
	bh=1PWHv+cnz9lPJuvICQVGNrUWC0aKo6jO4G6ijJMgF9Q=;
	h=To:Subject:From:Date:From;
	b=AsYDR9YCTNG6gA2Gl19dOzovnkDV8X+9y4CIRzWGKk/HiVux/APZFz9pCxruJEgEt
	 bPxqIsNaCXB4vQu6onmMM1oCLxQ49eWnktaHvIL19UpBLQTuMlxI1WXm3mXmVl0gGk
	 R+nNqtvc8yRJj+AoA3CJWGj6w/NGD+LArR8ormjZmiqAg+iJSa371lIOvXJ2BVYRhZ
	 K10jRpxMjA1jqf8gZCAv6bsdoGfZez3LdTlfWqJoxl9cYjxfu+3DvJTJv+N/Vhhtqu
	 xRmRbigKgNYQQ9NS3cOXNX4YGmRdHZhjauZAMm/gjGfCeW8aptyZRJ6zud4jR6EfIr
	 sXRUjD8S5JCsA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92E93C02194
	for <ddprobe@lists.linux.dev>; Fri,  7 Feb 2025 17:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173894795358.23157.17990726143830897123.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5e05c85a6177dbdc2b0c05d742cf50dfbe4dd67ee3309b1b549fb61316913bcc
Date: Fri, 07 Feb 2025 17:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738947953
