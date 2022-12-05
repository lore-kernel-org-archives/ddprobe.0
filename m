Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BA7E823CC
	for <ddprobe@lists.linux.dev>; Mon,  5 Dec 2022 12:00:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 75A15C433D7
	for <ddprobe@lists.linux.dev>; Mon,  5 Dec 2022 12:00:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670241654;
	bh=cxhEwgs2zRklvuHQjRrrXJyYbCIA/TqzCmxO57QNOhE=;
	h=To:Subject:From:Date:From;
	b=WEiZcZklDoS6Dk4lp/eGmXLFOqYPNE1f7Kh3SSUlCefyQM4QLVZzK7X7gaROz9qCZ
	 7ZpbmpZB/XcgteDFLsDgWrrT9x1O41+sjM9xvbBKPxMTnuMjWNXWxNg4RUWVxwgbmq
	 epOhw+nlpRydgRo6/bCRnnsZcM7hPH3eRu9D/AWK1J0XqPmU+1zikGVCNxi6H8nDqX
	 mtWaNaLvCxABJkKiO6mFwJRm3srfNvUB9kpkh1UCLEaJPfqKwM03/NgWahXqu8lbCy
	 sKfmW475TsbkAgRRzgdOjmXIESBF4dMKrvD+MfRIfX0uumCc6Ib7sEBmYWccmazEMN
	 KqD0WXpoSD4gQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 560FCC4321E
	for <ddprobe@lists.linux.dev>; Mon,  5 Dec 2022 12:00:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167024165434.21429.14800216143016699264.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 156766e3dcb4fe12c225f9fa01c5f7254e5d41e6b274aa66fc015077e434c885
Date: Mon, 05 Dec 2022 12:00:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670241654
