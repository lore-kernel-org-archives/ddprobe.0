Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DD3097E
	for <ddprobe@lists.linux.dev>; Sat, 31 Dec 2022 03:31:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7DFA9C433D2
	for <ddprobe@lists.linux.dev>; Sat, 31 Dec 2022 03:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672457487;
	bh=fpeFp6OF8+s5biLA95goK5oOleKeOwqryoAe8vRtrSU=;
	h=To:Subject:From:Date:From;
	b=bLOopNdd9E3JTbHPZ5uMr7gXQXMcgCjGy+ZOFhUa2VSZ1F3EMZ5pnXjbYYj8ZyR6o
	 Cao/RyEQqucHGofJEGUSCanjMSy0fEXd9a7T9ZAgWfps6mYYvU5m1njw8R4YqJAGdv
	 7wSSPBhoWZwgPjGlEmEtrR/GvAK47LRaNjvwNmnHZ6zr8mfbBfh8iVjJs/bT8PPGdq
	 PohE76GN1sElw9d0ksbbBq14VuBalrzTbrbxaLaR4wROPHASqG0TA8q77pDS92Dg1m
	 Ofxzl3LmzrMqFXjg07VK9V/76rdcZXKDzU9pEtYZvWI1FxhSEJq+3fDlS0qBkiPr8k
	 T5iPC4m6ggsnA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6507CC4332F
	for <ddprobe@lists.linux.dev>; Sat, 31 Dec 2022 03:31:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167245748740.12430.7722119145621526232.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 65b3c616d29e9c2e70be2e7d85e24955cf3eaf0e2ef9e154198813c7d0f95be4
Date: Sat, 31 Dec 2022 03:31:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672457487
