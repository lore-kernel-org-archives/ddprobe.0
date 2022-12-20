Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DA230EA1
	for <ddprobe@lists.linux.dev>; Tue, 20 Dec 2022 00:31:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7EF61C433EF
	for <ddprobe@lists.linux.dev>; Tue, 20 Dec 2022 00:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671496287;
	bh=mMKMx8EM4IiW4hNnAIO8i0xu/1SinILURFSuLNDbhWo=;
	h=To:Subject:From:Date:From;
	b=MFYXpOSRdeV0vkYvQh1ZJ4Wwvrj5dFEkRepd+J4VUCTevW4tveH62zvE9wT+v3FMY
	 UEidVj1YUOf/CJar8I+4x7hdYpP8UeB/q2I8ODUBfi5+Uq8SyybGq0c/H0RcLKDALV
	 WapMWnAYoR/mo6ZiLpgOJkDXLo20IBB+75hXALsxNrK+6sBV9sjglDeVQ6z0Fm8Eal
	 H8+eHL0rxBIQjCoFlBJhRh9/6hbLVUcmn2I9YHDBs86ZoxIr8alLJICekr6pLeDSwi
	 1QUEKQ8VvGfZzIL1wW2q0XqRBXkGskUvRUrLkT0XReCnQWYdnzAq5lbPUvvYiIy4IX
	 FHWMqXNF4BJ7Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 64558C4332F
	for <ddprobe@lists.linux.dev>; Tue, 20 Dec 2022 00:31:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167149628740.8550.4705961714093997665.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 235e3d2d9ee98a328ca84758a5120d51133efc82385e6177e024172b3a0cf8e9
Date: Tue, 20 Dec 2022 00:31:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671496287
