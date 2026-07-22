Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9D615346E47
	for <ddprobe@lists.linux.dev>; Wed, 22 Jul 2026 11:58:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784721514; cv=none; b=MORO3q+KjcBYzCrS2ZgjzBYzACNvqIzWsUkyL0ViaHy8RrA+eO1RA/KLE1um3Xsr5kBr7GFU34Abzo0XqdTwRmC0NiG5uiJbDXkgjJQHnNtNsyLlfXc3HigEiyiFsFlxzSkbkK/4cDy2OMMqkXiWVCKb/JpExjRlM9oy3PsMnQ8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784721514; c=relaxed/simple;
	bh=YDxea3N0Dg1NnHpx7TjePINuoCASgbzXO5Woi+syRSE=;
	h=To:Subject:From:Message-Id:Date; b=bfMkEoc3x/TrUDI7ot8I52/gxVH4SxaqYHYqXjeKHKZONGDlzdwu58W+MR3/hL6UtalPpzFv6P99D6IqizphKMHyBOgw+8hS676Kj6jjoV6fRDRvpI22GpQNooepF8hQXPV+b50gEkyuFWqM5HtLGFD18ql82Y/WTxNNSuKDMH0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EEVLO71n; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EEVLO71n"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 3023BC2BCF7
	for <ddprobe@lists.linux.dev>; Wed, 22 Jul 2026 11:58:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784721514;
	bh=YDxea3N0Dg1NnHpx7TjePINuoCASgbzXO5Woi+syRSE=;
	h=To:Subject:From:Date:From;
	b=EEVLO71niDtlyvwxkeRvdGxAR4yhCw0VkbtGAmn2SYqvU7YnV9eRDEc/SYDKj0Vw7
	 WARkFhn2Rpu9syf3gJ8GPNPM8MUj/CODghEunKbMbh2zwvk2WaCOfmQp58zmJJDdwg
	 llJ345aqjpjPZWwOeFHbJlJwUgvRkXaTAZz824Y+NL23G+l/bvJpMx5syJ4GdKmVcw
	 IwSfZR3QNONSgP1Jgwy7SAk3qzD7f784F9PIvoHbJlAoWdQrJFK2WgktB4xM3RHrdc
	 WJnBtU1E1xeXfWa8LMe55xxg7Bfi88LOM5W343UN+YVWrBl3xNsKPdE/wxs6FxQpw3
	 zxxaIWv66yFSg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E175DC44539
	for <ddprobe@lists.linux.dev>; Wed, 22 Jul 2026 11:58:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178472151390.18251.9550398862875587327.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8549c65de8439be4f124a0c00ff3a85c2ff7f3e055eec7f4d0f12e0cab5c38ea
Date: Wed, 22 Jul 2026 11:58:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784721513
