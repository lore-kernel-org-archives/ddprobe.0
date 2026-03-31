Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2581129B793
	for <ddprobe@lists.linux.dev>; Tue, 31 Mar 2026 04:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774930494; cv=none; b=prRDkp3uUQvUJlgj2Kw6bheZM1pveggKCVICVaGnzVPJoH0lIWVr0I++ke+Qq/EC/pIxtwElbMoWKOOjGOxCYm8047/J3ybohJN6WzlkzZOYxis8U3ewusBWpMwNx0yfXf6NW1SxpCOgmKp7+7ehBp7k2+zQHmNN8yPFUBMoFX0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774930494; c=relaxed/simple;
	bh=ar69WL+butg3V5KQ7xgm51i8ziEE4Y+awRhKG93/2QI=;
	h=To:Subject:From:Message-Id:Date; b=is8dn8kha6cEXqaoaFV++EmRG5urhb7kxMT9VxkiazVGxc+HHgU2dObakmjdAziNi661QEcrNu1M/GQThES+fv4fzPql3M2tOruB0a1gDtZZUaBzyfpbRFuiJ2tj4DsY3dTJtUkyFMNBnTHQO3w1tEYqhHd1Z0/AIuYV8t5PkMk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ENrfPXv2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ENrfPXv2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD9E1C19423
	for <ddprobe@lists.linux.dev>; Tue, 31 Mar 2026 04:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774930493;
	bh=ar69WL+butg3V5KQ7xgm51i8ziEE4Y+awRhKG93/2QI=;
	h=To:Subject:From:Date:From;
	b=ENrfPXv28vch0gqd2xWHHJy0/WXOYqLsLrf5Efwoy+DyBdnD5hx+IMY/uZYC0q55H
	 cajyMk6vVrB2dNSZH/HZJIXcuypookmsRQkoXXN1KqQ74e2rsLYM4DbI70Amcpb4XU
	 x7OosIJt4G5o2hWU5AHHBrBYnGTGRkwPO6m/dNDhyXf+rOVYGkX1csATvqC1k1b81O
	 e++4mL7D3AgDBcDsyFUv4jxe89wQzSFTxqjPRIoqyuCZGA1dRYznLWVFXf6Qt8KExe
	 QWnwgDczNaoMx/m0O+HDoF3ZiQLCa4LALYGFmdjiQ4N8HGBO8xrpp14dTGG0/rjSwr
	 3fufwvUGKgUlg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99891FF60C5
	for <ddprobe@lists.linux.dev>; Tue, 31 Mar 2026 04:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177493049361.15792.4577077400515955384.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 22f67f2a5ccf24e78f8cc58ded76aeb78fe158a4890482086aec5dcab75fbbbc
Date: Tue, 31 Mar 2026 04:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774930493
