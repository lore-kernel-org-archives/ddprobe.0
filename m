Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BBDE168DE
	for <ddprobe@lists.linux.dev>; Thu, 17 Aug 2023 17:13:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C722BC433C8
	for <ddprobe@lists.linux.dev>; Thu, 17 Aug 2023 17:13:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1692292388;
	bh=v5fJale7vb49LRCvUPPN+GuezXL10tU/2DJX65A8Xm8=;
	h=To:Subject:From:Date:From;
	b=dTw7Nek9Uf4cX1c0tnmWB+qDSwv4APF7xBLLJXBx4Tl5kkUbGrTLBWK017zeY/Wx4
	 QT5eM2s+atHkQsxLQTCF0Lk4mIIn4ucawk0LQM0KvOmOB4lJtgmUWTfaHiHm1+J1NT
	 UztSEhmecl7LsmZJ5ZhxV92aiQy+3n4AJucZordlvWkrRzWoE1Lj4DZv1I5vKpWb01
	 zLuRSVOccaMUoAa9z0JeSsLsk4GOE3qs1KMGz+hjybtstDDHi9WMdCRhe8cVHcnr8A
	 ckkmI38FaigTTbjSDCK1rdoaMn6+Fdr6CTW70kImaMEinZcVi8oQAKvZBGVfpYX8LU
	 h5XJo4XK1oQ1g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEA65C3DA58
	for <ddprobe@lists.linux.dev>; Thu, 17 Aug 2023 17:13:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169229238869.20353.11024335775569198576.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e29a3f20c69f3ade23dd5e9330f7167fe77667be3a23d8cb7887acef9098a07d
Date: Thu, 17 Aug 2023 17:13:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1692292388
