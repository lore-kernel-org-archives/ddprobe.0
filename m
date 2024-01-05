Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B8D3D36090
	for <ddprobe@lists.linux.dev>; Fri,  5 Jan 2024 20:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NnsT9xff"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8C9B3C433CA
	for <ddprobe@lists.linux.dev>; Fri,  5 Jan 2024 20:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1704486496;
	bh=DfwclGJTrMLdhBCnjn4OXBuC/BAUYzlNiAXEpw3p6HM=;
	h=To:Subject:From:Date:From;
	b=NnsT9xffT7kQSKekR15vqBkOKKEIoqi1ZVZ6spQavQhgwgmzycBnTgBGzq+WJu/7O
	 jqMOv1a2E+fgXM21LOqxbP4VgVU3NqU/k9AvgWaH3l5bZWZbubWvntglrnMxjhiRiT
	 ej1QASl6X7fpjsTbV7/uaGR3vV8CT40yRx8IPgXCWaOKzlH7Et/ZgYNkncCsUEOYkF
	 c05eN46bSaecXsWKXq1VFUM7htUZw2APs3OxmWLlfas97rvmNHSH1guGRBKxtu2XIM
	 rtWveH4+EDcBgO/GhmqGCHiQCOHg48syTQZPVZ4dNAS1OKC6uGY9LTdleXRo1Hp6u7
	 1jf/OqHGo0xrQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6E536C46CD2
	for <ddprobe@lists.linux.dev>; Fri,  5 Jan 2024 20:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170448649643.4359.3821258259036374239.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5a8fac773b63cca2514052320011f3961baf370e19209a40115f4a0ae163bcfe
Date: Fri, 05 Jan 2024 20:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1704486496
