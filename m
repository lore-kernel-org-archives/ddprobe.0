Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ECC8917CD
	for <ddprobe@lists.linux.dev>; Fri, 23 Dec 2022 12:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9672EC433D2
	for <ddprobe@lists.linux.dev>; Fri, 23 Dec 2022 12:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671797487;
	bh=nuziGkS+Y6FlHwPk2EBnAIsio5MmQgQDIT8xUTWx1Q4=;
	h=To:Subject:From:Date:From;
	b=EzbsunRyymwTBfYj18P8nkBl2ZT7MT7dkacEmJ+AkLCyLm09kyqw2/NP7P8YiHATx
	 uzic7HkXxpu3J5V3gF54TnpvgxmWd57RPSwPDPh8dUBK1f1inOBO7/HvEWjHvrMlok
	 JwTQUUI4aLC/9tm3923KiIob6vKT98FIxS2g1ZvpmbNBTwOuQWP99CGHZl1xbey3s+
	 1dkHjn6jRaYj2WTQ8pORT3X8ijxpy+o+EI5qSaVuSCItlUR4RTpmTxnofcwoQ19/1+
	 8uxmyYZl4VMghpG0m8zC2gb3BN/fYZJjAmobnjlSIETO8jsYyyH08fHCrpM4K0sJNq
	 FX0q9oN+UxO6A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 76625C4332F
	for <ddprobe@lists.linux.dev>; Fri, 23 Dec 2022 12:11:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167179748747.1231.551666492789520826.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 650139d815e880f487501057622c526d3685b018eb5c1e4a1e8a9ee55c9e65c8
Date: Fri, 23 Dec 2022 12:11:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671797487
