Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F80F1AB520
	for <ddprobe@lists.linux.dev>; Tue, 13 Aug 2024 23:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723590954; cv=none; b=DYHktaM6vDno+nmgRJLRmu0Sx4LJ2z6GGcREPoMPwuk6zLlNTmgJNmnjZYaX6qbigtfY5u1aGke6jqdOSQ83O5qL2SThHGF2W2n2hFnI1+QZ3ZzPACCWL7m9pTWdVOnC+QWFYDdkTEKzrici7pCYAsCLROTyWpA7XGRc1jpuWe4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723590954; c=relaxed/simple;
	bh=VpR9UaqAlTs6qF9ZdpsBypsRnXFr5XAh5uxpnL61X3o=;
	h=To:Subject:From:Message-Id:Date; b=kll71Vu6mQkxVqzgSRMTbmJjFM9E0uuQlXCwh5hdi3CVVaaI75t7Yx2Vl7EDEMEyK5kmVTW7jp908eUfb+NtG1d2ib4ZJEODriYi4aW+mQGYCUyS1s835zOHmnCDeirwK0h9D0XvCipr3MKylnCgU2zGsVhyMGGj66aIgMpOsBo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Y/yYdXDz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Y/yYdXDz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA06DC4AF0C
	for <ddprobe@lists.linux.dev>; Tue, 13 Aug 2024 23:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723590953;
	bh=VpR9UaqAlTs6qF9ZdpsBypsRnXFr5XAh5uxpnL61X3o=;
	h=To:Subject:From:Date:From;
	b=Y/yYdXDzNxGN+SQHmH6edzT6aA9gpwwHxalB60esCOY81v1r51AC1IVkclcMfT3qH
	 A61/NLN8pxPKXI7IEsZb+lxZDAHLNFrOJwKZWkp5IgxKqhqvzrKu6G5H0LAhADkOWe
	 rtHMGH0JODWOhquW4lyul8hsDkJj6tNMYGRuCRGKoxLnAvmBWKsro8wmoE5u5PVPbO
	 ISqrubd2fxBYvl3yGQW/uFNLqCZVLOf/YksGnqPcxnmIS97HYaYJbTSXQmTeNO/jux
	 Qyn3mChyAHEbkLnbPoVlDqP2D9iS5QbdWiNgednTotZaZX3VuBO6KfKj+GGahXXxUI
	 lc03+EANz9iow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 951EFC52D7B
	for <ddprobe@lists.linux.dev>; Tue, 13 Aug 2024 23:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172359095359.11008.4704587997578972657.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aebf98c6e32f21e04e8d3843cd389f4acf8f53f56a73a57363f9474837c879ee
Date: Tue, 13 Aug 2024 23:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1723590953
