Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CD6788F65
	for <ddprobe@lists.linux.dev>; Sat, 22 Oct 2022 01:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 73F13C433D6
	for <ddprobe@lists.linux.dev>; Sat, 22 Oct 2022 01:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666401053;
	bh=Scmc1+E+rgH726fPtVEgwmBytR0Fe1RDoMwTH+K3o5Y=;
	h=To:Subject:From:Date:From;
	b=QmkcYr/H9kUoH0Ab6b663vI45UtNHbSSzzzV9UwyULktXy3T4MNUYeH++oBDGg/sA
	 64cjQSf02amnIifbs/8Ud4qhnTB2agFhJ57hhXmj12HylkO/mjT/zzEsiU+dkz7Cf4
	 Cl7+V2n3Pmq2NGqV91ogoxl8RCoYJZvhQPoTivlgiOTjZbPlhaoap8j+hfshdL4Vhw
	 2POGrmxg3YjpYhgDQcvWuDPOgVqIPD8KsNvaad+j1OKJVn0aBdKmUFwDI4CAADFw5q
	 D4k5W6ACGE35ZnF2RDCQLytE8mml4o1LqTREvL4Q6Q8UqYkxhtSss872OIAdjzGQ00
	 rNlsm5r46/NzQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 55ACEC433FE
	for <ddprobe@lists.linux.dev>; Sat, 22 Oct 2022 01:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166640105334.1909.5488591643586303005.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 35ca0b8010cba81880ab96de94a409448edde9e5e8a3d465979a9380882f5e47
Date: Sat, 22 Oct 2022 01:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666401053
