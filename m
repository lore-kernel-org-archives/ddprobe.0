Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 56BF01A3A94
	for <ddprobe@lists.linux.dev>; Mon, 17 Feb 2025 12:18:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739794734; cv=none; b=Ekwexwv+sVBo2O4yzslZpl1ODgLkPkKhlyNMtNm9+XmH/Jk+vLoW9nXz3Shf177RD0TVEZApk5nr94yzOTQdFeOj+8TU7NxyrbK7vAknoFcFFWR1aA4Xbgg9uZZ+kik5g1TfsZbG8bO8MoEBQ335GZdehX0He1tL3ZeoJZIrsbU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739794734; c=relaxed/simple;
	bh=HUg8S5rF9zcHU8489uegHKb9lN7ZCi0no8QJHAs23xQ=;
	h=To:Subject:From:Message-Id:Date; b=aAcUJumWVmoMgfLPSB+hs0e1U2yvMhxpjGxdI26N+yKiKXEi9d1LUo+Y8Ogsz48K4oWVqe1QmBMmu8gLaDgWspvdEM+myA45bP08ln1JcL4ChbXGDOBDVbO5y7o4n5BRbpr0VIhgkV5KlrYwAAr5aKtnJv1bh71RzVLXjfmJWG0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QBMNABGn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QBMNABGn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA919C4CED1
	for <ddprobe@lists.linux.dev>; Mon, 17 Feb 2025 12:18:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739794733;
	bh=HUg8S5rF9zcHU8489uegHKb9lN7ZCi0no8QJHAs23xQ=;
	h=To:Subject:From:Date:From;
	b=QBMNABGnIfQjPJUMC2iPPl/1U7FxexW+EHR3N1f8Q5bOskWQ7vlmUzUauMLkCTsT9
	 tEWLqHFOeFFvYV7N64oUCZCK53sg4BdSacduIh7wED+tiv2oc/tUwaWxNKD93LDQUY
	 ruHFClnzEwuVK978fydApo8eJsutSm5Zq9nY89pTSJBubW+l5WvyImIzfo6/VcBA9C
	 38Zsj0+p5tK7EjFLYdODUOcsV0RIQSAKC8HTVQEaCjn7/FcpZhLpNS/3d+bhlsQ/rG
	 ngvPD+AwKzF6oIRoSVWFMCh2mkzGV4x0YCiK5Pu3ukcszujyYdCB46RBOeQioO/ZcQ
	 dp3x2Da1MAbzw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9FA53C021A9
	for <ddprobe@lists.linux.dev>; Mon, 17 Feb 2025 12:18:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173979473362.32217.6428994227198934129.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6dc19c2ac73e0da0a03dfe104c3d43c435df91932b8a843edc6c6072853d7fd6
Date: Mon, 17 Feb 2025 12:18:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739794733
