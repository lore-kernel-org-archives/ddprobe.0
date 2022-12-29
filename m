Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E5318A47
	for <ddprobe@lists.linux.dev>; Thu, 29 Dec 2022 01:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9561DC433EF
	for <ddprobe@lists.linux.dev>; Thu, 29 Dec 2022 01:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672275687;
	bh=seer1dXnaOtuTrhKrr1n+NfogFhYSgl8dnwSkqkMBR8=;
	h=To:Subject:From:Date:From;
	b=DIQStAtNmdLmdjCRu8uYmLH9uXdt7kQ7rKIR1TYrJVqYKDghxmRLR0KmfM5ClEARL
	 HfpSY/50JKxE8pUx1b5I2KFospHtPVHeuhlOqHrLyOJuusLRG3jfobnl1HvSbLukJV
	 81Zfs/PGKRWLyUEjbDDwpprr5kezuU8KeFCifxMxZwyfpSDLqVBZ15zDbGJ9/HvkJN
	 1GcfgQYtuPGuv0GLt5MPMNWPZYHyk599WOTux65dTXA6a77Nj38PF7VF8anbwHzp4/
	 T71j+RivcHYyPbtq5G/fB9pxiNwHEwsKd2EUT4eNFg7B4XmtdlnjX0a72AhXVirrQ+
	 GfiVT07uxa/Xg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 763DBC4332F
	for <ddprobe@lists.linux.dev>; Thu, 29 Dec 2022 01:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167227568747.21134.7719008912442847392.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dd7391d3f1c046268450ddfccc4ee66d745963b4a91202e5be229022bfce61e3
Date: Thu, 29 Dec 2022 01:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672275687
