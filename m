Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 50B2315A0
	for <ddprobe@lists.linux.dev>; Mon, 17 Apr 2023 03:28:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E7A8AC433A0
	for <ddprobe@lists.linux.dev>; Mon, 17 Apr 2023 03:28:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1681702085;
	bh=p9XtAlglv4Qc7wApNpdPmO2E97AynFST3f9uYNsDMqs=;
	h=To:Subject:From:Date:From;
	b=ABBPsrwy1yxS4VR9y+sLPkOlXfkKECwBBfgu9y1I89ImZoeiGz3G6onhM7anU7AJi
	 SWPDlusSjfgQ/O5I+XqoQ+htoY+9okwiHw/NLWv+gO/Vpbz8yMXKseTLJ8UwPOp17j
	 bIn7dzw/1w+fo6Dv691nVoVPqJ9iuP1pg36lGLCuhVBalDlxh1VATeQ64TgK79q/Jn
	 R/SORkrilBH80WuIhJ4s3U0Bz+XBg0fDd5iNjlnHvhFzz2IdtRDj420eL3r5lv6M54
	 4KxFCIgjhmOqHX8x/yq0Lz3fXZtK7+RBfAJ8llfEJuGkeF2bs5sdR32+pJD5Ks6Y9d
	 TJ+7TVNjff0Qg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C2975C77B77
	for <ddprobe@lists.linux.dev>; Mon, 17 Apr 2023 03:28:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168170208577.5574.12852420206553458183.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dc61ee4d4c96d0b03d57b572b529c623dcaf4c9d2aaa58ee1d0b47958cf67506
Date: Mon, 17 Apr 2023 03:28:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1681702085
