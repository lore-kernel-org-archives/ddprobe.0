Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D56A320CB1
	for <ddprobe@lists.linux.dev>; Sat, 23 May 2026 20:42:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779568954; cv=none; b=tWndgh7Jc2mqBe7lC2BWLEdw/ZMI8yWCwf5dGq3cR8qzkwBa50MKD16mrLKz61pOUYt+fMRFb9iT6XmRhye9BKdsAK2q+Ym6gZtPJYvQcZqziJSDz/x7NB37f7cPJoWrJQ/8DkK3omKJF8dcUEa1BQY7SNl1REga7MnbTtZXEY0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779568954; c=relaxed/simple;
	bh=T0LJx6fOJNhkaRonso9l5e4cUEdwTFttDVb88HNHwNc=;
	h=To:Subject:From:Message-Id:Date; b=LXVNp0mAFrfBqdcN25u1GMsfTnGprDo/tu0WLDPD+DzxVFIOaxAPx2B5ERzI6X+YkeRgR3gM89PYldhKD+6pNDFqB+WhrqA+VfUc7yU0/9wY9WiF7ik97kUsVpb0jKpGSG3BnfPxDuaSAjY+J/zJeG+rRyKxI5s1yEpomBRXUng=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FZQnp7hN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FZQnp7hN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C172BC2BCB0
	for <ddprobe@lists.linux.dev>; Sat, 23 May 2026 20:42:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779568953;
	bh=T0LJx6fOJNhkaRonso9l5e4cUEdwTFttDVb88HNHwNc=;
	h=To:Subject:From:Date:From;
	b=FZQnp7hNkNE02ARDtw2Eln/yAhihQoFvbv1XbMAheRuGRbwz9WzANOXyBlx/yCvdU
	 TWhlK1bPF8iwkbLczFXmAJmYZBLQzJ6S6Q/x2UPqAjWmH/BkIAOt6e0RIPBWue1Jgi
	 GZJkKLHa2pGJ5AU3DZG5381omecDhBDeB2CjR2FDbX3lVfFy1HFcWftZZIm92Q7w94
	 KDZ0KsxBfaZtP1d4rZCb51Z+TqXI75VLaq12YtpdsHH1fCnGvNhzENHSwgdGaYEUop
	 OwI0ntJMp/l2JITKZBMIPYfQbiypbXxrh3qQWrH5NOip7mdaEr9ZNBSGmkeitdIGXa
	 NFv54izymOlrQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A91D5CD5BB8
	for <ddprobe@lists.linux.dev>; Sat, 23 May 2026 20:42:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177956895368.23934.10951982359641548953.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2a19ed0d61363245998c997baa058d7d5f5107d41bc7c9f302eede3359d2f215
Date: Sat, 23 May 2026 20:42:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779568953
