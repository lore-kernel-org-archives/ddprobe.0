Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E34315AB
	for <ddprobe@lists.linux.dev>; Sat,  6 Jan 2024 03:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dv2MD1Tq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7A10CC433C7
	for <ddprobe@lists.linux.dev>; Sat,  6 Jan 2024 03:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1704511096;
	bh=0BuVfkw6egMlReZd/VmxErLejAcD8rSRL9czQ++vJt8=;
	h=To:Subject:From:Date:From;
	b=dv2MD1TqW+WZqO6CGCZl+vbsqplyekJ+sLnQoqaKSaq1kLLg5zJg4zDeR9pOI3d3m
	 M15lBgpDppydHV84a5K7tzs6KBGBz8dX8EOeobLW0s0UmmPBGcHaCPjgEPeX8Q2h1M
	 bHiBDhr7q3zEnIQ3qpZnd8+gsIKGyPE26+7whv+lQUqb07v1pP0Cqw6chzlsboForX
	 UAu7GX6l/aiR9DFESLJzfkGsD0+0IwLUV1j4hBa1/VK8gMDpwyfh3m51ylcpD2IIYX
	 KeTwvNZofjvJjos17q4yCsK73pILKwzw1KXPteEobn3Y/1fsnpJ2nvCmRmcw0Ro9fN
	 BeeHEbN1Rp3iQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 60B7DC3DA6E
	for <ddprobe@lists.linux.dev>; Sat,  6 Jan 2024 03:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170451109636.22867.669650612031484.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 28e4fe9bb9b1a72a056049a2398656b104459c4d61f30d65484b3df6e05b9d42
Date: Sat, 06 Jan 2024 03:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1704511096
