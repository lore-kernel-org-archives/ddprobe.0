Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 07E0A2108
	for <ddprobe@lists.linux.dev>; Sat, 21 Oct 2023 19:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JHClgun/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 86719C433C8
	for <ddprobe@lists.linux.dev>; Sat, 21 Oct 2023 19:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1697916496;
	bh=wOACD7+/0s4UYnkCjWIVcgIA/KLz23yEay+glsQvKtE=;
	h=To:Subject:From:Date:From;
	b=JHClgun/NSnY0vTE3KRLmo+jX9bKPcq5DXMu75ak62XKqWmkDHnaFSyxY7ueMfWXF
	 x0lvTWAub00PiFztEN1d38HyOltpK7rVIO0BBc9zBR/4UmYhjMUg3JT+nQ4+4vL9sr
	 r5P4jETSnSUoUW4QrzKtLwLP8+UzMdW4+i/g43uBPqvO8SzdzQlBICQmSO1tLb5AB/
	 9z3rlfCLetF77SgJHwZBLcVYpg4IIOQvz6Nr2wba3F0gpRmPE7Ea4C5VYlKo9JfS3h
	 Uy7nbyV4PNV/J7y1Mvq+KIgZ7vgEW8WHgx/jtJ3b6gV5/X3l0B+Ihsz59fkPa+8DTl
	 +uPxAupswWC2A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 64CA1C001E0
	for <ddprobe@lists.linux.dev>; Sat, 21 Oct 2023 19:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169791649637.5837.10902828781264336913.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 16b83449861ca99f684d6364202d328ba65140cc14bdb7752409325e753558c7
Date: Sat, 21 Oct 2023 19:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1697916496
