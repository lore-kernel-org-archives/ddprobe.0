Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DB57F376
	for <ddprobe@lists.linux.dev>; Wed,  7 Dec 2022 02:20:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 817CEC433D6
	for <ddprobe@lists.linux.dev>; Wed,  7 Dec 2022 02:20:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670379654;
	bh=Tyc4j6ML1sjibd1X+9nj4jWxiPHWzFvzPxGB2CIfASE=;
	h=To:Subject:From:Date:From;
	b=tKn10DuRNK5RA5AFoKUUI+t0ynDmb7BF1gwU73kiKGUzuIMuVmvTgOjGOr5QZ1J93
	 0BGfRfZoV78XFMurt6F3lBAGayiZDx2/XqkCzpRT+MDkglEQzRCLPnefX5V3Vj+hEq
	 mBKE1bit//yP8oqsUg0oFpVsmwth9b78a2RncQgHdftkVovufJrFZa0B6w8Od/WfSY
	 uGNYdx9+e7X2zy2g0aCgoxSq8NVDFemrV2prg+H9ghsZknxBzxId1gyILfvqWV5snz
	 JYSsRd6owEkeRdvlLH5DbtMdWlYJMwX5M8JZdfxnHywkQLUrNUjNY5b099KHZSErBk
	 cyLUMgSNtbzIw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6B4F6C352A1
	for <ddprobe@lists.linux.dev>; Wed,  7 Dec 2022 02:20:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167037965443.12996.12672481165557043468.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5d4e406ae691ff248356ac4c6eb4e97f7658cc0a81dd8142751d6254b5f6837b
Date: Wed, 07 Dec 2022 02:20:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670379654
