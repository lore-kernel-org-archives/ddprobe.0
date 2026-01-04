Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36A6330E0EC
	for <ddprobe@lists.linux.dev>; Sun,  4 Jan 2026 13:53:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767534835; cv=none; b=QFEqosIBHqcf4xOMPe9CY3MesxjrzRx1zhs/YR6Ds88XkVh8mNEQ/afa7pUEQujrQSH+kiNv614C4rniG3agsWQQTT4jFVLg6rrjP+XWvnrr9+i6y8CnZCjm7NuWvPm+YfuimueS2ZTgNn79/Ty/kJmWzwn6JLfU6+ZLlgMhF7k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767534835; c=relaxed/simple;
	bh=v/N1qczRmepmxhysQ09Vmq8i4ny9+0dRrHLMsbxn8zE=;
	h=To:Subject:From:Message-Id:Date; b=M+FEkd1Newh2nniqroHLRd3+g7yToIV5Dg9lIdhax917E216kW/U7UFxqvNXFcyQ0yqXhOvMO43VZwJtOdq7ByoKRfhjMmpjxD01qbbJWI4kXV3a82l+ME+5mWgxOObFNG38QTrFFSQIOF+QJGfkdyDrHS5H0qRGQ1XzjBxZBgw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=n/Uk+FF8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="n/Uk+FF8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EF32C4CEF7
	for <ddprobe@lists.linux.dev>; Sun,  4 Jan 2026 13:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767534834;
	bh=v/N1qczRmepmxhysQ09Vmq8i4ny9+0dRrHLMsbxn8zE=;
	h=To:Subject:From:Date:From;
	b=n/Uk+FF8fLS70T2sKVtjJAj3oUVaEJhMZtxI1vz1D2ouR8UW08lK3nkv/8pFv07yW
	 V5tiBkPVXerBqq1gScScmtArCHFRfw/ytlx8xHPbg6jwZFzMNN59chpD+tpbnai4Cx
	 R4HFJLSI/ik1yRF9BMPzHYi5t5X54lEWcZzRG6AC6Ym6sxMd24Mbu3peaOsC2P5247
	 B89nc12QI1rBp6dVC5e7NE8tlnFzj/82HL3vU1fX/b5bbgqeZ2jzhBKOGVgBs+2dOp
	 ghJk+gpLtX5UAg3N9OAj3BbCcRP6H8jo3V6H2GIJGogNCp4WwkMVmuMv3arBkb8OYb
	 1yjqT00gDsNdw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F394C2A06C
	for <ddprobe@lists.linux.dev>; Sun,  4 Jan 2026 13:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176753483357.24469.314495294625771117.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ac9a1f0a9ca5b4b85cc57897e6afd576decbb977523a74dc7df0d3ed83830abb
Date: Sun, 04 Jan 2026 13:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767534833
