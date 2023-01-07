Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DBAE91C06
	for <ddprobe@lists.linux.dev>; Sat,  7 Jan 2023 13:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 810E2C433EF
	for <ddprobe@lists.linux.dev>; Sat,  7 Jan 2023 13:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673098887;
	bh=bQW+PEPSlhH5IliEZp9/Tli6DYTe8Qpa0KczA12khkg=;
	h=To:Subject:From:Date:From;
	b=U+H2CKKjlx3YYrpXclqO0NS9uBTz/DqIc2iw3x+9TSz1LL9uu/FLNaSh8iP28JHaL
	 aj7tHUY/ZICA7ehOb3dD1xcpTQCVvZuNw4N4l6NC9FbmLnhTlCUkGoW6MzgS2M6W56
	 Ins+ya8OM1XRLxLfs176nn5fbshtAt2dT6S24PNaPzJKWmYzW1/JwZ0C4J6RQ/vmox
	 KXD+eW09YUXckj3fT5YcW2gKxNsJMvpitk0fabZMSecRs2H89ggWMFa3iUWOcx18m4
	 9j9ybJnhpKXrHSF4vg3K8n3Ctty/6Wcruz8oVZRwC7xXtByyemgUVcsI7xx2X1T6gP
	 Z27zph9cfOYgQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 655D6C46467
	for <ddprobe@lists.linux.dev>; Sat,  7 Jan 2023 13:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167309888740.26482.11273987316004015673.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 06d911e1d631af967608ff3a8e9fbfbdcf2e3ef472aeeac22c9f31ac63f18b43
Date: Sat, 07 Jan 2023 13:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673098887
