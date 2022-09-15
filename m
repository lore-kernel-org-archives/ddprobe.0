Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C1C4218F
	for <ddprobe@lists.linux.dev>; Thu, 15 Sep 2022 16:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6BEEEC433C1
	for <ddprobe@lists.linux.dev>; Thu, 15 Sep 2022 16:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663260053;
	bh=XmspBmDabNHFOalRERw7WDTH5WBrITJzIZQeVAJdsNk=;
	h=To:Subject:From:Date:From;
	b=EGgVyFWWF16UJAkm7xgi92D3WN2Qhj2p9+R3gwOpzHpE0RfHFoZNv6NNIZ1NW6SD2
	 AZnl1okus/orv0Fv+I8r8b+hkyzO2KBEAMDnN7h/F4JB6fUYH5Zb8EmiUg/YVgMl75
	 bG8b99A2Tvtm/pbbfJ4yQU6fEs74F9kANMADndGdfLORPquHv+c76NaodH5wCJ9jRX
	 EJEu/DiR3x4bh5fI0/F8tS/+Uz1thHh6N3C1mRRQMRQxNm7V/JJMTIdYqB3DEoEAzg
	 FqkjyKVJ4ac11IwCMKs042SlXz6z+hSlQ+TNaQe32vG2iyqI3IgD5uFH3jWEIHNwSr
	 dn+nCMBpMc26A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4FC46ECAAA1
	for <ddprobe@lists.linux.dev>; Thu, 15 Sep 2022 16:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166326005331.13929.12794402613980419190.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4386e572e31cedc68da40c286f6becd03b5f58e1755157857e76a203251bc742
Date: Thu, 15 Sep 2022 16:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663260053
