Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F1D54A21
	for <ddprobe@lists.linux.dev>; Thu, 16 Nov 2023 02:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Yos5+ncG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7A6D7C433C7
	for <ddprobe@lists.linux.dev>; Thu, 16 Nov 2023 02:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1700102296;
	bh=eX3r5r1HDrPbnOMLV/rO5e812S3F7SUi+tot7tBttVA=;
	h=To:Subject:From:Date:From;
	b=Yos5+ncG64m9p3V2aOR2qcQvbmZpmZ9uTkkcpoYIgxp+4P4tDl+fnLPO6CGd92HHM
	 tM31o+AALSM+FspSmmh14pTJox5lpXtB5Mvf3uMFD8YTsBZzAYK0lRcK7dO6smaSbN
	 SZ+bmDsPpnj3lFlvKiwAOLdf3Zd4A7aw+m1wMt7nqH1KNTrBY3agf5GTZrRRYN+YbW
	 ByHA9j1IDsPKwfO4QotD2RwQRJymvUdXupODsFcZF6riaZalbRD4p1Lugvbs25q5KU
	 JSxEpFSUeKPC4Tkx8V4wn8kPqW/tks/m6qddzYXphl0p7YnUlUWuqto7clHUZ/GGAQ
	 S8XR2CW0ecOsA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5C756C072A2
	for <ddprobe@lists.linux.dev>; Thu, 16 Nov 2023 02:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170010229637.3692.2437972771236253755.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a8bf5dc375d5c6e5ccfdaa6c6beb6c0e87946717b0dda04b6f12e58baee210b8
Date: Thu, 16 Nov 2023 02:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1700102296
