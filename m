Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6C7E43E1CE8
	for <ddprobe@lists.linux.dev>; Mon, 10 Aug 2026 14:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786372834; cv=none; b=Ln9XBFBjoeNsbtiwbV/Rj0kKZqrCL6hpRAdQkJiC0niBHlJxdW527l3I/30Q4k4zYgAAb/O/12hppIum+1mMYdHkZMKK09FEFPyNdrFpEHEaM5i4zpnNYoS1RXJuFKB8lwxt56sK8PUyQ867Pq5XxWNc1tKcZRgDE2D+g4oBNEM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786372834; c=relaxed/simple;
	bh=/JRrro1Qkwolo8HAxj1/Suw9jsE8JIxVK7Y9/b317pM=;
	h=To:Subject:From:Message-Id:Date; b=kUjgC+grDyD3KXrvlqIBePspi6iHfU7AWbadVIvlrSiQt6J/gRjqCvq75uSd2T5L3vOx8HYJtiESI+w4Rq6Ibj3MGqVBDmSXtdOC6lUsdUQyRnPX/xgyPhYldA6LqjkliLCuPGZ+U3gGmdN1KINCe4JicIl/7DDWYjTQDmrAQx4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Y6MErSCH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Y6MErSCH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E01EBC19425
	for <ddprobe@lists.linux.dev>; Mon, 10 Aug 2026 14:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786372833;
	bh=/JRrro1Qkwolo8HAxj1/Suw9jsE8JIxVK7Y9/b317pM=;
	h=To:Subject:From:Date:From;
	b=Y6MErSCHLx/13KM9DCp3p9u7RlXQLcFZAqCy+hsspNsDIAxowoOj0nkyiIjrKDPAX
	 ljMKjOspzgzC3zB8qYCgQjS+G9h0XZMNKceWso9lepOhClEd98CCDZ5ioHWPonatwQ
	 FRcH4uuULG2bUeqXH4MFTKT0/v+Esl9RO+wT8+nPLB7UOmfz/n8ZMWqRJjLrY3AFkZ
	 9cF4E0ianOYWxa/Ir4j1YA+2/9/HxVJ9kTY1eIEMLp60heFFozuLYZxjyTI2dRvdYp
	 tlyRmgs9AcO9Dt5v0mFs/Q76EGLWw2GFz5OR9HbGfVdGzqmzvmTcWBCelXbh2VMSL/
	 s0Wwq8qCyfU2Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BA367C5AD55
	for <ddprobe@lists.linux.dev>; Mon, 10 Aug 2026 14:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178637283374.31155.1682214768852441598.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c20bc53807c50e0dd30d348fa024f02af9a38f16064bf3dbeef5d7a2280ac92e
Date: Mon, 10 Aug 2026 14:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786372833
