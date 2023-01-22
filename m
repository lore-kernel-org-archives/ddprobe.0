Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 368F428F1
	for <ddprobe@lists.linux.dev>; Sun, 22 Jan 2023 17:12:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DD79CC433EF
	for <ddprobe@lists.linux.dev>; Sun, 22 Jan 2023 17:12:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674407525;
	bh=h0Yxbm87Vg2Wng1QjsWiJD+Nj2Dbw6+QiOIuUqMVxyQ=;
	h=To:Subject:From:Date:From;
	b=NAc73Ll3vLci4Xen2k5MzrOAW2FpGpxkbjFwFrnAbOsymYxaL8jRlhigaIO/Btqub
	 r5mWuuvZQixA0opUf01O1bMPRO0gBUvPTxnQoAeGL1c/hYr7PQ3JZEkTNa8ml7FCO0
	 oXdLnzvw+jSbDaWsRgEarQESPrsH5aTUnzVwDZWUu/vA2GmWgRYvXKk+U2e40CKloR
	 xaIbzfVxMSWnKghj+GdycHBmFVtZ1ZcI6NCINNmwnZgM4N1AvlfXLMrs+HNy9KX7Bj
	 cLjXTMhgn7sh+0VayGxOIcu5Brgy78lfQ2IcXgRmrkfPW6QrzVQZ1kC27pj/V4Dx+7
	 pFdB+XTq7wahg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C4A1FC38142
	for <ddprobe@lists.linux.dev>; Sun, 22 Jan 2023 17:12:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167440752579.27664.4170259182347514780.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3eb90f4ba79d22965ed9acad4db39d690f3d33353a41bd04f6c0e4d580ce71f4
Date: Sun, 22 Jan 2023 17:12:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674407525
