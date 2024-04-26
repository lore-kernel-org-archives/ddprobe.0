Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7001D13D293
	for <ddprobe@lists.linux.dev>; Fri, 26 Apr 2024 08:52:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714121544; cv=none; b=FlfO9g7SgDIk8uo0ZeAWbM8mHr/tSNrT2aBsVYk+HGDZ66sGgzr0KrPLfAtFXEXWCwyWnvlvVH0xgAPMHbjAsUYbjCS4Gq4TKsqbZcGBrXRsHXhbwe+9uDfTUx4SJ5HOEHOKD/Nlss0mBuX4Qs7uBtD6RoSV/IFGuz8B8z2DClo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714121544; c=relaxed/simple;
	bh=2U52JAXKzQZTf3HG90egs6Q0OzyjXQ/ai1QT08gl1pc=;
	h=To:Subject:From:Message-Id:Date; b=H5acvvzyVFTU8aMmrqBd0KJhUWRWg2yFZqjtSxphA0EKnYA7oG39eCC7d6pq2DPwCzqmNxK2iRfee/c4d5gnqCx/BQhmKagceqDHLDKV7FF+KBq+4OeGUYNLk1ITNsR2ENIGPnrOrqdt4ERoCL+38M8aF4GPvhsZn1uico5YSA0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=khfqVZQQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="khfqVZQQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E20E4C113CD
	for <ddprobe@lists.linux.dev>; Fri, 26 Apr 2024 08:52:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714121543;
	bh=2U52JAXKzQZTf3HG90egs6Q0OzyjXQ/ai1QT08gl1pc=;
	h=To:Subject:From:Date:From;
	b=khfqVZQQIBDTLfgXL3b1FTwPaAPK2N0jUllbxwYLa98nfH9HXoqgNvIPFZvCSsFYK
	 nA3S3lqnto9FntwfiATWOyXSU/oOASTYgFXOzab2QM0/hBVCy8P1RlA8iKJ4lF6f2f
	 WeHPriijgtF2igA9hXzHbWgz7wneioeROCTfhtVZfK+PIl0knYy7vYrU1/hWq5czdV
	 cSJ2ouGsfmo9Av++HDAv1UeZGVXFe06wZfpcQYXK2eOUQCr5v0dtRZJxh7EaNu6NW8
	 yvB2XXxk7EI55KruBuUQd1C6n5dYJdvuqDimi2RzpsdJ0pzyLiQLRVQanr3/wx+xrg
	 QI4gssJzo9ecw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CB61EC04FFE
	for <ddprobe@lists.linux.dev>; Fri, 26 Apr 2024 08:52:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171412154281.2157.17246991113745805212.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 14269a25d914c67f144e7daf37dc97641cfb0a7cd1b6694804855432ee4b793c
Date: Fri, 26 Apr 2024 08:52:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714121542
