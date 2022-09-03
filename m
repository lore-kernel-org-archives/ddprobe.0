Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BCFBD1363
	for <ddprobe@lists.linux.dev>; Sat,  3 Sep 2022 01:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6FD5EC433D6
	for <ddprobe@lists.linux.dev>; Sat,  3 Sep 2022 01:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662166853;
	bh=BgPRVNZbBlWNxLpTtF0EXP/6nS3vcYmcDs3F29wUcQ4=;
	h=To:Subject:From:Date:From;
	b=BEWrPRJLlShgLlwPL6vZvpGnvR8534Yo3j9n6/9F3RouDJ+N7GM7rklidpxQtABpY
	 BJ4qlRJ8DtVcfDKrEFirs6K3QShk1cjDz46kvpFPCn3V1dhQhQB9EBJ9Vb9W4KRG96
	 QfJzAuc+P82Wi9fhf+DITtFAqyduEEtBtnarQ0t91xVr63tuFbt8fvAStKTHI/f5Sd
	 ETME+acvi5n/HtoGhxlZ8xH4H7/gPWZit4070Bja7tD1YnxV/sIVZULeOHPFxQgW3A
	 nEvIcdmoahTVYmAvCwCk2deHl0pDwL3Nf6IbrkGdZJFFTCbw+rmBW6h2subFYWIlAx
	 WABDZfgm76fAQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 547D8ECAAA1
	for <ddprobe@lists.linux.dev>; Sat,  3 Sep 2022 01:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166216685331.3764.3959668092343366853.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0b84c4893bcdcf10ca78859ad710c4ef3679904729c8161696046b8a404d3bbb
Date: Sat, 03 Sep 2022 01:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662166853
