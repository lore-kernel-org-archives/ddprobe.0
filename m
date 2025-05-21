Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24574268689
	for <ddprobe@lists.linux.dev>; Wed, 21 May 2025 13:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747834794; cv=none; b=GTCtqL0IkZwW/6xplmQandeMHzpgTuvzWeIZ1HfVi7ZfRUpJRCqkGpE4xCj3ZhrJWHFR42lV3xbi7WS+Kv88iZT4LqvE3SBGB+kHbsiuxxDcDObX05OrLgJtMQ/yqjBHO1Z+Ayx3bXCR1vohIsD6wpv7cNFrBjAbSw/DA4DF81Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747834794; c=relaxed/simple;
	bh=5M4dU6XLxPXc9NCrYB4bYUyNP1leXEirfLTjimuHE78=;
	h=To:Subject:From:Message-Id:Date; b=R8Rr58Nm7XVJOPMYIx0asKoqdB04rxfczhR0jMdxNRMn63f9zwCqSKw7HjLrkAjtzC7X4SSG+jkezLyYgHDUDXjxMAwOQmfvGcX91DvsHpBUC61a+NhLGzI17AMfCRtPk5FGGH9zq1p0y2ZHghAA3d73QTi3tc1je9rlashbdrw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=C9OsUXGk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="C9OsUXGk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 99B39C4CEE4
	for <ddprobe@lists.linux.dev>; Wed, 21 May 2025 13:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747834793;
	bh=5M4dU6XLxPXc9NCrYB4bYUyNP1leXEirfLTjimuHE78=;
	h=To:Subject:From:Date:From;
	b=C9OsUXGk+fJnq/VwT/Z9+uZJTU+f73OTDVJ83QUmGtGyL8Csv772ERrHBuD954X69
	 wKqh+6pL1IsuFJg9wy+0CdeUTJ4nu2c5W6i1Xx5FqDzpP3axJuUOLB4aQB/gQd5+RX
	 OpTFXvq3wVHfOecQIpKG8z0m1bXrz/gWXME+SIN1v5Vk5sFvjIWGHdBUl+BvuPi3/F
	 7/amwxRqSoBz2BC8aLoq7q11o1clbcZ20BnfZyRtHCuq+Qkggic6DPrBz+qPbXVkA1
	 QqtjPv6p4h1Idc/qW6480KD0q1xyjbVfY7oA2T7fyDI1Gnkv3mK6i7cAD+Gfc7yZRg
	 JWuv7c6ZnP2Tg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EA42C54E71
	for <ddprobe@lists.linux.dev>; Wed, 21 May 2025 13:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174783479357.28523.8483757180985572040.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 940dfdb117d0c80860a2aab0e69df43e6d306ed03dff7495ef7f1526fbc4fb40
Date: Wed, 21 May 2025 13:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747834793
