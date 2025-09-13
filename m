Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 223B035958
	for <ddprobe@lists.linux.dev>; Sat, 13 Sep 2025 01:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757728794; cv=none; b=l87OmBimKnHbxum4VvXDwsn3nEiX6POvl6zUnX6TPL99YoLVR4UYJork2tfaKchRB9xDE+U2Q8FWOvXrz2LZugE7oWAY/KJGAZxvZH+cAH0BxEaUwMq5cj5u7Jx2p94UDcUmphtjOrB5N3ukG5JWNSEx3P1pKO0V9XfUOf73fAg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757728794; c=relaxed/simple;
	bh=Fzf5Azq/cOaO036gelw+vqzsDcZ1zBBafz/u0UXZlKQ=;
	h=To:Subject:From:Message-Id:Date; b=SHhgYjeWPck2J3Is8HUvoHb1aD+Jrsmr3652lkjf6SNzXx5DxTT6BNRRef/nJVxM1KRzEVRSe4aT9YR8C1BKaveEDrsQZa0ZBbnlDpJkx8Ixdp8mCSS33vPKL8KxaaaDBDe5zQ9Wy9UUb2o7DSGUhfjceg8yj1TApD0e3LGLf2I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=H1a/QVrJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="H1a/QVrJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3B31C4CEF1
	for <ddprobe@lists.linux.dev>; Sat, 13 Sep 2025 01:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757728793;
	bh=Fzf5Azq/cOaO036gelw+vqzsDcZ1zBBafz/u0UXZlKQ=;
	h=To:Subject:From:Date:From;
	b=H1a/QVrJylaDpkXPqPvzHMeKx+4kTmsH0dTLZkErI9bps8jZ9L/MGF+2UODnQ47PA
	 k3DENYeLedFb2EIQ+GWgIZDl2+L6DHnVcwR43ElGhWyTB3Zde7+dAI9RqfJHA5ODtD
	 n3O8O6T5UIKc8NBghzpwxPGYegdIJPn7IV/f7B7vrTct11JS6/zvJOzWCMg5+FdlZr
	 Vu6lHtA8kavmH5Miy+xNndZ62ifBD66wUPE/BW/IC/IaxQjpq2Pzej7KMdwDs6TN51
	 mLQIxEwCRfxIqea91oAs1P1kSKx2nUWJ0jQN1rXUoQdJCX1XNttAtTqFd5G/qW3S+6
	 NBucJg9r/vF0Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91674CAC582
	for <ddprobe@lists.linux.dev>; Sat, 13 Sep 2025 01:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175772879357.15723.11111724583075910988.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5a7e8d1ef32339c68c15c98ead4689d97674cca2dc89065ba76a84415e82f6b8
Date: Sat, 13 Sep 2025 01:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757728793
