Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E93162CCDF
	for <ddprobe@lists.linux.dev>; Sat, 25 Nov 2023 17:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lCRF/8Ke"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 79F40C433CA
	for <ddprobe@lists.linux.dev>; Sat, 25 Nov 2023 17:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1700933896;
	bh=UoBGxbA1NU0/Ap7mzewb5AT9emuICltCMRJ+Ko+tvb8=;
	h=To:Subject:From:Date:From;
	b=lCRF/8Kew6U/Ee5nfzpgrwpWzGbSGmsxLwy9FY283tLQ9JCrT2y9/xHNAx3Jv5qvA
	 XhA5gGA8tbWzUmqR87oUoCSVQyobBfrsT52j+nI+81u7ZJUGZxK5CewbPPvyssGnKx
	 Ktu1XzMreKefRlIwrXowR1/xrVYu13o5ZN2QUsQeW8QC0L/zyn8b6OjbMDOA+e80T9
	 ufpDaIwm+v6908NVY7F9uaw447b3GtCu/aJnbFvpONbZ1ZPC5Cu0d/zj/x9e1lzJvr
	 ocGYl9PAXEHnqOJB7H9lxFH3mEWyLaxBheLon0Pm3LeuMqBS681Gw28LQ9JPGVZUs6
	 8AIaUxZV51khw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5C63DC07D59
	for <ddprobe@lists.linux.dev>; Sat, 25 Nov 2023 17:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170093389636.31809.9307352790602866976.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ee11fb2ccf746c88e820ccadd7cce530a0f86609d72093e8ed00a19bfb964475
Date: Sat, 25 Nov 2023 17:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1700933896
