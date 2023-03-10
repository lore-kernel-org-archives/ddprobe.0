Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 419D48489
	for <ddprobe@lists.linux.dev>; Fri, 10 Mar 2023 14:15:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 06848C433EF
	for <ddprobe@lists.linux.dev>; Fri, 10 Mar 2023 14:15:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1678457706;
	bh=7heU/ZSkPIC1GC8S6CAo6SQ/QW1cBBPRmz7x7jkJ5qI=;
	h=To:Subject:From:Date:From;
	b=lQJigBLLoTKZ9iDx1Pi67Qt+7MNrQ1MpvU5j7zJ6tU3zp6ZOUqqm8gsXA+6jzZZPJ
	 2tI1F0Zd+6NOishNhWrOdgHJTbUgKv8mawCvYhOY5i+hbweUQ5cfcnpQ7BsvDjQUUD
	 rpKpv+KxSLa9+AxfCCd33/g/T41LyymptDehlBEvTb8O95wMnkLhfql0C/PqU/WCdF
	 3ZiGxySEtO2aGzTkKO18xreUEvJM+K/qs9srRiou9LrDaLohRsyqXxW0uYOrB/753A
	 AvpFyUfV2I5+jKCGfLOW5EbO6k1dgSvpkJpwBlecR2Aa45HruCpTJk+xNchww2cfRx
	 Om+7avQ8UCU5Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DB0DFC6FD1F
	for <ddprobe@lists.linux.dev>; Fri, 10 Mar 2023 14:15:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167845770587.29586.14825558339989865762.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 98596b837bf8203e2cc0d81e3d95f6b3157b1adc489737ece328d264f9aba58c
Date: Fri, 10 Mar 2023 14:15:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1678457705
