Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 384CB748F
	for <ddprobe@lists.linux.dev>; Fri, 13 Jun 2025 13:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749820194; cv=none; b=X0Qaj1fkMErfJpDAjjdauPZIi9NREyqMob3CGkoZIk9wZLaDnyqlX7N9Hf26qCwM47dwlqOg9lUsU445l4LOA3Oz2GiKv/ORD6kv56UrilXuFT/LCo/1WYEeZEZwnQl1k9u5Fc1QElXIbA7LdLTdJcBqTLq9B3DSk/XM10c22c0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749820194; c=relaxed/simple;
	bh=oXQPfuwN8VqEzrKtCRP8MrJfZe+mpjOV2yRCL3HG8K8=;
	h=To:Subject:From:Message-Id:Date; b=DqGLPZea7m138L2aESdgOrp9is/EZr9Oae4OxU7CiBTkjuDcXn+xULLJtGUWdQxwXtGdbHVfi0uwF5HDSnkH/8qUrD2WvL1/Lu1popKpGfqQSRC8u9gaPptFsKEWPyIk9VyNu8FZ59zhXS3lVr34tAITdsqc1FojQPjcv7tI8Cw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=W/OqVLaU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="W/OqVLaU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9447C4CEE3
	for <ddprobe@lists.linux.dev>; Fri, 13 Jun 2025 13:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749820193;
	bh=oXQPfuwN8VqEzrKtCRP8MrJfZe+mpjOV2yRCL3HG8K8=;
	h=To:Subject:From:Date:From;
	b=W/OqVLaUe/bRvK1geN2MMooQSWLjKYDktpXYXB2I9ujYE3uG/ZTlkJnrvlmVSMJXG
	 v2C+TxqGKeWN7ZSBW4CaqMtCh3APw1l2bVUd2ZwWbyx8DHwLvYJmnVHCXCBzAaXjQP
	 /oXJx480OGgQ0jeyyVynBJxM0jb+wD0ydBQ/RBZts8zzvA2CJ1RLYifY5ErgpE9agc
	 xe2mNdr3eSpzDbOsvVeKaT/RhW8U8ZToG3B5bc1ZHmU7Iw6MkXP2mULQGfabDZw2To
	 25V0AtI3KHMHBbyc5MdrVw4JYIC0DKRyky94u3D2mcLJzUR9kzMl205o9Vncr5iPl/
	 h0naq6lveIdqg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F094C71135
	for <ddprobe@lists.linux.dev>; Fri, 13 Jun 2025 13:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174982019357.5094.3956571256445860639.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 095288db95704e5a7dd62465a59462dac26bb13403def494bfd974d42375bce9
Date: Fri, 13 Jun 2025 13:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749820193
