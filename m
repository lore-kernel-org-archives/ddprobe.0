Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C664217D8
	for <ddprobe@lists.linux.dev>; Thu, 17 Nov 2022 04:10:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 72CF1C433D6
	for <ddprobe@lists.linux.dev>; Thu, 17 Nov 2022 04:10:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668658254;
	bh=2dIQNErJR3k64gt5/Xh5W7V64t989bNPzvhjamtVuMw=;
	h=To:Subject:From:Date:From;
	b=VuHOd3NcZffwVpfH7NJTrArGLOaRdlJVK50/724fK4L8wptT2a3a6VqKGrkUPtkgj
	 z/rKYS4h0ecIDW/dw4GVW14bax4UcMxz3qd/CuDCFA/1nI40FsGQY/CqlUPS+DnyVd
	 khQtyr6Swoc4S8NAWLAUkC9PnbUSLCaYp2LRepk0Qr/M5dapkKfFlDOaoLfaHP7Pn4
	 zMDQjoa2CMLzRPPYyTJZGF4m10vlBmzAl27C7lLfmGbTUJrKTVKFR6SDusByD1pDT9
	 avWDby/OJnXWtSztecanhY4fHhAJx7ndNcazsHNPm+NWcNqV5TrYjF0URI9fEdOr/D
	 MSGXBf0aGbQ4A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 50EA1C4332F
	for <ddprobe@lists.linux.dev>; Thu, 17 Nov 2022 04:10:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166865825432.13106.7259992979690105052.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 571160de5752cede0cb4c9c9dbaa1519413fbdde243d90431ff62e233a29f632
Date: Thu, 17 Nov 2022 04:10:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668658254
