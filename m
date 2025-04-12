Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 473E2134CF
	for <ddprobe@lists.linux.dev>; Sat, 12 Apr 2025 09:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744450794; cv=none; b=Y6m7YbMa3DRrQj3M9KxOv6ShIztpQak7hGOgCLJnhAF4cif4UCg9K+kuQjXv+3ZX8nMlGIl3Y/5UHBoZIm8JYRaqcBokaqcwNi5dy/VhDrWDpT6W+KNuI4mzc5vJFrl7irLOiXVKTBC9/8Fh2qtboXvrapbFdcwrzSSecRQ1bdk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744450794; c=relaxed/simple;
	bh=h6+QA+fGNoJ88IrV1TRsnzPucVKN8/GBhoMqpJyM2II=;
	h=To:Subject:From:Message-Id:Date; b=S9/kuOg2gIAdEHKeAoHkh2PanNcw9g854rtyEv6iEMWrpZ0CNfSCCnPDjh50jtB5O8n5ZK2hJUyFH7IJSlHSPvJUQziCIhtmfR2LDbEmLPw6q1LyvDj3ws8UhR+mTIGkDYIKWn+8oI/Cg3RzHDiJzD589BXKEz7rdMGDV1INbKE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uYXTuA/l; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uYXTuA/l"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1FE8C4CEE3
	for <ddprobe@lists.linux.dev>; Sat, 12 Apr 2025 09:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744450793;
	bh=h6+QA+fGNoJ88IrV1TRsnzPucVKN8/GBhoMqpJyM2II=;
	h=To:Subject:From:Date:From;
	b=uYXTuA/l0l1WPu7NuhmFewSwqc9qYLF3tl9IWtQEybThgskxtwhvKVipLb6EwMxmq
	 8fmnT+u4EzA65EufHXp8aNLM1/yjOe8s40To3R24YJwR5WvhGeLSjDk7J8GbYmElmY
	 2QKBSsZYYiWFTrbW5NzsE7pjoXv4Jyn2z+7/5jcRoyzFQCz6caXyGrVXxbYQwzZMza
	 VH334UoRVJfcyq1D2c9JiYHV2N22lpDmgWVRrJMcYUCEPxbEd23jodC1i5CLTgkYxh
	 DPR63Ct8ts1Q/Vqo3qffAH7iagDi4znIifB/cpTOTYwL9Ob17xvRBaQCgz8dOictBw
	 gI0hAa35SDp2g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93A03C369A1
	for <ddprobe@lists.linux.dev>; Sat, 12 Apr 2025 09:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174445079359.7475.7022835141418021281.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7ca4a672512bd7693596e77a0819eed54fe7a1893e78cffc0d59976419f2fd8b
Date: Sat, 12 Apr 2025 09:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744450793
