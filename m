Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 411DA2233A
	for <ddprobe@lists.linux.dev>; Sun, 26 Jul 2026 00:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785024634; cv=none; b=LSwBz0KdaZzp/ScdQhQGWBkNS/VKPCOdOsCs0ZJC3Nhvf5dqKWEFz4yMEPRZJhyK2SEj00UTXMslXaKz/eE8nMtMmOkkx30yh+V0f+neSg3ORfx3J6c/WmVdUxbzk6c9xC/Bky1IAKCKzPFEGAvsfZ1a/CM/3PPhDBExgLfYqpw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785024634; c=relaxed/simple;
	bh=Yui8909gnap7SeO8mXQ0GOceCxPNQbVH8JGdNBm/X5k=;
	h=To:Subject:From:Message-Id:Date; b=OZpGH73XazxF2SsVgbA5ufVM+WcNUMz6/NvEOFFOyS1bIBnZc+ujoJOB6121D2A1HlUxRMlGbyqPoGS0x60ZLOaKy3bXuNa9k3vppBIJskELhQVQs843Ux8yJpvQ7puvt3qGdM3+uBHefbE2gNx58CQkVQopwCPHEmFKgTiCKQk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TYEt+Jft; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TYEt+Jft"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D05D5C2BCB8
	for <ddprobe@lists.linux.dev>; Sun, 26 Jul 2026 00:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785024633;
	bh=Yui8909gnap7SeO8mXQ0GOceCxPNQbVH8JGdNBm/X5k=;
	h=To:Subject:From:Date:From;
	b=TYEt+Jft8AjVup7W3he5rNe6aS0eU0oGs2KEIdpRMQleYA034H8eyOxGtHOfOep68
	 eIc9v4PWu5/YrZtZ8jUlPs7slXnV2qDQApAEzayK6mKXrhRu+WJYbgmPQFnW3x20jm
	 Ew4+65x+YienA2LURgT8j3Aa+bvEcmVakbJ70qz1wDvJANqCmYj4FKYFwRo0tiL6X1
	 Lq4XycS7R0z/w0cfdvF8qYuMBKcJYg7QWwPaIyIHr0r/xxGLkSAYUnc1i5OZjcZdjf
	 7UvBSkh8omeAcTc+hbjrye0DWTN+4NyQBa2mGadU909cb+xn07C4Cs8yPjrNh+MSqY
	 U2vlLuIJLdXDQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB9A5C531D0
	for <ddprobe@lists.linux.dev>; Sun, 26 Jul 2026 00:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178502463368.23303.5779521082760445708.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8d4742a0e40cd2c71c903e4b383288632250914705037f2da548c08751d07f21
Date: Sun, 26 Jul 2026 00:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785024633
