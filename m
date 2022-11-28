Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BA21F181
	for <ddprobe@lists.linux.dev>; Mon, 28 Nov 2022 12:30:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6C6BEC433B5
	for <ddprobe@lists.linux.dev>; Mon, 28 Nov 2022 12:30:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669638654;
	bh=iqqOCgKEimRz7rkjkH1CSrKBiYUcRvk9szuD48IweQ0=;
	h=To:Subject:From:Date:From;
	b=CInk8/3JcjaXFFfFHM9KFOfTshWAnekAcv9E21wod7NBi0jskVLfqK45JY+/7YGcU
	 7VsIWzWEwdXtNzTVcpsiM6O2zhgTsnQDx5jNZXf2sTEeHiM9rsAfabnrBnp7/tvhWO
	 IzVNc5uNXJQuzhqpB4pddxWan3JEt/ykLLtX/oxUO358w4MM0fVj9YYbZCqHdk6/DC
	 X1OVLhhNhN2T+Yh58Wb5y8PBSEN9YyAisBLfNnSU24AG97iuU1QGMsoGt5alRKWUXr
	 LxV2mgNrfqoaFTPd10z6tUraZowFP8omdl7WY/8XEx8cSCExXfpALUuP60VuPNnTct
	 GM3cgYnAXLEsg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 54FD4C47089
	for <ddprobe@lists.linux.dev>; Mon, 28 Nov 2022 12:30:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166963865431.6053.13474358092887485640.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9aeaeaa687ac9394455c89ea2f09e00f7d5003d0230a52e400b2e241b31df8a8
Date: Mon, 28 Nov 2022 12:30:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669638654
