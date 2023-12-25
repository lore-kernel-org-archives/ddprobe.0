Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F0EF81848
	for <ddprobe@lists.linux.dev>; Mon, 25 Dec 2023 08:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Zc61rnkk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 86F5EC433C7
	for <ddprobe@lists.linux.dev>; Mon, 25 Dec 2023 08:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1703493496;
	bh=IQ5lrvjrpjWuT1XeEI3uxHS+6Nf1GZvNADPuh1cQzNI=;
	h=To:Subject:From:Date:From;
	b=Zc61rnkkEYGpU7++boQ+Etuut1AyiyrSbTwYj4tJo07UizQtF/sRQEaSS+DST2SwB
	 dIzafxnHcI2h38mdgaxx/jsaoxKm1fg2QrdzcendN5HOsSD3EJRDSYN0eRU7AJCoFt
	 0TONhITwE8GZR1Zh9OD2XA5A4lhGRb0hs7pD3xiGidgBMgY7LxnWbGcJsXd1w2fW6Y
	 Yli9HrQ3L0dqW0Cl7YvPWsMzcFkhRzgzrqWJwkxg5klceM6bsTJ4LHkwPf29mqqWvc
	 b6BwvcZDdpXuixWrTGNjQS5UbUoRGYxnK4zgKEVYpfcWSV2EpoO/sj+ebbYcVLiW5O
	 yEIev0MX+/exg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 67A8DC3DA6E
	for <ddprobe@lists.linux.dev>; Mon, 25 Dec 2023 08:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170349349639.8248.9550063165079963963.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 89dedd13018fb05b2692f64f46bc3f634d02de29b4242029aa5fc7cb516e68d4
Date: Mon, 25 Dec 2023 08:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1703493496
