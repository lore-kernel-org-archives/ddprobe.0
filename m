Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 435BE368291
	for <ddprobe@lists.linux.dev>; Thu, 11 Jun 2026 20:46:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781210794; cv=none; b=uIPlgwQoe18kBMw6ck2iBPmdSY6FLVHHpZQSvwDOVhefyfyjm6HJASWnVXZwLd4BkyOwV9jWBnQowa2h+JAW4PbVk2X1uzhNVU7qaL7HX0xQVpkBzN7R2qltvt4bl4vfCYZPeDkSe2tjzC6fqGI1/n4fJc63pTYnvbn0LiDk/pY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781210794; c=relaxed/simple;
	bh=YF2d/XS/EAjuOGbhoJuns8wOvNiGpS9TbslqFGKP4QU=;
	h=To:Subject:From:Message-Id:Date; b=mrK2C3OD9nBGBm3zveVBGyCsUvhMFxmyK/pLY8HtyFSv42K1kJBSm5E4yl+PpgGOVBjPYUlE5/jlMWKWY9XPmWl3AwN87WbVFTaOclnr7vjMSZ8OAsS0D29gv1vu5DYXXr5w6bV4Ql1GknoFKe3NeI0lldOYipIV8QAYdsg1Pu4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oz08QU2B; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oz08QU2B"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DAA7CC2BCB0
	for <ddprobe@lists.linux.dev>; Thu, 11 Jun 2026 20:46:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781210793;
	bh=YF2d/XS/EAjuOGbhoJuns8wOvNiGpS9TbslqFGKP4QU=;
	h=To:Subject:From:Date:From;
	b=oz08QU2B5vHZUzTiGxIO8ohnAbioLPz/RaePXcsxP01PM4vdnQomoYRlX432OiDv3
	 R8nBqITOWTKmKs7KumhKQnQLWWazh6D3ICcXYfpmeC4sjaeGxI0XD5fRHEDdOY+V2R
	 OHq5Df8Cb+8+6GNKGjIdsUTSkZSwl10Cs7GNjiFt3FcU66YAJIxnaMEAfd60lGnjQc
	 hR/rjFzXKk6OdBJWKMrTP4tbalgZyZz7oxkVnk5tTaHxPRVJd4hjKMt1F0HXSMwnTk
	 /q0isBpaAcLpqMaSNf00bhJCA3pOlCKlNLj1Tn8pKlhFuYadL7UaJTaZG+BccmRXDX
	 zFJjGBCHhLbaw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B65DECD8C9D
	for <ddprobe@lists.linux.dev>; Thu, 11 Jun 2026 20:46:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178121079373.8493.3664611808686794221.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 94da463282b344bf8fdeeb17d5d84608d016decfb413fbc0979b56d7726272f4
Date: Thu, 11 Jun 2026 20:46:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781210793
