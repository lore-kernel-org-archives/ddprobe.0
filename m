Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C71CA33E2
	for <ddprobe@lists.linux.dev>; Tue,  8 Nov 2022 19:20:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7AB25C433C1
	for <ddprobe@lists.linux.dev>; Tue,  8 Nov 2022 19:20:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667935254;
	bh=RanCt27In60x12OIxQvJxmQF4v1xZCq4Nkkao4hgVgA=;
	h=To:Subject:From:Date:From;
	b=T2ZRn962vDEXXG6FU35ACq7LL9P/Lf/YyQBVymJ6L/M+bxknUVu8qu7iNzjgOrrGS
	 DgYNc1kjLmXk5pYpZUvaAhagR3y9YKG+UHIgaWyZPnuNMDP8M/xWKtYOOhokGSe+nt
	 6tMoo/HoeQ93ARMk8lJfe/4Dfd1i6RalSi8qXUoSI7m1ygqYwt19xX10m7A+FNA/Qh
	 DkSI6n57jsT37FCv3oVeiNUcHhZNlFjrJI/eBIuqsdc2/w8p7riyyHHq6Pi9dX8WPW
	 GfqjpwtOQHkl3S0//Y6zmiSm0KhwzwnVGMQvsFTfeVJvAXes+96lVSSON3B/rnY/9X
	 efGJ9TmhELwIw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5657AC433FE
	for <ddprobe@lists.linux.dev>; Tue,  8 Nov 2022 19:20:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166793525434.25866.4455758705903428939.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 214a378e68977d06303906eef440391c656dfbca143361f80e2d1ede20693fe4
Date: Tue, 08 Nov 2022 19:20:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667935254
