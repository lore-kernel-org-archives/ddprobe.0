Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3DEDF1381
	for <ddprobe@lists.linux.dev>; Wed, 25 Jan 2023 08:13:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA72BC433EF
	for <ddprobe@lists.linux.dev>; Wed, 25 Jan 2023 08:13:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674634385;
	bh=Niqqqyqmeyjr1o/+Of9yED7bjKO1Dp0QjCCobCCpM9E=;
	h=To:Subject:From:Date:From;
	b=q0qqxbskMZzsqJR5z1lpVc7FaOwVaSXAQ6Wkwk2fI5Y10OVBXExtBkscOixQor5d0
	 ojBB4iOez7+Hqvr72VNeJ7o+2A6a+7P7dQtwQrHM+lMMgRDXmVUtOGmDUgVUAyyQwd
	 f3+3VgaTpm7cNGtejdyAKpU3Z6uq+D4+58h/Pr6QQ3y2ZNbLP4xEAuLM/6itBmGA/T
	 grRtimRogqTR5YsOCR9g64xrv+Arv5LE4UkHkra7izCXpjvh4oE03RZjFSGlnqGJAP
	 3ps2HqMgzDzaQcB+Eu8yW0orzho6lAHDdL6CzS/z/zlmEJzljX8u+YsU30PoMQHAju
	 DiBOr+lzcN/Ow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B51D1C54E94
	for <ddprobe@lists.linux.dev>; Wed, 25 Jan 2023 08:13:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167463438573.32358.16919553036121106443.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 28ff36c2b3fddf0946da88609a804e32518df4f9adcc0d6cf1cf3368a37cfb78
Date: Wed, 25 Jan 2023 08:13:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674634385
