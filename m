Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3053F7E2
	for <ddprobe@lists.linux.dev>; Sat, 14 Jan 2023 18:31:28 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CBDACC433D2
	for <ddprobe@lists.linux.dev>; Sat, 14 Jan 2023 18:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673721087;
	bh=dS7p1C8ZxXfVhbPy7EglecXywoUwRrFZcwVj7erkuSs=;
	h=To:Subject:From:Date:From;
	b=OD2vlqHZOtx2GtAgDAaGskvPhx2n6SpJXg5hnnCcL2vdHd2RDO/6ImAtvuGZopc3w
	 YeaYDJpBvYzMSlnPchtmtG4tc7ZdLby+MPIm2iH8oxfJ8Z1cgUAcN2CwAcN7O2i8D+
	 +QNlZ7tU1K2LU3XHQtRwXw5GMpc4Db6Szq3N9xPRYCT0nZdoQdfNKwArSwzkXJYoYj
	 ijuIVKMCYXuBPJgr14AKO0Z+2Ja6Gu+HjrOTIdVCAGMIMLKogvQ7kPkummPaGZ8v1i
	 FV9KQNjdpJLccaYMLWuGpqDZcQjGRSWFiTxI2zzJBdFJlOF9Dj3U5APtUh+5i+hwj+
	 QtBoQsywceeFA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A6A7EC3DA78
	for <ddprobe@lists.linux.dev>; Sat, 14 Jan 2023 18:31:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167372108763.1406.4743131999200367230.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ea4620abf0dca71d0a5a84b701cff9a72cd59c17832b25ac412384c10cd48821
Date: Sat, 14 Jan 2023 18:31:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673721087
