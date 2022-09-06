Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BF520671A
	for <ddprobe@lists.linux.dev>; Tue,  6 Sep 2022 21:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 76DEDC433D6
	for <ddprobe@lists.linux.dev>; Tue,  6 Sep 2022 21:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662499853;
	bh=q8bd309AR0rnHn1PZSrxEs6xXvpG2aMMXse3BAYP3PY=;
	h=To:Subject:From:Date:From;
	b=o/a9a8zSJT5NYQDVDk2zbDCIapgOgaUn5tp+NOAJUVuguZV9cnzHDB9Wk+aK2sfEK
	 K3mBbiB7riExZDans7zc7LtaO+HANGSIMssotCB/79i6VvKpiVhq+R39NBR1mGnvAg
	 dfEEUQwJfcM0I4Zv3sT7jn/ztBIdCakMpt0jQgr8xcgkpk5PJsL9c5aiHz6QdFzXZX
	 B4yjtapDOxS7VzG1Ap5iS2NGjLBPNMo2nY6Ly92udYfevYEmag0fzWBSB4A7fY9H8t
	 hoX5uCN/N+G2lcZsZ1wYOJZkSX76UAuqzg5euucMBigbMlJAuahqZ8GW+EA3Vyr9vj
	 5J9tYds0zGZuA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5D1AEC38145
	for <ddprobe@lists.linux.dev>; Tue,  6 Sep 2022 21:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166249985336.5016.11773361114480555060.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a79e9720e49c88ef8a169dad627222955a79552f157aaea81905672aeeeaab5f
Date: Tue, 06 Sep 2022 21:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662499853
