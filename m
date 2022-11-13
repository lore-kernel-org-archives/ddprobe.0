Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CCC1A7472
	for <ddprobe@lists.linux.dev>; Sun, 13 Nov 2022 23:10:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 73823C433C1
	for <ddprobe@lists.linux.dev>; Sun, 13 Nov 2022 23:10:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668381054;
	bh=2KzdqiKf2hBB7wXVGEx7kFjoydCsox6NtjYQII6qjgA=;
	h=To:Subject:From:Date:From;
	b=HG6G3ze40FvWLufFrF+pLHXek2I73PxDbGGMhJdilAL0Jy8bE5VmRaIqwkAWDG8rU
	 mWkgPH7EM5dQp8bq7oNwGuhoclPIRpSWw8YTZUnvnjFSoEQ6/HqyDuo2gGCB41Ei9e
	 67HkuMiPiSs3aOTgQ5YInQPZnogUk6SerpccpB9ABRN1oXIEOC8peojOWACQJy1TXM
	 myOP0+0FkerIyLbGog3s8oty1ly+X985yVzjjuVuwv/WyhF6NArV8RT1ejfiN61Is8
	 ZarKT6f+5AEq3QrrVm7Woy97GuhfgI7EtF8UE83/eyb+HrsXUTexH0fka9Hji+UqRp
	 7V+LMZgtBRhxA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 563ACC4332F
	for <ddprobe@lists.linux.dev>; Sun, 13 Nov 2022 23:10:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166838105433.2061.16141676938493521977.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7ce93034220c8a7bbbcad471ab03705af8fd597809944df1f083689e1354b850
Date: Sun, 13 Nov 2022 23:10:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668381054
