Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F5C820B30
	for <ddprobe@lists.linux.dev>; Thu,  4 Jan 2024 11:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DRqdATOU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 960E9C433C8
	for <ddprobe@lists.linux.dev>; Thu,  4 Jan 2024 11:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1704368296;
	bh=fwjYPOzqVQawi3mRsMeoDCL/9inWNo2a1tM6YfDR6HE=;
	h=To:Subject:From:Date:From;
	b=DRqdATOUIrKgYPgavDAtrjSNBZydgPTcbzm36NUy0wCHBIog9JSqNcW/rI9JJyra3
	 1spwwLxqU8uWijZev9xWGQM9mSnkuXRQEXFdpMF8GfPJV1OuAWrdll9gVq3dcmAM6+
	 4XzhPPOO8scXMoCjd3K4pHC9xnrbZK6ZiU/Xeh5C2h/yPfQtf5cguEXedN7her3wkF
	 UcZVHfbo5mIe2dZ1zGR++nbEQ6vX5pO0I+o3uNWw1Hpv3bU9GSv6VM87Kp0bbEUdhi
	 Ak5cxnimmL/bb9SlWc03x9tIZa/esiH7UaSWvIxqTRzO6UtTDEYCuUuGaad7PYFigM
	 4ZPIqmiDew7uw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 701B0C47073
	for <ddprobe@lists.linux.dev>; Thu,  4 Jan 2024 11:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170436829644.9355.7088762271253100625.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8fc243560b5fbc293ed7c72f1da24efa58eae7c980f7d55a0c55ee476b06c046
Date: Thu, 04 Jan 2024 11:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1704368296
