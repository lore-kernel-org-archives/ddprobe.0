Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 081BB11199
	for <ddprobe@lists.linux.dev>; Fri, 29 Dec 2023 12:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oWY8i4cS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 86E52C433C8
	for <ddprobe@lists.linux.dev>; Fri, 29 Dec 2023 12:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1703852896;
	bh=WnUv5RoMM8WqTE3paCoqjPEtPZZSoA0W7LbpSj1ZKgA=;
	h=To:Subject:From:Date:From;
	b=oWY8i4cShNDQDP82sGpdUq1tUFy3kS6qnlLBk+GRLkFW4mHnwY2/7pUxEWubq6n9a
	 tFxcI6Xh8Ehm4OgrSF/GfN5TDOVPZLcwTQkYPJVPnUE2fUd67ubeUxxzQZ3Ilc11bW
	 a8f11L6NMY0j2VrDw14K6ack62zlU0OSGqua+dxTD4NNcH9dsxG6SCz1aNI4v+Qdiv
	 WYvXZBc59UFrALiPT97w7g511+f3v6BDKmyNJyJOloI4MvL3lAhILg4Mf62+NZ9uY6
	 opbnhGz3bH7k/zVC5GRQDIglstKPMbRsCFgKzhk27ZBX3NTfEQF9TRnJEH3nJOys36
	 YLX709kM9e+LA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 65227C46CD4
	for <ddprobe@lists.linux.dev>; Fri, 29 Dec 2023 12:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170385289639.12335.5667371018052451436.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eed88da965c295803d1b0e334f91075c31d45f31ac59e2f8163559e92c672d27
Date: Fri, 29 Dec 2023 12:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1703852896
