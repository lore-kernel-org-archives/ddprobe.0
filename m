Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E45ED1374
	for <ddprobe@lists.linux.dev>; Sat, 10 Dec 2022 14:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9375CC433D2
	for <ddprobe@lists.linux.dev>; Sat, 10 Dec 2022 14:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670681487;
	bh=NQgxqu7Xtej1gaDup6yDZK8DeNHAr72MShWr5nb8LoI=;
	h=To:Subject:From:Date:From;
	b=IRbvC5ttNsEp3sbbIO93icvVe9F2ek0TqUFfP386zsoG8/tUEurVz4DZSU502BdKo
	 tlVJAhvaGSOafdjIhcVUVpOrIj+ga+9u0oBK18f7Vj5Z/9t3GVonD1DgINZpznrkco
	 viK0mc5Jv2s/Y7UxaZDz9YSXVxkYzOpoQ77JfG8/vtWmws5qdvyBqhOzgwmH4m2J9h
	 R9+JOxz4So1RRyMuByKhConDLjhCwkSW6z/Yb50lO37AXfMdbh13P7iwv/FjFWaI5F
	 egVWAY5Y/P5eCKDOuWCXRWwadQFMM0A7iAF061vtFlQwSafXQrrdv2MsuyZpZy2dLk
	 zf4upDwk302IA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6EBD9C4332F
	for <ddprobe@lists.linux.dev>; Sat, 10 Dec 2022 14:11:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167068148743.23294.12755414446173786960.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 10b4957d3ad9ab9ce5036991bb7d507ce6b5f4946b2c2d7f8a33b390279b7b7e
Date: Sat, 10 Dec 2022 14:11:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670681487
