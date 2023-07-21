Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B8601E513
	for <ddprobe@lists.linux.dev>; Fri, 21 Jul 2023 12:22:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C4D5AC433C7
	for <ddprobe@lists.linux.dev>; Fri, 21 Jul 2023 12:22:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1689942128;
	bh=eky7v5uy4PcCXoZWDoNJshZO0+XTmwBUiX+F4X6K+kE=;
	h=To:Subject:From:Date:From;
	b=ihx5bXNaqJPZTxV4VRpwGv+ReOXRMeyHeZWY6Oj4QefJRSkEa5rshnKAS1pPwUUJN
	 KBgScOcgz1qcegyAODSQIl2eeDBq7Mh08/pSLXGqPBVmJcv+K9Vm9/4s6lz4MaUMz9
	 58Gj/rlYKREUMdcKL9Tqxq3f/KeJ2Tk7ABxEbQkDRz99VufhtZPIYqyFvmW7ZgGRo9
	 KqbX8FUiObuKIygW6g0qI67s2Q5gGGclx2ScpoOAvJMOGsoIRKgmmwvIvtGhL/x3Dc
	 TaqSs9TXH4NBNcU+2yuA7PQouSld0VNQReANDqjzyjkXcLN5ge1uQ9TIpcDLnQWrpn
	 j7v/W30pBMNiw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9E8EEB64DC
	for <ddprobe@lists.linux.dev>; Fri, 21 Jul 2023 12:22:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168994212868.21558.7410770760391922024.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fdc2e1f8f0ca01cd6fa72cee4dd7957ecd0d3c4b80958dd89a5c87c15f2efc99
Date: Fri, 21 Jul 2023 12:22:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1689942128
