Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1270F3101C8
	for <ddprobe@lists.linux.dev>; Fri,  7 Nov 2025 22:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762553994; cv=none; b=fJqhMVbGomi9T4eaDUybQJT+0WV3otdI1Vr9dlSkHDvS0PrRd7ogpOrbEjkYWXR8L3+P0b6PgTzsUpO1CFHIWvj5LED3rYPf3oMnO9N2z19/0EfFXt56K5wRYYVIYfhWOElx41L5mgW+JOpotn+UnzyEfhP90UBUWzN0wwruUNI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762553994; c=relaxed/simple;
	bh=IUnd9MrdlzALAZycFcn/rr0U52dXJBAkDW7nX6TRzvg=;
	h=To:Subject:From:Message-Id:Date; b=TL2ldxpTAI31h3+sz2GQRPm/wGpOqIjF8HrF/wHW1KhfRpNvHKeAqwXvNg4w2Nyzfg63Y/qhRmwbcVUemOUlfIuKz2jKGlOqNlaIz3p/8ZRgBqfKVapz4Wl3wlAE3d3VWIp8mEJGZ/3lu59nfZIWfe5JdaW++2EmKgXvKntO9DM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=G0eOXNpk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="G0eOXNpk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A19D9C4CEF8
	for <ddprobe@lists.linux.dev>; Fri,  7 Nov 2025 22:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762553993;
	bh=IUnd9MrdlzALAZycFcn/rr0U52dXJBAkDW7nX6TRzvg=;
	h=To:Subject:From:Date:From;
	b=G0eOXNpkBpIdmJ2QhqgtlOrrHI4DH+Wbh4ZvaOsiydlViR4u+kubroL22mlsOUrAW
	 Rk7BiGF+EpZaOZUyKAHgj5vWRsryZXaQ9dZbssUwfHnbj044gh5//yE1AGtFiVUtuy
	 kd0boDsUAzlsT6wVR3rITlcKi8fOVllz/XMNrXr4ALRE3e6QThGtbImgc38wUBu3Lw
	 QyIZUmuj0WZmheFGr82kMZlCUZecAgME+hEbuZU4kK2mLYdStWhnWj2Z2DKMFYHfjx
	 ZHbfB8icZ6xKnMF4mhuDG9CBFOJETHBw9ZMtVtqm/Yy20oCd8uGlbpppx1PlrpJjip
	 WQ6hW9y3JE4ag==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92C5CCCF9E3
	for <ddprobe@lists.linux.dev>; Fri,  7 Nov 2025 22:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176255399359.32219.14372514027672362101.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5ff426064256b9fe96d9ca95c243b127abf8a7d09469472434463a0cb7ef9030
Date: Fri, 07 Nov 2025 22:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762553993
