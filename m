Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D6BE31FD2
	for <ddprobe@lists.linux.dev>; Wed, 21 Dec 2022 10:21:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7FD8FC433D2
	for <ddprobe@lists.linux.dev>; Wed, 21 Dec 2022 10:21:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671618087;
	bh=/a7S9JuwJD+T49Zlc/AnmaGL68A3iZ87Xc2r9YPFHKI=;
	h=To:Subject:From:Date:From;
	b=WjAMFsw4AU5Q+3mIWLsoZSFVR3QntH0NFY8YnfclMS88npjVRN9i+8ZktYe+pqQUD
	 VSOKwA4U2UPe8/iWAz/KUU7W1Y/ZR9jX5sOQzuygIdNATifQineoB0dsDkegm1OOAs
	 CU1kdqou6p4W1klXOagT30VGWDKxQf7hyPSJIkOGft+3lpRCD6O/27ty4ZKg9TNh/q
	 hc+sH9jo6ws9kRq58RUiOeMDULcGWG0Uwlb562J5fQUHe9uobAH8hvCFRmYYLG+GJ0
	 /1sy2UWuuwd06DndpPDhtHFPSNplYcyZci7R8+utnEFKgE6YmHM6LjttOGWbuqUKwO
	 ofsjJKQVKai9w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 66621C4332F
	for <ddprobe@lists.linux.dev>; Wed, 21 Dec 2022 10:21:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167161808741.21318.4993741134462638927.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e6cc5be52cfeb4fc73fafbb59b441b744c6cd8804bb46d05d73e3426b124e26a
Date: Wed, 21 Dec 2022 10:21:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671618087
