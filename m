Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DFAC73B782
	for <ddprobe@lists.linux.dev>; Fri,  8 Dec 2023 19:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JWxv4fku"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 75467C433C8
	for <ddprobe@lists.linux.dev>; Fri,  8 Dec 2023 19:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1702062496;
	bh=FbaDoBk4rBLNNG3whA3nBeEh+TUa/nn3emZ+Y6YFDhg=;
	h=To:Subject:From:Date:From;
	b=JWxv4fku5HnOktxj5ccx3FlAgcUk209xfzQvYwSx3k1V/ITnZLeRXRZgasirEN1Lp
	 /pcmCuwbULAyOgzrXbPdI+VO6McfPKJxS5fZ9c6YXC0Aj7XYcb05XHt4ndawStCWZX
	 WLr548twmiwTimVAwkVFyNPtMEA8ybjfJt+5W5xFlacnicnNxvS5aVSq2lHC1E1ogD
	 wTXpb81dQ4g3p4wMUgcEYGwQRc56bmSlhZKkRN8zPthPOMWffYszNJSDp6EwpefuSA
	 VYdcR9zsI99d/M2YbPam1at6j3zt+JFtdqLBY+CuKYlafGL4gn1oEo3DwEznqp1nLj
	 lgtE+oLaFyuWA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5ADC4C4167B
	for <ddprobe@lists.linux.dev>; Fri,  8 Dec 2023 19:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170206249636.25028.11370597220514423595.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8d38ede7908293dc55e636c49716a89217b8e13f7275b96099ce432369b0bfc4
Date: Fri, 08 Dec 2023 19:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1702062496
