Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E64761386
	for <ddprobe@lists.linux.dev>; Sun, 11 Dec 2022 07:21:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8B2D0C433EF
	for <ddprobe@lists.linux.dev>; Sun, 11 Dec 2022 07:21:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670743287;
	bh=XUrnU4ov8EPPXF8LolIkK5uHHKZfd3BBeJs5cErepA8=;
	h=To:Subject:From:Date:From;
	b=k40J6rOyMz2nSMjdhF4vfTgq3NjyIXGcnrk/3YqI8T9r1YgnwsuseJtQpfNOTdFGG
	 OjBga4insBwMJNMgFWcyoEMW0SNPW+cmX+q2yi+5UgyiTN0JZ+vAEHjK0AdDYCuHTm
	 BxUiRZfYFdXjbH/nQr4pBq1Hj5OObvw9Meo46YYYmq1tFH0yPuCfCjzi4AOSxWMGrw
	 s2bkrtcC2srX/RES64fZ9I6h/4Lvc4l6m3y1Wf1UhdzDSuWshxRWUiErz2gXsvClEm
	 BSryW7oEj88r92bs6ZcjroXW3puZ2wprgokd8hcJKqq9CorVuwMACpYBOGkgFEMsjy
	 ExpGmtOEPWvDg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6E94EC4332F
	for <ddprobe@lists.linux.dev>; Sun, 11 Dec 2022 07:21:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167074328740.28007.17294034375172170535.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1971f35d09631c2ae9c779b914cd3a5d3216e5bfc1d6ff19a19170cfecf9869b
Date: Sun, 11 Dec 2022 07:21:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670743287
