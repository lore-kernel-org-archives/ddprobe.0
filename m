Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CD3353C30
	for <ddprobe@lists.linux.dev>; Tue, 13 Sep 2022 16:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 68826C433C1
	for <ddprobe@lists.linux.dev>; Tue, 13 Sep 2022 16:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663087253;
	bh=ecYXXpOWCE22lGnbcEPzAvmBFJDm3ejlNygOLPNYiUg=;
	h=To:Subject:From:Date:From;
	b=VQ6oh7GLQbFSEzYwjjpUVDHMZ+/ueW1lyaOimIlkx2DkEPgBtdV6QEo4dmMGK2B6b
	 tRlDS/E58c3sdict7Jjoqzky9nulKdilMK8nUXvqsEliEKvDvKwA8bsnsgBVXNFDD+
	 iasA3nDWiw0mjbsU96f3FJJXZvZ0WmeJMN+/qBvRC03U5UBZPdKakGqDmGTi0bbi7o
	 JhNVsLxKsnU37Z3y/hPIv2tWBLx1erhIxRWi4Bh95jMGao9qp2AHPVSqCE9SBZ7NK1
	 JjC5S0JP8At6n0ZbxUmu/hD22OQ49eGZ5G12+vQ+Qb7RxhILBuSgGW1aMWKuFRj725
	 3yMZpLI5JSLSA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 50B8CECAAD8
	for <ddprobe@lists.linux.dev>; Tue, 13 Sep 2022 16:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166308725332.24649.7190967975046462155.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6811cfc7597aef4e1917dbdc2322565b13ae4f187beacab1e5c0880943bfd060
Date: Tue, 13 Sep 2022 16:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663087253
