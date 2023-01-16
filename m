Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EFC4E10EA
	for <ddprobe@lists.linux.dev>; Mon, 16 Jan 2023 03:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5440C433EF
	for <ddprobe@lists.linux.dev>; Mon, 16 Jan 2023 03:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673838087;
	bh=BrhW+wv5VQln1+icEZxjYOLkEqpSsQxTqhX1Bz6bdp0=;
	h=To:Subject:From:Date:From;
	b=LcxzAELen5dfdKxziypHqEx70uukuW7uuGIWm7He3T1JlP2n9RwlOmV6UWiDmwlPv
	 93KrZjwS3gKrmUQ6Z/SR+46/X9xb0ErKavkHR6WeLbRFxtdZVRs33sfVGPi4az0wQH
	 ccU/JJOHPBJOm/VUFewyvVpYCiIQVw0uY6yxfHWfEm0q7q3pUgDjCtWlnq9OgkOhJA
	 2yxmpANSwdKOVbciKXY66XpxVniqv6GAeOF+ApBbeDZ45KjIdmWSZPmINnfxRVP8Aj
	 i4k3vbRjJzRX2Kas/5CGt2fWXwsMYTlNlx5bD84GQobAi/3d45l//wF9ytNwZWlf6/
	 U7asx6H2iiGrQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 76E00C46467
	for <ddprobe@lists.linux.dev>; Mon, 16 Jan 2023 03:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167383808747.25212.10171237265840693376.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 128f6a17d521e60cefc66b72cfb1fc44e8ee8acf040ac56f8b34d79c25561ee0
Date: Mon, 16 Jan 2023 03:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673838087
