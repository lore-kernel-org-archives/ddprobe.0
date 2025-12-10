Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 149CEE54B
	for <ddprobe@lists.linux.dev>; Wed, 10 Dec 2025 23:42:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765410174; cv=none; b=VMxENJn+ZUavtBK/OuoUyfWXqcN0t8mbL4GyvZ/M5gzyB2N3yh/qxiSM+xI4jsVDU4pDw7hZbBHHaR74YClCcrQCX8/LRE9N5HmNgREuHgvXTQ2yEcQlwQEv/wbfKLa9BzR8NHx8Sny9AsqFs7vC+eYBYXbmlPz7ffsVXpezBhA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765410174; c=relaxed/simple;
	bh=fxJwYhTQDfkXZ98eVpYFIRSA55gy1lBNHZ6KqkK5X6c=;
	h=To:Subject:From:Message-Id:Date; b=sGuKEBdOf35eCTZSGseha1Rm/ZAqALIVljV6kaR/co0kR9Don/0JVjbBezVRT/rCbdiYuTUrabCqh7T3JGPT357Gd3o2AOIuTB7/XLwol90XVXWxnSAihxiALkYsxXtj9TKuskbpl40dVSNC+a0DtQMxlxO/xdeGLWwmLi2keuM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uIKvUHGD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uIKvUHGD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A87B1C4CEF1
	for <ddprobe@lists.linux.dev>; Wed, 10 Dec 2025 23:42:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765410173;
	bh=fxJwYhTQDfkXZ98eVpYFIRSA55gy1lBNHZ6KqkK5X6c=;
	h=To:Subject:From:Date:From;
	b=uIKvUHGD5Y4RN65WZXsYH6SSV3mBjoCwk76bi5DHX5qs+CKKtPXXtP5OZVLN8yiAp
	 tuJiQrYS9Oml3wOpcOWs2h1LNSqW3yhqZglMvEzezo5Pzn0t/hGbnp0aokXjlpqtoG
	 BaVvm0Os/fcbe1aNbVFJTBUuouI7R/NoJ7ap/nSk4nScKQ1565d5k0F1RUYvZFZ1Cm
	 XXwPm6un/LHouFRyYRQvREQxPZZxzqGQUXEGLZFdWSWef3UIHjDVPby+5i25zPnNyP
	 HpDkmZyFhp6/fNY8TYQEDCLAJBTkgqnmJotjxPJzJUL5o0AonMbl2RgE6Low491BB5
	 70PvmFd4Kz9Tg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96E93D3E783
	for <ddprobe@lists.linux.dev>; Wed, 10 Dec 2025 23:42:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176541017359.1336.1357948326391335988.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a5bc87e638effee9f642f4590446b16ecbeb6e1654794c75b1037832cfb158fe
Date: Wed, 10 Dec 2025 23:42:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765410173
