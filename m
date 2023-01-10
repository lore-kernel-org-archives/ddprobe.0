Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E8F452908
	for <ddprobe@lists.linux.dev>; Tue, 10 Jan 2023 21:21:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 801FEC433EF
	for <ddprobe@lists.linux.dev>; Tue, 10 Jan 2023 21:21:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673385687;
	bh=+w/R3u8nam1F6vBHRq21GOjvS83OVnjG2mYMXiZI6Jg=;
	h=To:Subject:From:Date:From;
	b=WGifFggFjfpuJGn+VXjfbSuUZFDwMnQeC1hqt4e7Rb8FytdbaVlG3Ll4bNyd0raZ1
	 Cfs6gtKOIPMUi5YMFWBFZtn2o2gfQZcbGbg6tH7a2pEWw3hhPpzWjHoJr/nf9xT1Zx
	 uekf9+YFBHjuteR6SktRopgLcbSY/+t41tmnF4gTZZ2wd9s6Zb0lRcPD4KAbtG/FzW
	 idWTidtaMgNlkunBO1aWTGCYIxX5AJjvyskm+yDPmXL8RQZsdzG/pt/Q74y8e7UjN5
	 +nI79AR51QgMySmj26m/ap2hPFZZMBQFZHEXR2+FX0sjEVvKveN4shaLoYlcupV60P
	 WdkQOiHLqHZgg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 690D7C54EBC
	for <ddprobe@lists.linux.dev>; Tue, 10 Jan 2023 21:21:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167338568742.23755.10171312701678389357.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c20dfaa79786ccf9ecf47a88044ab425d812b23aed87c2f158ddaf032e60f9dc
Date: Tue, 10 Jan 2023 21:21:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673385687
