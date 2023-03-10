Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 512C72F49
	for <ddprobe@lists.linux.dev>; Fri, 10 Mar 2023 11:05:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 02ADDC433EF
	for <ddprobe@lists.linux.dev>; Fri, 10 Mar 2023 11:05:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1678446306;
	bh=Bx7dZ871Be96KHSmYVR4t1uEcevyac+tVYqQPhes+kw=;
	h=To:Subject:From:Date:From;
	b=GZtTSpJ/i8JG6fat5KPMR5bC1EKlsWrVBRKrO3lAz/6023sLA/Y5WiLQtsCpvvous
	 Jkhe2nzSBx3a5mDej0n9hFCBiOh4NER4qayIKbepkdWnHnTZC07EYlRXzZlHlChUf6
	 kshCrFKUzb4dB3WQ13/F/UYtrVr2Ye5Q3+LGYGMukKNqsPv4rMfGF46vD/tNLrKwSp
	 fvU/rp8ZHG4utNVrYEVXifWKgrPJVSkfNKK7njNviIrG1iYVWTw9Vo2yhx1JilfbAo
	 KnT+IUkhiD1dKSCi1jgDea/x/0pBAQaFvOXUKUKuYsJPHDXXiRB34oIDSZ0T4xlUPQ
	 IJ88QZ1s21ztw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CC861C6FA99
	for <ddprobe@lists.linux.dev>; Fri, 10 Mar 2023 11:05:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167844630582.8253.4117912325919433152.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1f164447ad7450d1feb37112121a2609b12dc82ed0278a94e09c44e3da4851e5
Date: Fri, 10 Mar 2023 11:05:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1678446305
