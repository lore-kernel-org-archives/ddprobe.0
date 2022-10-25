Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B97417B
	for <ddprobe@lists.linux.dev>; Tue, 25 Oct 2022 07:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6F4B3C433C1
	for <ddprobe@lists.linux.dev>; Tue, 25 Oct 2022 07:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666681253;
	bh=raP5WXmjQmsL3vKTofgt6gr0HZIWyzQDPgt6U9eI6rc=;
	h=To:Subject:From:Date:From;
	b=NXnUZ3Y81Y5BwuxRaNnqTUx/GBJmr69VUa8TvJgEitDKaHdg8Z2n9yezJ7tyTW5IN
	 k9haoHyC0LoMlj/EK5vag6syrcIwXlQeW2b1DH+4H8J5XafV2yQu83G1l5HhPrOhWM
	 p8zRRx2vMePaup5VUMXcjqCY7z4/sp+eIIvtGtJJAStENfRuPvUhsmmh7wE/YNG2FP
	 xWdKuC70tZuJwQ8LCODDXiqi4Uw9PKQkuXFq7AqjSlN01XjVAZ+YUa9Ys3X3ehYI4K
	 PGs+pNGHz7peu4shKZQZsS7SdW38XDkP/im9fx5lhkZA5hKvSLwQYFR7dWLcAOM1F9
	 +n0VjB+hEmt3Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 54695C38A2D
	for <ddprobe@lists.linux.dev>; Tue, 25 Oct 2022 07:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166668125333.32353.12699611148984470053.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e71bbd497fa923d9cf29d0aeddbc9432156bbd99838c0140a83b6a8743a1a2b9
Date: Tue, 25 Oct 2022 07:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666681253
