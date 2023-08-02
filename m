Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 51942A21
	for <ddprobe@lists.linux.dev>; Wed,  2 Aug 2023 04:52:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C78B7C433C7
	for <ddprobe@lists.linux.dev>; Wed,  2 Aug 2023 04:52:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1690951928;
	bh=BvrDFgMU++JbvaJ03QTGTXmsx7NpCebsCRS/qnvf8uM=;
	h=To:Subject:From:Date:From;
	b=BboGjbWTsUxPfi6//eb1zauoENxgB5FuRYPmUoLuAio3B3ZNYj4pt5nHycb43QoHz
	 LrCNW/E0UAOhps2Dmk2KB3ESQ/aJFJXl3zQjvPifhtTdw1WFw0Npk3JDUAkJ1c8Zvg
	 Iq3RfSCCP8HtGj2nKiFkKHC855uCh09X6NgCIeK/+Z4fPEHg6lLhXwODiKrYqYsS42
	 NH4LizAM4mLTqgqE91dE8ZNOoeUW0bFSUdJHRjslKz/5WcSiTPqSDdz60ES19I6KkP
	 dUSKWE6+qLoRp7zch6wnLDwhm9daZFG5PSoJ44aPJvKBNwEvBu7XLdAcZ+NpqeLEL0
	 PofvGA3JmLwug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A7EE2C001DF
	for <ddprobe@lists.linux.dev>; Wed,  2 Aug 2023 04:52:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169095192868.32463.5006607563179442928.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6f8d958d0c0faec37219298dc1a7a6e8757d4858828f6e0c4a9421fd7a7c7711
Date: Wed, 02 Aug 2023 04:52:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1690951928
