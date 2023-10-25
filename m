Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19CB5F50C
	for <ddprobe@lists.linux.dev>; Wed, 25 Oct 2023 16:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hziBTD1X"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 80616C433C7
	for <ddprobe@lists.linux.dev>; Wed, 25 Oct 2023 16:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1698251896;
	bh=zBocut+i6lHzfV/BywJo0ju7mR2+w8l7ZrVoZGE7eY4=;
	h=To:Subject:From:Date:From;
	b=hziBTD1XNDNIE1tSc/AdZNz7Hi3EO/tZu1C65yOUwomPDo/77E9hJJQh3/1CLnNxR
	 dOdzk3goyoBvOXsHsZ7LZz+pSwnXeh2er98NO62KuQ0csPXJ2/H9RxNFckmvS8Zg9k
	 /4JPAfAaHNuwkhbvsr8uEEDzgSLgoDZAZe8SMd4ZVAig3iq+ywEODdjoUMZG7VoHby
	 zkuIiVNi6dS33JL2+2/TacYsatKQmGSAJWYYrht/fLjmXMdhzoHhS0gW4zhIpCoBAA
	 J+srjXiOOTuEX684fMeGYLFmvegH/SxtpQ3LAwAqhCGkz1D3N7QtVnaequyWJ76rY7
	 XuJ3gQuxf++gw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 620B9C0032E
	for <ddprobe@lists.linux.dev>; Wed, 25 Oct 2023 16:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169825189638.29157.10223274199053507974.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c1af3ab54bea19b396b093111fd9c850119cec874cf29408d0f2909a01461d19
Date: Wed, 25 Oct 2023 16:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1698251896
