Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4347E7C
	for <ddprobe@lists.linux.dev>; Mon, 20 Mar 2023 18:27:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 0249BC4339C
	for <ddprobe@lists.linux.dev>; Mon, 20 Mar 2023 18:27:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1679336826;
	bh=jjfM57XYC6aUtD3pEjyHm2uAfGS0UnUZe4Ic5ZzvBLI=;
	h=To:Subject:From:Date:From;
	b=lm1/5b+NZZBIgVI7/CtlYZsHNlM4zSS4wZm//N0ovor+L3wBFZxWSPJjbZGGxVg2i
	 vFXSDF5UjhB4fkuvFu2p5Z9agfarcf1tg95aiJW9I8NxrRhafakGIJ4KYrQueyxEU0
	 q2uqAXFZwfWMxQsKwFevzx+iA2PZ5YyZ7ng9kHW/xjr27ug/wpdZWL0Wc0DefUPYz+
	 0BRRmt/FVqLhUyPTlu6OnK6t2iZU/uajanWiXhf+PIRiAXedx01BppsCOn91O0USSe
	 i+ZqrlNMjV2e2zSZfvgQXj5fH/G1Nkx2VfjDTx804ogeZM4Vho8AYhaxoUuvAh/CP6
	 Pa8muVKbwsByA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D8D16C6FD1D
	for <ddprobe@lists.linux.dev>; Mon, 20 Mar 2023 18:27:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167933682587.16868.2831505669978252829.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 23981c800673f06c3991c5f22f41f45fa4f926b88e68d2864bd8a13eebecb064
Date: Mon, 20 Mar 2023 18:27:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1679336825
