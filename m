Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 59F7C25DCFB
	for <ddprobe@lists.linux.dev>; Wed,  9 Apr 2025 11:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744198194; cv=none; b=OrPyqofgxyMxdzv9f+pgblBYFxPW3cb3HqYspHaRx7rl+F/JeUVlHHNcC5YsCEOLLGFo+sGKKBX+8uBT/uU1gEfpiNfQq4v8UsXwqmqr2m3UOYefjOCIAWNPChhQFPuYL20RuvefbomY+zP1zE8hKieuiKSq1LGvqInnAs3+fFw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744198194; c=relaxed/simple;
	bh=YYN6jzM4WBAEHS1y1DiRPPLv3j+iifxdzDqafwp1AeA=;
	h=To:Subject:From:Message-Id:Date; b=V6qrMmQ0dgOLiM9yg6rslF8HOKN21mgvDvKNfiX5/Z8++JMFwLsuVCHZYHacQaYN30BX9F+rUj2RouIMEVA6CUppQQ48m/7Ln0WC2z2sJZD5bZgfmGg7qjRDPfzvQq6E2f+WDzlp/E9ZQYQm89bXtnFQqwMoJDOAN4M4AsW6YlE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=D2lm1XtP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="D2lm1XtP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C9D98C4CEE3
	for <ddprobe@lists.linux.dev>; Wed,  9 Apr 2025 11:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744198193;
	bh=YYN6jzM4WBAEHS1y1DiRPPLv3j+iifxdzDqafwp1AeA=;
	h=To:Subject:From:Date:From;
	b=D2lm1XtPvGf0+ZBzCstiMP7lZN7QKn0c7pq/1FV0gr/2M9c4quC79NMCx0MgpPNok
	 uKv2bcPKYj5idwSNPDaCtbu3eGQBsG7zVOi5mD/FjGp1sazq7tZqTn1yZbEvqGzwBd
	 OesudJdDUFKEBLd0BrNfMSaxbzeBL66PVLCm0s8UA7+hUr7915wTOv5jh6Fdi+hWCf
	 PkPUxbLWGOXGuikr9QfmVuA6EdyKv+mYRQJe03Mj/RBdOgjxVxc6puIenCY9XanLTa
	 80xV8OY3/g8iLvfkCCKtZ73aKEVFFAe7GsBJhLD49/GuHeSQDut1ESlqNZ7tRcmxvq
	 hjZcMb5RmDW9Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B4975C36002
	for <ddprobe@lists.linux.dev>; Wed,  9 Apr 2025 11:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174419819372.6633.16402861775957788881.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 948a960ba967d5be7e032ceb94ffe1c8949c1e237977a838a037827964a45176
Date: Wed, 09 Apr 2025 11:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744198193
