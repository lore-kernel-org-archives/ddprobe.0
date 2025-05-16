Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D3DCA32
	for <ddprobe@lists.linux.dev>; Fri, 16 May 2025 12:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747397994; cv=none; b=Aa67fnpCzhcbnp2Dp60APIyw9mNf5rhXcNhh3ftfwvmCdxUXMlk+/wneTQvs5U3YiHuTmt0IXu4QzbOmBzlXFkZu1d2IpTUV7pNL4CnD/YOAp8Dzet2jYeiktQpoZ9O+MK0JR1gSMVD+4ISzqMqodqNpBG+SEQVNxnvnVPe/F8A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747397994; c=relaxed/simple;
	bh=5DIsQndWQgC2hnzTb+a43t16oO1HOKlqP1YXdun8e78=;
	h=To:Subject:From:Message-Id:Date; b=HqNZ4mK2KdAa2JOsLB4gq2cQ/0E54Z+BcL/wvf/jtELdcx7hX/Tueye1LlZ1xt+ZXvz+oYOIWRD4ZO42D4SoO6b9wtLj6E3ST8VdplHUwFLi/UYqfkb2/QNJl3SUIS6E8jititiBHeS0u3mHGVu5zeGncYk5f2zPwWLX0bLtGK4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fE8aIk2U; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fE8aIk2U"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACA25C4CEEF
	for <ddprobe@lists.linux.dev>; Fri, 16 May 2025 12:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747397993;
	bh=5DIsQndWQgC2hnzTb+a43t16oO1HOKlqP1YXdun8e78=;
	h=To:Subject:From:Date:From;
	b=fE8aIk2U2OzeUmGxFvi/cQsboL7QfRKqY37mr/CTOqGJ+8AUUsoXJA3ayYilGv0G/
	 p0x92ASoinM1JLxeEGUZYlXhNRX9LksZDFfgBkPvK2xhaWj7ZFrPwbuFS/f3tlVKzl
	 L04n8OoBP+qLVt6Ex8PZgoA+GMav04di4avxzRBfaFLzpGgY5QhO9sEeqA3jmiMQif
	 OOvQt2sFKEAVUxFCZnQpNx/hfjz85V3JKc2sUwViTJ49O8KOEhOpQBd+nNPO/RNjRW
	 B4W4U6qBkAmagBdFlcJR+w6QbElHWSJFjbrRor7UI6eb3X0HCc533dq2fn3rBuQlsv
	 c4psD5EwfWQUg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 968ABC3ABD8
	for <ddprobe@lists.linux.dev>; Fri, 16 May 2025 12:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174739799360.6563.9931724855984704681.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6a844fe804db421a89ffd9b95308ee498e07111fdb71c3468f4a5049cedd4b0b
Date: Fri, 16 May 2025 12:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747397993
