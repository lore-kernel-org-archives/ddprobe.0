Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C2EDEC2
	for <ddprobe@lists.linux.dev>; Mon,  1 Jan 2024 04:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cgq//0WZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 93100C433C8
	for <ddprobe@lists.linux.dev>; Mon,  1 Jan 2024 04:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1704084496;
	bh=JJ873/7u03jS0AuPGMsHnKoE7p2imT2BkVxLo+czm0s=;
	h=To:Subject:From:Date:From;
	b=cgq//0WZiffbR3PBiUCrLbMCjShaHCFZbZtDgNGoMYPsJ2v+JRTpHLhEfOpJ5qpnh
	 0w0UZAhhIkC58dexhG2S+pVuTtT4Any6woSSmFYn9WRTAM943G7TSpzG50BG1gh/O0
	 EgVtnHuAcYica5yNmwOOAkzRD8HP1onf+COIU/DmcMS1CvRAGRwbbvdotG4fraemgh
	 CUXTVLzcXUFOi7yLosg58IdGvXCDmlkWHEC1XsoQ0NCOQswBZSTIzYV3kdHkzvkQ8x
	 zOQEz9X2ZjmUnkNuJXPdBmEZ5HgBbNLoE+CE7+5a435Inj3/ktnImiwVSKmrsCCbVi
	 jaAHHZoGrZ73g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6E1B5C46CD4
	for <ddprobe@lists.linux.dev>; Mon,  1 Jan 2024 04:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170408449640.32178.16078499106777130812.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8fae0025494f8810e88a9dbd178fd51ad629aa9c58b50182716e6f4c8ee65569
Date: Mon, 01 Jan 2024 04:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1704084496
