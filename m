Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CDFEE5CB9
	for <ddprobe@lists.linux.dev>; Sun,  4 Dec 2022 19:20:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 736D0C433C1
	for <ddprobe@lists.linux.dev>; Sun,  4 Dec 2022 19:20:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670181654;
	bh=3SwHyMmLRqo+LQrK+qmofOx5TmTTG/EMTxHDpA7o7N8=;
	h=To:Subject:From:Date:From;
	b=EpiYB+SPSu5roqaUQWpSPoCmuSviJEjizVldrWEaSbTX/ShGYrZeipVzQfCfIYah/
	 dCAdLCafapPKJbgzS2lN7QTTb9WODSemebs9yYDH8V8wxIKEO78sXr0s/3VCwuii7Q
	 qcIjHXMfNlFXarme7tx9TktIOTxIkecHZyPqaK7hXHTHa68G9hS06emVMv7/ovWZWG
	 NYjl+OCVLZ4e/n4BeKG7bpB9CGzQIc7gVjfpHju9yxZk4k+GdGv8lo9BFbQOA17JJb
	 6kyammZR+JucqhNTMFHh2pEZ10LMVUVTlh0CnnpheZURwlXRuqwgDr5ZwRa+ikbPfn
	 Yqz/ZYzEhIGFQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 56B37C4321E
	for <ddprobe@lists.linux.dev>; Sun,  4 Dec 2022 19:20:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167018165434.3039.1414691991686797334.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 68f085758c503c7a8a6bf2b7817265c5f5bd8dc103f70cf460b62c4b77932eaa
Date: Sun, 04 Dec 2022 19:20:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670181654
