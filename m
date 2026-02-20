Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B73113959D
	for <ddprobe@lists.linux.dev>; Fri, 20 Feb 2026 18:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771611894; cv=none; b=DJQz6K+oVVC2rs/WkyZnkMeCGSRvYUWdnidgJhOiTJPAUautBrCJd+okyecoDZ4rYOF/L0GKn2jrytQJvquBHnZf826aKPnKosjy3Z2Sf0Nn4zL5sM1t7oS/FkMqZ5ecfHw7Tg8/86+zpvV249VQXB3JsdWC0q5OuEERY8+FEhc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771611894; c=relaxed/simple;
	bh=Zr3ssBpp8roIqYDC+Q9Mm9B9msq5epvK+GEB0kPii0M=;
	h=To:Subject:From:Message-Id:Date; b=rpGysiK96RMMrvt/D+U4sznpDT79FHgOhYBVG1FRLiKZmuzapY5j3J5Er6ZDlyxkZ9oLxck1/Lw+M1iNSRV0ew/cCM+CpyF8gDSPypW1uUVLo7bQgnfeofQ58kGzMpptJSKqE0R4x9vcejv/A2T3ZV9b5xgRvXhHXCu9TDBBRtM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=g+cUeREb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="g+cUeREb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4628C116C6
	for <ddprobe@lists.linux.dev>; Fri, 20 Feb 2026 18:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771611893;
	bh=Zr3ssBpp8roIqYDC+Q9Mm9B9msq5epvK+GEB0kPii0M=;
	h=To:Subject:From:Date:From;
	b=g+cUeREbeiwwskEqw1XLDNyXJgvjO2iarXTe2ehNoQ5+vvHmycviFE/2XDLLbSCdz
	 qWbdJp5ZEIgOPxR/5v//5haPJzK8JJ5vM8DjR1ARIIajcvwU6KS4BBxHuhFr1DjgcK
	 A7WhqLmFDY74fPaY8iJv56jzkHRbiMmURIMzLbUfNjy9gzyui4E9eXHhldOAdi9tx6
	 qR0Il+G9jFr6/TOakLAfiPbU3J3s6qopb6b67+5C+H2HdDxcnV9FIrzX1xcIsTduJf
	 8XvQsRoU8eqh8ON4sL3lz5+iIBcgwdr3RWDbpvNr6oiuNs4tq4kMQ1mS1Yjh6jIua4
	 5kBfXYjV9LOYw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9223DC5AD4E
	for <ddprobe@lists.linux.dev>; Fri, 20 Feb 2026 18:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177161189358.27846.8090211342339169591.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4a7d3a6b2a6eca942f735180a805f150ab1d0e8fc022dbda048ee01cdced5186
Date: Fri, 20 Feb 2026 18:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771611893
