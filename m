Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4AF331FA8
	for <ddprobe@lists.linux.dev>; Mon, 14 Aug 2023 04:13:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA997C433C7
	for <ddprobe@lists.linux.dev>; Mon, 14 Aug 2023 04:13:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1691986388;
	bh=hu3NfOGvuBw3KMuIGff1A2TJYG0q6avew0iqQk5CvnU=;
	h=To:Subject:From:Date:From;
	b=i7jgle+ApPXVZ+7w2Bf4647XMmJiRkbO3cfIGtrz6v+uhGrMFzZ/Ajv0K/Fr5sOgt
	 KAkpcZPlQWb8hXJKs8Wz9rNGT4Nrhv8tRJ5LzCgKG9nA3fBIBy7lY65ixd+yaFCPOu
	 cVITYFdJxWrsZ/fN43EriAcWpC87IebwVcq8ap+iC4ciIv8mycyw3qaSgRdLSd3mUg
	 yHl2bl+6fTcs+Q4j7/5iZj473e6Rm6JIaNdLRW64NJcaDD2Av3jYtBA4aTsHM6m3UN
	 7vSSRmmzOSfJyRh2/6cVDkqY5jhnCC3H3VOS4DznDWyzgGL7LOo0sfW3W38BSwGhw/
	 15Wc/mQVlZJDQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A6A83C001DB
	for <ddprobe@lists.linux.dev>; Mon, 14 Aug 2023 04:13:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169198638866.6693.9379037640363875454.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f6a3398c62c57c9170a15d7a6d7a420d6ea34e472f8b7ae74bc6b73abdb097f4
Date: Mon, 14 Aug 2023 04:13:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1691986388
