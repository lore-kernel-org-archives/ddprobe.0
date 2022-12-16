Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 019F828F3
	for <ddprobe@lists.linux.dev>; Fri, 16 Dec 2022 17:51:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 94385C433D2
	for <ddprobe@lists.linux.dev>; Fri, 16 Dec 2022 17:51:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671213087;
	bh=wEq1Q7DWgc2xzkFwhxhL22GD3oFsU9uxxnhxfitwqc0=;
	h=To:Subject:From:Date:From;
	b=LkzNL7v66JBceNsOyaILKkupkOJljeZynpsZwzQmHhARRrBEvrfEbvWEQwg87oTx+
	 ZizZ1JTctQNF6dwhEMyMzWA8OWkDaC5fmod7hC/iiALoPnxucLKyitLmNDMFTlTuJV
	 OqQ1T9pqGIbcwfXVMUOS1/iQMq41Ar4Tfej97g4VsLc97+rRJ3QCcdVtvnbcudecdJ
	 NoVPgGIE+2cZ7zg6PHYEWSws3PMLYtCHnzBXUKViyDfvy2pFBVaYnNehwIlkDGeQU5
	 dsVI7iyfdfKGM4p1YG6hmP0aPhWFzuz8F1gVqSJUDgKRPQ2s+Cdmbt5tNS4Vs5/a/p
	 EumuG5XsLH4lA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 77109C4332F
	for <ddprobe@lists.linux.dev>; Fri, 16 Dec 2022 17:51:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167121308747.27665.5633555832968586658.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 014932c155ff0ff19a762ce9be83392d1d3af91248b1847d865c3990b3476a07
Date: Fri, 16 Dec 2022 17:51:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671213087
