Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 166641369B4
	for <ddprobe@lists.linux.dev>; Sun,  9 Nov 2025 00:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762647594; cv=none; b=hXHmMERGVhu1hYnCUHDTG8ggvoDSo8VtnIiy+ny8JsMr5N6LPxcBz+MA+CX4ljYRHm27L9bnVG5jUv5fW9Jvr1SB2I16CtwNYPYVpB6G7MSf8hAJB+Pa2Xsw+PglxB/reqGho6dkm2056SXLcTz6GhTxIfCAKEKqGLtSK8YFUNU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762647594; c=relaxed/simple;
	bh=MzTStal8y27d5wqdHe7zd3K4wj5v5KVSVDAbzuQ0yBU=;
	h=To:Subject:From:Message-Id:Date; b=pF+nQoVilvBZQZCmwA2RqugHnTZhEJHT1uQim8VcoPi7CGh35wf2Ly+OcujEmZbqU0ihZeTEiGZOU3jGKD63009+1hZStCZvgXFWJA2vHMR8dzvNavgp/Xdo4PVZMKluDQ1xtwjEMNlviuB5Rz/KQvKShZEIecvgfFpqQatCmG4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VbOc1SbX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VbOc1SbX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4A6BC4CEF5
	for <ddprobe@lists.linux.dev>; Sun,  9 Nov 2025 00:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762647593;
	bh=MzTStal8y27d5wqdHe7zd3K4wj5v5KVSVDAbzuQ0yBU=;
	h=To:Subject:From:Date:From;
	b=VbOc1SbXT3LnGDcas+wYgcBqYeOjuJU4QKlKu97Vv9dXtrktg1YK/WLIuT3Y3q1X3
	 cndQMRMyOTTQjFkH3/cxq+v80hW2E/rw0YczHAG2TSDusjPlGTWFlz3omHI+4UluN9
	 mqnE0QVmMcodrwfTcb6kGeNr9aQ+uqnS7FZ6nPJt77PskW/gqLVe0jhbln4f9tZ+xE
	 xIs/YgsN0s3dcceMF+N4nrA71xAVQP0RjR8Z5qZ0OcFIp82hxIS8mG9kfeL5RpH8Ir
	 Sh6k3aOYL8dtimyHZk6pxNyY17DWV40F7lRpU3L2p86dtVqjVgO0SRW2+i2Jv2a7B8
	 CaJSPj9sxuf8Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A7D0CCFA18
	for <ddprobe@lists.linux.dev>; Sun,  9 Nov 2025 00:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176264759360.10335.8540074304492339661.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4f2e854f783ba79dede173b4091c7568a957b7017c04560aa261eb31215f58fe
Date: Sun, 09 Nov 2025 00:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762647593
