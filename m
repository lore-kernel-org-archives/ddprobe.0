Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5B8C133EA
	for <ddprobe@lists.linux.dev>; Sun, 23 Apr 2023 18:01:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id F3F95C433D2
	for <ddprobe@lists.linux.dev>; Sun, 23 Apr 2023 18:01:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1682272866;
	bh=x2ogBrE34rf+jQZ47n7UkMwA8u1JMiva/y0gUWNytAg=;
	h=To:Subject:From:Date:From;
	b=DAt1i4TIOKMwnxTc00ZTuEgziLHP/34oWkuKd/5FPksJDTRz2uLAdGJR8UcmVEx4t
	 VvrA9+/9SPYrgfdAycbZYAfF9dpX7XtaAHHDE1v07pwz34lpqbDIt6FJ3ATCWa1CxX
	 bRE5qrTMuzFd3lbDbkb/1xRdTSnM++VZXhfoRPCyz1PSPqjv4lRItNJgTIfgY4Bcl+
	 GKVJGR74A0y0lFOhLuecHTYlksAReAheljQKqxLLHvIXog/vqOsZaRRDM4XlIgJko1
	 37KZY1fyAKxrtefVZMkTGQt3ucRg3BqtCLizCvghTanhwXnQa8/ucVgwFdNipPV53l
	 d+q0lsNBqvNHA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D1EAAC6FD18
	for <ddprobe@lists.linux.dev>; Sun, 23 Apr 2023 18:01:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168227286584.9100.5005451159692818139.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 40e8912e401da29ee19c0b2842e2f3b84769b4ac17d5d6094f0c2c915b7e121a
Date: Sun, 23 Apr 2023 18:01:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1682272865
