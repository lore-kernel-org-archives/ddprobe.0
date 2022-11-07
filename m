Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BCB272F37
	for <ddprobe@lists.linux.dev>; Mon,  7 Nov 2022 20:40:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 716A4C433C1
	for <ddprobe@lists.linux.dev>; Mon,  7 Nov 2022 20:40:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667853654;
	bh=THc5LGTJbLjJ/8MNvoInr1L6LctX3m4tltGB47kZ+rw=;
	h=To:Subject:From:Date:From;
	b=bzIQT63KzpQelzq2SG6b+kuKRUGInLrEiYK36s0nrtRIsuMKUMlukWQf7qIBsZ4G/
	 kQXgB76sX8skUYPfvBccZ9tP8iJGqIygCDRFXb+ESihhblmX7LbnMYnfxihjYVUPae
	 x7s2HsF+okkkwvGZLiE926UXDS2PZ2DJZNXJMs4l5wHNaz5FuZ1ZafbGnN2TgTgeE7
	 Dc/EAt0qKn7uEmkWsWLYrtYN7loJZpWU+GPDz72rXGSzB6S2IG1on04RgH4SWJFA8Y
	 BJez6WZZS6woCyK9/Tyki3+FqPaAkpG3DyNcYOVty7m6fbOdPetheuNoBVTVIKoVQJ
	 My0wn9UG+0gbQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 549B5C433FE
	for <ddprobe@lists.linux.dev>; Mon,  7 Nov 2022 20:40:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166785365433.22871.119673501172015226.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 60ee0e7a23d3503310a1f562196fd9154e1efb335a33f6bfce2d7f77c93e74d3
Date: Mon, 07 Nov 2022 20:40:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667853654
