Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A834ABA49
	for <ddprobe@lists.linux.dev>; Sat, 14 Jun 2025 15:09:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749913794; cv=none; b=WNiYENMOHm1X7Dx18Jg7GvnAdhis8Sv2JdUQBlLrn7RNTFj9otXrBQAwOwpAt7H3w6KbpKf4CjhlYhGf4vO49LmciEiFpv22LCKwODgPuEYacSmvuqu6mdLAz6/mQswbAUxI+O2/WFvyu6DweuL0CegfhGqw4Y33t4bD4VVdcB4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749913794; c=relaxed/simple;
	bh=jbZu2A9hJnPwlNkzk6Vh7jeQsYvylRhj+6odBGJ+esM=;
	h=To:Subject:From:Message-Id:Date; b=F8qUQMF4gsfXn9AY7D3yQyEn6K4aP/Hj2LnHoUh93TWDRhDCsLn3wz9e9Lt3ZQsgZL+Ma3Vh8ujiD7xs2btJDcvhj9yVTjGrELdKt/pXW9K+5EJkuW0j+Qy4I6B8qBMIYl9Y6oXOaDuiB0Bs8KnzG8WBGNjSIlTL7PrWp01F0mc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pxyeyerF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pxyeyerF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA6AEC4CEEB
	for <ddprobe@lists.linux.dev>; Sat, 14 Jun 2025 15:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749913793;
	bh=jbZu2A9hJnPwlNkzk6Vh7jeQsYvylRhj+6odBGJ+esM=;
	h=To:Subject:From:Date:From;
	b=pxyeyerF4CmS5b3tK1nMnpPIAS/d5nb07fp+xVO9N8OSU+7XsUxByTMCIYfTeGEvF
	 ORsW87bxuVfB/7EKC9y4T+YGS0JVLE5cZ6vN/GZFAJvrb5nCZFFFRL2Xkf9+vyevu2
	 Rs4J0t+bmTQsDRcHMl8J9lzfZXOV95C1EFSUta0ijT0azz/d6EtQb4o8xRg+tIu7oV
	 bJb6sTAyko4YzYTNcVJTDkoVCtDU3h57EezpATOCuZnfkYJwCtSmjbg2cNpG7MuSZ0
	 E5j93HJOfLzOuG3HibjKnBJHazFxrQIU7LssUmVShR4P5dWR3o8m6c3HXpBXMTsByT
	 aDP2GzG8PHxdQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9407DC71135
	for <ddprobe@lists.linux.dev>; Sat, 14 Jun 2025 15:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174991379358.22711.12906710718526730971.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e58401575364d9be419ad30ce6456a7f9c450b192d892be57ed0b6afc11ac548
Date: Sat, 14 Jun 2025 15:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749913793
