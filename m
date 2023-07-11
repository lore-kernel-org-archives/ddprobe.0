Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A4DFA18AEE
	for <ddprobe@lists.linux.dev>; Tue, 11 Jul 2023 11:47:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 1B460C433C7
	for <ddprobe@lists.linux.dev>; Tue, 11 Jul 2023 11:47:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1689076029;
	bh=/Y7rC9OcZ4+aRhUN3dG+L5F0aBXfGTfNofojZEjuwW8=;
	h=To:Subject:From:Date:From;
	b=ooZJdozqN845eEcA0cYC2+8qsvDfsFkZVT2vJWShFi1oFY9Dsx7X16i8ViE2TJxTC
	 LmXeKWIpgz/oaHEeu00k85KlkLPU7hvjT8NuZ6sJkklU5aK02owUPSVqhNbMGvi3Go
	 x15j6iiCGULh64lZ50RkMgzzcihEjNKNZzF8LxLJ48m6KGCxDe8tC0xkgiSJ3s4UtY
	 cEzU0QBlxJW20EmAAbjyhVCIdlb8N0xWO4NiZ6jg/XVs+aLuJ7p+07ATlxFPPoK5aq
	 4EnNiHBHo1jcGD9+NfBU1l8Nwk2H09jlSeLkXN37/xlwnVyA7x04uv2g/W+XsnMXJY
	 TXOCXvrxJJ0zw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id EE334EB64DC
	for <ddprobe@lists.linux.dev>; Tue, 11 Jul 2023 11:47:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168907602896.23637.7601957052177977765.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a94e88d72a5c503c593dfcd5691ac4b974bc7bbfb248e7a881a0a62d8c85b39e
Date: Tue, 11 Jul 2023 11:47:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1689076028
