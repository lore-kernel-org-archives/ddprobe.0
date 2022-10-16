Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AB0017B
	for <ddprobe@lists.linux.dev>; Sun, 16 Oct 2022 00:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 66A40C433C1
	for <ddprobe@lists.linux.dev>; Sun, 16 Oct 2022 00:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665881453;
	bh=4rGNEjqJjPjT508zVfJ4XmG7Krl4d+l+HU8ic4ZrMQY=;
	h=To:Subject:From:Date:From;
	b=MaF87oJoBlKZvKyPmh72y85Njs4lUNwubnM+MbeNivMEdbl5vyoQvrH36KWQUThaz
	 yFlxGGjyjwLOCPIEb4J4MuEx+cghx0rGU2VLDXpC8325oJgcZ/bhWhMoJJAVK3K9yP
	 YaLYvLbP6mf7KjFjfPK4J2V4iHmEzBlaxC6LdPPpWAT8UF60nck++99gnMfgUr09pg
	 Kv+dolJPsrr6cVtg10mCtqNBPozWL1ln4gj4NxffGL136oTNcX/YITBQ3bscundwKa
	 yIm04yoRZrYy1rGSW/P7dKwEoYZ/NXUyWYbYvEDNmWoHWOlwcgqq5mzBMz2uyVyKZI
	 RNmLvHrAxwdcA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4F5D5C433FE
	for <ddprobe@lists.linux.dev>; Sun, 16 Oct 2022 00:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166588145331.12318.2315630478879848394.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 51290b869cd5f8a1c2de191d45932bb2a03fccbdfd5c067a9bf34ccae8f54add
Date: Sun, 16 Oct 2022 00:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665881453
