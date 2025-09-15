Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0643C2135B8
	for <ddprobe@lists.linux.dev>; Mon, 15 Sep 2025 08:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757924394; cv=none; b=BDtR/poBZUS64f5758xO/WhYsplQCG0pZjQzbfUrT5SosMxW5pHC4zwTx8dzBUIlFiULaROpS2Uuu2cM7R+wwdMMXKkRe76B07YBFcLtdelC4Dwt/CU3jXpkMlqVd+jEdzUniLWXkMTLDm4Nux7EYXzf9ztqqVjJt9LUaaS72Zg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757924394; c=relaxed/simple;
	bh=RvfoIqRSqJRg+3m+2rL6kAdlOYi4ond63uUi5XRcu/E=;
	h=To:Subject:From:Message-Id:Date; b=GyPOo3fs6CWbctwX43MJb8fclUdrJ3QHLlMNLaXBEQXGCCeRPQVwTuRGpqKoN5OBUWcwZwFuTH/lxB212/byXmetYx0Chqy6S0Adz1Qfw4gB36tqAaKWPVtcTL4kM4ts2nCt6OsIjBSdAGF7r2d99lm53A+BxZJ7cVj25379iYM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oeiQS+d7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oeiQS+d7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 98C91C4CEF1
	for <ddprobe@lists.linux.dev>; Mon, 15 Sep 2025 08:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757924393;
	bh=RvfoIqRSqJRg+3m+2rL6kAdlOYi4ond63uUi5XRcu/E=;
	h=To:Subject:From:Date:From;
	b=oeiQS+d7LqKbkUoNp+qWBI5pQcbpPVqXF6IE/xuYSSf7F3kdHXb39aZJptUFylNVM
	 1zk9W5kVVcfMHWOphK+tpcxAwxENvzHi2Xf7rX1IhWZANtVwBpr5puUd5AyeYDTjwe
	 iyb230HdqfLXnAbMdKdM9tyshxgDt1+0XMaEHMKL6WIdBJYXfYZdGC6X2QzUmVjVdw
	 1UefuHaRymYc8msTd4TCCdkLhz+wenbCwpQMF+BoWWQcdNNYIA9hdHfe6oHeCPy96d
	 vpO1s1N0snHZILl7p4rwkk1E9Ne+jz4UZAtGa72M7jfsjK8fX+gi9lU/HPxb3It9zK
	 F7Qj9+MNy7Nfw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 928FFCAC58E
	for <ddprobe@lists.linux.dev>; Mon, 15 Sep 2025 08:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175792439359.22582.17950719491215491474.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 41eb0c321f9d5ad551a0f22272060ba6c843cc6c379ad62dce86037f21763c47
Date: Mon, 15 Sep 2025 08:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757924393
