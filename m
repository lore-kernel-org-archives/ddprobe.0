Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26D511F30A9
	for <ddprobe@lists.linux.dev>; Sat, 20 Dec 2025 13:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766237634; cv=none; b=HYrun9Abb1sjuvjV8dZudSlmwP7g/WqcHj9c1f4N/kyRYp0gcYp3WEr2l7cURyk6a9ndQNZDrDiwyVmvidZehCoO6B74EfLsp8Kkvw9cGG3XOGm/jY3CPiGpZLmV/x62Vkr9eqmKLGCBgAanhocHUAzxQ/rMvv55gF+l08IhHNY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766237634; c=relaxed/simple;
	bh=qKeCx+DWI6PTI5khCJuNU59Ku5FNnyeEkUg8mxkaLvg=;
	h=To:Subject:From:Message-Id:Date; b=hppt+aFXtqaqgSX2nh8p8wq00Bj5h3qy1z5BZq+i8Wdr1P0z1eCyHVU7fymnI5CCyuOOvxQ4umI7++lfG/HLqXdxxvrq663/CuPu5SyBVDe2dokyV8hbQFmCIfI5Dg2sqjc+842iiUzQWbiVIVc9Xtk1Bq49l9OFb/j6Gvcceks=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EJn+KmFg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EJn+KmFg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A50B9C116B1
	for <ddprobe@lists.linux.dev>; Sat, 20 Dec 2025 13:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766237633;
	bh=qKeCx+DWI6PTI5khCJuNU59Ku5FNnyeEkUg8mxkaLvg=;
	h=To:Subject:From:Date:From;
	b=EJn+KmFgyil4bprSvP8N464lIJMtUv5rE0QzGe49K/h2rdBz0fGXs03GeaSkDd1gU
	 QHrhyC7O+gWsp+yM8Pugxf0mJ74eG8n37HsuCH4cQ3KX0uoQ4QAoVreMfnX9jwVWqU
	 v+2cNutFsqyXnN+ZZ6NM3o6HEQ2dc4IHGudmL0dWLXx0kq59jKQnwNMjz/4frVX30f
	 qXeSGRFHHbsumQgfGdEw2S77HMd8HzAiBlOUSsAOpXnXFBvxdYpJPqUC8YAyPic6Iw
	 /D9RnUwBYwJmczFnUg/KhLeh1JU+JuLUf7ajnNvYqGp6WP/QpQJTYTEJaUSul8IXBV
	 xfv5IVWrcv3Cw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93F53E668B4
	for <ddprobe@lists.linux.dev>; Sat, 20 Dec 2025 13:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176623763359.26252.17772057428125583819.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 29df83db7a2cd4401b374af9d9b49c64add4ae27d99a91ca601047d9ef20db77
Date: Sat, 20 Dec 2025 13:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766237633
