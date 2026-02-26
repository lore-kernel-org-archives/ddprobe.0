Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0B17B311963
	for <ddprobe@lists.linux.dev>; Thu, 26 Feb 2026 13:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772111694; cv=none; b=FXzq7Zw75KEZrBNz8HvEgxBYb2lHJoTtnxQDdCgjpjnAyPKrXPDgVlKVDi+dG3bg1v7ich2UY3Ba+aKUXncAfMLgf2o6e4Dkewpd028/K4ulgXUWqbgpDRsxKPoVSpDKbHQ7LZJ7ZxYPL8D6Q5YYEsqRV9oUYIDH4ER0wt5+ZYY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772111694; c=relaxed/simple;
	bh=2uOs6oLl8sn33qDnJYIxpvMIH6vEOhWywBvPYuB7qYU=;
	h=To:Subject:From:Message-Id:Date; b=jhVLwgVZyuRvNo77fFX+5bWqyERYNh04fqDrDQvdIsZOsn1uUm1yk9k+h6PqpxqsCLgAkfx2KTZqJrCP8sBKckx+dr2PcGoOyuLH8NrE4bL6sT/QvMr1zZQq0z/0chm87IwLu9CK1Wgmu5iBVoSWk2V7uQmjNPjhhcGMymbQvbg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fspU8gFd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fspU8gFd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A72D2C116C6
	for <ddprobe@lists.linux.dev>; Thu, 26 Feb 2026 13:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772111693;
	bh=2uOs6oLl8sn33qDnJYIxpvMIH6vEOhWywBvPYuB7qYU=;
	h=To:Subject:From:Date:From;
	b=fspU8gFdGZcsOs0wWrhVBmquSncBNUPXFXVC2yv9kX1gVvSTkpNi98eExxa4XvAZW
	 +2Mzw/WOEWd4kcplAIokEdf1nZdPXimvbkWZR7GNjQTbb9MoXricVXhwm7NDq4CtQk
	 uY6NBG8mtqYxRItTB8FAVt4Ro1+ouBypgqj5fGhgVVnUHmSaSKmGgzjM76WLrBy/xK
	 svmzCZswT5rr3C8UybN0fmetvlUDklKP08Or3H83k0tFKcfEpQAEMaDbf5XVT/STdg
	 /nZ/I4/yEQlGzY1w9X31No54taLje6HO06vSJv+tVH/+wIZZqYW1cmFfRJVNZt8BFb
	 2slG2gu3t63Lg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9595CFCE078
	for <ddprobe@lists.linux.dev>; Thu, 26 Feb 2026 13:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177211169360.30782.11428240010908294203.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 990d614e6aac6e686a0d4eeb9475317f96ad463cf03515a5b4d7455cb42c7122
Date: Thu, 26 Feb 2026 13:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772111693
