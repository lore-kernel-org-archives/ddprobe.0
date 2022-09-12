Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CA1DC5C82
	for <ddprobe@lists.linux.dev>; Mon, 12 Sep 2022 21:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7155FC433C1
	for <ddprobe@lists.linux.dev>; Mon, 12 Sep 2022 21:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663018853;
	bh=1rhyby6Ongcpe6+Alk7hYL61ksvD0c8FMAYsYMCfcZ4=;
	h=To:Subject:From:Date:From;
	b=kYDTYG3hjIIbd7D41OFlFNEkD/4QEM8g94FmiyaeZpLHGcuxwO+A0xI6Xnc8BWq2j
	 AiQNdFd+/NSpbUqtjTS7qp8SxUxczDbGRTa3hwG76Y5a225LDfInZERoG+o+3G6/qU
	 //eRCv7i7d/Jefqai1yazB9CCIz7V116EBEEVuvXi7x9wt3TqsDEfo0B/NIAs54WfL
	 Nz2PC43MrrySAPXMkR44j3Mir4qEYehbfZJ7pnOMADHLwRHw9IZ9IJqzgPczj74LQv
	 Biq24dJtIPtxnIjxNLeDG4g3b35puK1bipLt3+UUANaxJlakTuB+05rDIzmNHFyw06
	 LRuVGalvIug8g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 536D1C6FA83
	for <ddprobe@lists.linux.dev>; Mon, 12 Sep 2022 21:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166301885333.10464.2344583197012787237.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1a7dd53891a66da4521b13d34bff56daf422e6a0ec5fc8e9a0e4916ef3f1aa26
Date: Mon, 12 Sep 2022 21:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663018853
