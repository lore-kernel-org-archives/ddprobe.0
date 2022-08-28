Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BDD4A28E7
	for <ddprobe@lists.linux.dev>; Sun, 28 Aug 2022 10:10:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 66211C433D6
	for <ddprobe@lists.linux.dev>; Sun, 28 Aug 2022 10:10:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661681452;
	bh=Hj59xowV2R0I+V8I5UhZXsM4Nhd6v97ph2Z+NbhmAnM=;
	h=To:Subject:From:Date:From;
	b=u+bwXwWQrIEyaE7tnhKg6ZK19an++3Lu0MSJKDW+fsd9t9dgOjQSbpuTgvt7UefbN
	 nKn/bBYfkktf1gOtuiOOKF6jcPuPxitwMO2n/ngbMZBcNB485SsBWd7AmplxdSEbta
	 PZXj7zSAxXPUYxTZxY8PrStrT02mFCRvCEjdBBSoxCvQtOLCWhGJIPs4Ip+i6BR2t5
	 lxSqpIgrGsGSKrxNOdnCpXxXjozcVKCe0RkLxqddqQL4bruLXJRgNE1zkZYUzAFgcN
	 M8GX0x7tsnzs1p6b5hkf/EJ5on5IMEtSS15pdZ1AdZ1L/KTeGrQELUlmEApjXZIt5k
	 64lFrU12d81Tg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4EFD0C0502C
	for <ddprobe@lists.linux.dev>; Sun, 28 Aug 2022 10:10:52 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166168145231.18666.9151376909109915978.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 50bf7452c48fa0b6c25cea6380ed5a86041f556c31f5e4f2ff0fa1e3a5a6f2f7
Date: Sun, 28 Aug 2022 10:10:52 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661681452
