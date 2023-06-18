Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 71EAC63BB
	for <ddprobe@lists.linux.dev>; Sun, 18 Jun 2023 22:00:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D71D9C433C8
	for <ddprobe@lists.linux.dev>; Sun, 18 Jun 2023 22:00:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687125608;
	bh=v8/aW+3xU0bqdq8Lv9as5vox18lYIOowj6sjdQd/2po=;
	h=To:Subject:From:Date:From;
	b=MEUaXqZsPIlg/OqOT6iWWTQG8Jj/73Hkesag2XcEbykM58wBouT6eHKzFLiCDY++2
	 Scm/V6aDqIcvy69aIEr97cu6msCZQZx6jRSAxRtXM3k4UM+fWJLiXERUTWUYphiJGT
	 WZDvXe/cRrxEdGPbu93y6MK2iaGrQsTzVJAiCRGuowhrWDd8h1o37FChQdKqVQQJ+H
	 CjpwoWlv5XpFb13De0ohWxi2DkMExduzuQWQ6YpseoPQ/+PmdLCXVty/1C7rPWOaCb
	 kP/AeJOKYzyyGQYXnWogjUAVJCKSlWSj8TWWHtLsNW1RrUpEc7E2aTpdc8Eo1QC9hC
	 grHPeH3ViEGXw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B80D2EB64D7
	for <ddprobe@lists.linux.dev>; Sun, 18 Jun 2023 22:00:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168712560873.20091.10581522969594840076.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 416f24a04adf091ae22b238c672df5c01e7efca8b0429173a69a06aaef9a635d
Date: Sun, 18 Jun 2023 22:00:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687125608
