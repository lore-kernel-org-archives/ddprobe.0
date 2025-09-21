Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C97632D130A
	for <ddprobe@lists.linux.dev>; Sun, 21 Sep 2025 07:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758440393; cv=none; b=UN8OarEI8Tih2DulRGEiTNevVAioVqbKdKN6iiWdgE/NwrMNVvICE9sKH5X+I9UGgF8n7TJ+eW5Si4/dtxxmi2yJdsvh9R5j9IbM90isXmyIUjkg3zVKUvoqEfzgvlKgYnQGpNWqpluIgHZwuNAszzlCBprCP+d71bpyo4EAKLI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758440393; c=relaxed/simple;
	bh=yz7aUq2xDBzPJ8VPYMg0R2N1GiEPbX+gV7KY44iqK90=;
	h=To:Subject:From:Message-Id:Date; b=R0B06HZQJLR6RfuFRZpko20haO+jJDjz/k5uzGEp9reHaCrwv7W4bj1TjmmAMfR6Mp+Sa8A8ocWQ9XLQncR42Z9oIkF/iWfPZURkfTWiZEdDMpm6lMSr0RuXHqT/39DgDQ5sppk2t4VUGFFJLXVkOcVT5g/YsDAC7gjKZRQZRFQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cqGVCDl/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cqGVCDl/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7663C116B1
	for <ddprobe@lists.linux.dev>; Sun, 21 Sep 2025 07:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758440393;
	bh=yz7aUq2xDBzPJ8VPYMg0R2N1GiEPbX+gV7KY44iqK90=;
	h=To:Subject:From:Date:From;
	b=cqGVCDl/8xrZZ86lWFe1paUz2ucDDK/GBhv0LFtQ4wrYuA1vuWDGjgwCQfqGJuMD6
	 +N3HzEUEDRHZwY9bvWceeq45XVe5aTic3sTkPoI31Wz09oMYp4ljAdXeyb2QhuX8e3
	 BJmvW5ejimTTbdl4GtaVZT8ak/x0m5YhLoW6wsLNPUXDza5M2eFMNt0GNtVFPvz/dw
	 rrINhs5ua+a5w84y802uv0lVrIwZ8M4v4g2JcsEa/FVYK7zDaFOVUOVSCzJh3RxJmX
	 5rDai7v7QkFbm71Gbqga951HldU8wXFiPBfcGVqOqv0MMVdZukq22EDxjewFuF4cFv
	 0Y7AbJU1lujrg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9853DCAC59A
	for <ddprobe@lists.linux.dev>; Sun, 21 Sep 2025 07:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175844039358.8952.9597428823058680544.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 632b3b6015393dc01f1355e93345030c4cf1a94fb280cbde8fb8ce9bcb22a81e
Date: Sun, 21 Sep 2025 07:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758440393
