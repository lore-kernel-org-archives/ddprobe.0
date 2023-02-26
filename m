Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C0B6386
	for <ddprobe@lists.linux.dev>; Sun, 26 Feb 2023 03:55:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D87F3C433EF
	for <ddprobe@lists.linux.dev>; Sun, 26 Feb 2023 03:55:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1677383705;
	bh=OcXXSlqDpuYQtcRy+Pnezgvf0xKNA/Mn9n88LR88qis=;
	h=To:Subject:From:Date:From;
	b=jc3zAkgGyYodG6xv/da71AX4xYT3AQLaR2qYL5gQhlfz8ZDmGQIsSJV49W1FgDOvL
	 wVZTfTtcjq8cJ1AqhhVCyTSsDWVAmDEH1p+8lvtEzBjPHEhq89nD0eLjPEZlZMc+9y
	 138i7MYrjQFyLuJCP+zTW2qTHFZ/g12S+Y+LAX2ap0rNkGHedIuFMGEpQXuP/ewgxB
	 PYc28fFAGlBVv/o9rmLz5ITLFNdsqPBZ5hXJle4QgvlamCbSAkhWkQquTz18DC3ULP
	 m4z5H2IsKkyEl/2SD0oqsYkHUbHWo3OVy9SFF7leUiwWh9DjxWUGz9paare+yO9oKP
	 jby8Z75i3BpoA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B8C0AC64ED6
	for <ddprobe@lists.linux.dev>; Sun, 26 Feb 2023 03:55:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167738370574.23505.2337476196157267219.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8ee7f85f87e0c3fef6ecafff12770707ef1ba6ef3544d12afdcdb8b905efd265
Date: Sun, 26 Feb 2023 03:55:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1677383705
