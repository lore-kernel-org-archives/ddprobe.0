Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7C1C33B813A
	for <ddprobe@lists.linux.dev>; Mon, 29 Jun 2026 09:48:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782726514; cv=none; b=a4B5TlEhFIgYdJz7GiWt8bdlGXSQ0dELjnCTWxQ2wG52MMGRLMb4BzKv9xpJvzj6WPVJZZjzXdmy+Zzm4iqwbIcKarXqxANDL8uNntNjaz9120klL1xAlEffVW5c6dc2QwnlariGNo8MfNUGHiBHRNvEmJaw+jvhRFj0Dop+j4s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782726514; c=relaxed/simple;
	bh=/LJCZJE4/s4jDnKGKzXfroK9U92RstrPC0J2dn31qb8=;
	h=To:Subject:From:Message-Id:Date; b=ea6PmZgeN1fKTZ+HSEHsL2Mbu5FIIO6yWVehJWre9sVd6LcZlANN6ClY+u4EiDbFmOpJaX8mNti8ozJD9z8p7Kr11mmHM8eqoy3pHMzWmHu1thaf6YXKbw1iHsXjNLUfUOGJtKi1j8Lih1Ovilg4GoowSa9VYKjcVYVuxLX5y5E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eL6YY+l8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eL6YY+l8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 1F0D9C19425
	for <ddprobe@lists.linux.dev>; Mon, 29 Jun 2026 09:48:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782726514;
	bh=/LJCZJE4/s4jDnKGKzXfroK9U92RstrPC0J2dn31qb8=;
	h=To:Subject:From:Date:From;
	b=eL6YY+l8PzBa2bN/lbQRK4ix/4NqpoVVwiAPkkzjHMjcumu0RD+H+SGQGve0C2BTJ
	 UXhrAng4o6GjNRm2EnDcpKbKz3KdeeXpwo5BHCQG8pXEHScqWCOo/pME+IRH4Zha9O
	 xAWBcO2D0s7ynA7cgpClP7Cqfg2qLDXJsG99ELNuHFMPVCkJ6r8eqnYtRzyu2lmAoS
	 Gm0XNzx3c0Fd1ZyLuhqGz4oD3pal2EvQYabbHGwd4v2FpjZrhQrrmPDDHb0LN1Sb3x
	 WI0+0uUzJi1oe57W8nrPtrtfwaf/dGt9/B2qeQiEEE+vFPXx8OjMc/5rVXQr/dct7D
	 GdamnyOACUu6A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E6122C43638
	for <ddprobe@lists.linux.dev>; Mon, 29 Jun 2026 09:48:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178272651388.9319.4702323327230903223.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8301030a2704469cffdae2b1a55b659270e394cbc8bfa1030694a7cf41f3a4f9
Date: Mon, 29 Jun 2026 09:48:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782726513
