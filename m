Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 241B3A35
	for <ddprobe@lists.linux.dev>; Wed,  1 Nov 2023 01:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="e2N7n+od"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 89D23C433C8
	for <ddprobe@lists.linux.dev>; Wed,  1 Nov 2023 01:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1698803896;
	bh=8VTJxVHN8B93FWRbT0NgNx5y5fasBgUwPU+nb5AUYj0=;
	h=To:Subject:From:Date:From;
	b=e2N7n+odoSH6wyIGipk2h3v7IRp/REJmFRfYDm9yk05FTXcO/ufFyVjzLAvTYQ3tU
	 GoOJD/hl5nSbnA9DfzW3csWHN1BWw22hK0IygVcrk0A6R6itNhZStd7QV8wbmqefDM
	 aQC+pPYhNNmpuSRicVMCSQ5CXT83Byw/C9tQYfBRgjlH4AOmcp2mNuEbB/BEwF7LKz
	 TCBCqE22YiIXkn8uwDhbdKGD82WwwqQoWnKFe1649Gv9jNBOVwXxxR1Qs9yhc4IQQB
	 LywqLJvE/V58ayWHCf9a4s3mr2PJSTrC3+2etV7OnlBFxunNXqgdi3oK2KRQZqe890
	 +s7vl7NVwlcXw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6C1A5C4332F
	for <ddprobe@lists.linux.dev>; Wed,  1 Nov 2023 01:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169880389643.24061.5017326820769271377.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b1d5ef1884c42d1df1f2ae7c8e1e2ea90abaf839b487b138d5b0b69fc0d022b7
Date: Wed, 01 Nov 2023 01:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1698803896
