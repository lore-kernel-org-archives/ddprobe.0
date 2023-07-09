Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7BC1D79E6
	for <ddprobe@lists.linux.dev>; Sun,  9 Jul 2023 16:27:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id EDE97C433C8
	for <ddprobe@lists.linux.dev>; Sun,  9 Jul 2023 16:27:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688920029;
	bh=5glh0Q3aMiWjqTlL3WZNaE7IDthojeFV7eJpjeA3LnA=;
	h=To:Subject:From:Date:From;
	b=MC84juQjr4KXcW1Y1b4OHOlKPvHMGHP3N5O8Du8CzZFqhXLHwvgUSuqxNI9XT7YnV
	 gmt8CC2HwUofmvlyp81gNDmSU16Zt1rkAIfwNwPfCJeF/fleGe5amiqgsUJBZjvOOm
	 1JgDFzMfLPFmKherJp+5vBWL82jgn8eX92GdrjYnOWJ3uu5vNcaQrfOwpwm6PsAaiP
	 Y/i1m2vtgo0a7ohpBxWQmpC3zr/NX4a9cPht6VUz4980yyu6UIXoCoiDEaSy+zv8kO
	 Alx8eM4wgujSwPJdnC+C8ReH2LMbuApqvYNFod7w995QVS0EyXJCXVde+beaV2wfJ9
	 h79Cv2V5nmqTQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D2528EB64DD
	for <ddprobe@lists.linux.dev>; Sun,  9 Jul 2023 16:27:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168892002884.11692.4658617493561538791.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6f9afd708fe0db1430b3b57a620060a5128c9491438aef418603823fe76dc363
Date: Sun, 09 Jul 2023 16:27:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688920028
