Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 294ED523A
	for <ddprobe@lists.linux.dev>; Fri, 19 Sep 2025 22:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758322794; cv=none; b=ffF6P4zeLKcgUUZbJtGsVlMCfylzq2P5xtE8k0EURKIBMr7ay9kRcSv2fInQJoSITkNW6xS2UCkaqS61jMiwvyslKaMrL6wPj/lTSwNDkiidWgwKOUm3+ZojkBhva/fR42l+UJwmLwb3zGMsfNNj654LB/q7WXT3esE8997bYjw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758322794; c=relaxed/simple;
	bh=ZjM5/2umcGfMZBnpd9vfW6Cvlz5o8vgra+Ahk5k70vU=;
	h=To:Subject:From:Message-Id:Date; b=jY8guL2EbdnAsC71jk8gC3OzJpzC1089hhj/5xNX9EmDH7AjUdZFM/YJvCMVLl4NxeBoyhfC60DL/FIMGpR3ZMj4U3/LWzppUmwrlyM/KwJpMFTLHWDU33EbaGZN2p+L7qvslOhmA1AFv1FpbSbHEdGModjnL+sjRMB2XVXXqus=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uXi/jDF8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uXi/jDF8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7A9CC4CEF0
	for <ddprobe@lists.linux.dev>; Fri, 19 Sep 2025 22:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758322793;
	bh=ZjM5/2umcGfMZBnpd9vfW6Cvlz5o8vgra+Ahk5k70vU=;
	h=To:Subject:From:Date:From;
	b=uXi/jDF8NJrXk6ALZsaXxVlDLXAvskMjA3sdCLRzBx14SAKaxd7D08i4jwL3cOTzp
	 8GRVYxXMNbsIWdyBLzhG8mdY8xdVWQTgA9qk744enV7/dnCK7yF7nVQfuZnHxmUC+R
	 2qhmVmzkAk7DJ/KqkBURVMUVq/0yq27bZmtx++MGnfpoi+lKfsVcUvEoL+8uJgy7ID
	 Mz/rCq5jl47sSy7SaYPRqlGQfsp71RtxIsm9NjsXXoLr8NhWwzrMB10sR8emm8dQqD
	 aPdaliT8/+4SMVd2tZdGDj3r8Wq/0Meo1JSECgjRDPCiktmBe9V9aRTYEdGUJKPtrP
	 PSh366P7mS9jw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9272CCAC59A
	for <ddprobe@lists.linux.dev>; Fri, 19 Sep 2025 22:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175832279357.27081.8129135106977439318.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a68dacd50535aada6cce8dce9e95ae1fb99a027648016398076077b1d244499e
Date: Fri, 19 Sep 2025 22:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758322793
