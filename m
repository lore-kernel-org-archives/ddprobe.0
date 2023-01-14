Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 079107C
	for <ddprobe@lists.linux.dev>; Sat, 14 Jan 2023 17:31:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8F359C433EF
	for <ddprobe@lists.linux.dev>; Sat, 14 Jan 2023 17:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673717487;
	bh=jSsZYQlU+dMYOcUEO2CDJ4woBHobP9woNnD4/kJSOxA=;
	h=To:Subject:From:Date:From;
	b=GL0gUe3JK4tnO9/avBx/i/PUF4Z00kwXSx4ZoBr2G7icv5M4sN8IcGgO/qfszp3BM
	 tiKRH1sKFwq9+v8NktBvKeFiXfok6SV1+QMG5YgM4TfqGFaQ2LSZru7vH296rI40+R
	 pWxxBvQR4nc6pPbj1VOOOOmOBw73q9vRlaUNohI0eFzXx87lhT130biBdhlO/zY1dX
	 8D69kYc+bih+ImO/DHYXKRuzNh0Q9K8drlQJgV3U/4Z/TT2GM2++S/l7GQy2XG6PrL
	 WPx4DQd0aFO6l5G8PEKqHDIKq+bbEsJV5PyBgOalTV6QpaOwq7gPNygv54lFQNwfft
	 4b59btP/Nqk9A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 700C5C3DA78
	for <ddprobe@lists.linux.dev>; Sat, 14 Jan 2023 17:31:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167371748743.5169.7714215031982575608.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f9c8b9899e2c9d3a299bf0781b29932f773f7fdf011d22ed73ae4cc6b1306b42
Date: Sat, 14 Jan 2023 17:31:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673717487
