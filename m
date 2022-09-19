Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A918D6AA2
	for <ddprobe@lists.linux.dev>; Mon, 19 Sep 2022 17:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6A987C433C1
	for <ddprobe@lists.linux.dev>; Mon, 19 Sep 2022 17:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663608653;
	bh=uSUlccgTcGOiybNAj5LoC2xCRYs2DLcVLydbd4DN+Tc=;
	h=To:Subject:From:Date:From;
	b=WpcbX7KgBlrO2u3p0k/6FMcrvsZ7iyaZ9mFHkVdAbgoNrHNqXBab9WulCX81x8X+a
	 KMFtk+rRdjTm4O4R9FzMzrEQFF63gLYSuBF1qQxTmjyHX1mkFk/UQISQydINGQC+I1
	 8uePmjDUdcDF7OeOi3gbgGfCD4Du3AiBSu1LdqDNKhfg6tGoIXvMcZp/C3gwPOxUHU
	 AuBhO660UUCfY2aHLBNlFMqmhS1nJZYNTBweDk9sdJuYk0KZVCOJ9COKXr1iVSp4hF
	 WwaVp+WIzMoZZcQ75s5Dek2pFwEjwV/BKS+aYDLBJddURk58BnzOXx+mrwr0Aqu75F
	 9X25c5dlobzTA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5502FECAAD3
	for <ddprobe@lists.linux.dev>; Mon, 19 Sep 2022 17:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166360865333.5404.3245074270468275258.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5d0d91b16353ac80c0213153f799cbbece1c296a7acdd1f0cb73141fae9be256
Date: Mon, 19 Sep 2022 17:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663608653
