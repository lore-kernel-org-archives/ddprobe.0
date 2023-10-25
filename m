Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C10C18B08
	for <ddprobe@lists.linux.dev>; Wed, 25 Oct 2023 14:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="o99b9nFl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 83E9CC433C8
	for <ddprobe@lists.linux.dev>; Wed, 25 Oct 2023 14:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1698243496;
	bh=O7vMTyQrOK7J/YwUw9PgTAGCWVjTjo1wgUYi0YzBn04=;
	h=To:Subject:From:Date:From;
	b=o99b9nFlHWblWnLrVsftBPZFHuYwSFdwdH7r2FDCzyXPAvEQIQAGJjzg0bcjdk0GP
	 OjzcWrlukiuV/Cpc3BZLlxCQQ6f+yARv5QGten8P9J193wKk4rNRNjmC2lvejhiwuG
	 poxewvUxgwYVB3CCErCrPowYXgzYCDISagcGwxZcat7BkycrlQ9+MMXDDMVTni+DGO
	 v7CG/3Cu00nIt95rMBeegKZewTsUwIYZ3OaWtJ5+k7NDg+3ZXFPUwtO6WZrHBL2CJO
	 FEfaHoke+dcJ9r9cnXdeywt9wXZiC/Y44uyHzWqBKnCRLyyBxgc2y1nOEWP37TpDHf
	 k00fVGeChZyCQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6A09EC07545
	for <ddprobe@lists.linux.dev>; Wed, 25 Oct 2023 14:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169824349642.11529.14111594012215370402.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 77cb4ac826096134b27825458c4538ad81d44a5c77d75da0ee53d8e3ab3e869b
Date: Wed, 25 Oct 2023 14:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1698243496
