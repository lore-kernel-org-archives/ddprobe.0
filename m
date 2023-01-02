Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CADF92587
	for <ddprobe@lists.linux.dev>; Mon,  2 Jan 2023 10:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7B9F4C433EF
	for <ddprobe@lists.linux.dev>; Mon,  2 Jan 2023 10:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672656087;
	bh=+MzqYVEgfv90wEipiXArP/fx91E+WO4FTJmcFzIvyHk=;
	h=To:Subject:From:Date:From;
	b=UetGgnOqMKRnd69/MsrGWx2n25U03SnectVAxZ/ZNCEJvoT5RuYuc9ytC8WKOXg/y
	 nnudOF4mio5nicdmQX1JyrxAWxFetWfhhe19lneahiDgg68IgcRjogEcIlNFraR8MW
	 jCDDGgh9jrt/T4cyrJ9ihoDvFgLiSAB61j/AidBAN5S7sX/MBPRqWML3F5YrM2rwc/
	 J1fPxa6nhn/dLeCeLjpFh42wuPWZQVXJxyeWkLNtd19oenvhavQbCoViaXUJ4gAkzf
	 ChR39yCTT1m69wSt4c5Mz1qatV5yjpPsVkDNK1dsV2DwHGc2YceT2QwMzbNXOsITIf
	 QkOst0Xc14PZg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 62147C46467
	for <ddprobe@lists.linux.dev>; Mon,  2 Jan 2023 10:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167265608739.22815.11462613256682266133.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1663c112f1b6140050530a9a37168548a64e591b856a593abf16d2b6cfea86af
Date: Mon, 02 Jan 2023 10:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672656087
