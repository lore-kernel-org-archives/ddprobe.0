Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CB24B7ED
	for <ddprobe@lists.linux.dev>; Tue, 27 Dec 2022 03:51:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7CFCCC433EF
	for <ddprobe@lists.linux.dev>; Tue, 27 Dec 2022 03:51:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672113087;
	bh=xmvLF/LDQs12W59kZU7/KsOZlSypow2leply8qw3Vec=;
	h=To:Subject:From:Date:From;
	b=u6Gavp6U+wSpveiXBce9FeMOpaxv8uB1aF3bJtjQHVIjhFuZXEXMk+h4quPg+OsKd
	 b7whJJ52tlZOugFQ1hheiyliTVUOhrj6tEjABVVsJrBGv3Q0sFkYxh5s1cE4N8ofPh
	 skTSXpzMZo1838IKWytaAt92ihfvdevUOl2XlticeTYJqq1ms8YufeZ2Iz25DWcW0D
	 ZMdSeJhH8l3Dywtgdsrx63wqq2z1HKW/2C/GE8FAF7DkAbIHs1VCKeLSBUOBbE3lBF
	 eEOUPg7YPnrlx8wzfNqiDVkGt++XMGs6TdqIRdMOUjKWQQTxU1iMon5xVa6+cEyqSq
	 IDHO3SPy1Qcdg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 63058C4332F
	for <ddprobe@lists.linux.dev>; Tue, 27 Dec 2022 03:51:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167211308739.2260.9134398826465336318.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3fa153820dc798a1f7414f1ba600a066f72d856999cc075d2413db8762f1fc3f
Date: Tue, 27 Dec 2022 03:51:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672113087
