Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B65EF38D
	for <ddprobe@lists.linux.dev>; Mon, 26 Sep 2022 16:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6ADD0C433C1
	for <ddprobe@lists.linux.dev>; Mon, 26 Sep 2022 16:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664209853;
	bh=Uqvl4RHhtpNpGviUN9GIzpH9pdokDbDuCupiXob+U/A=;
	h=To:Subject:From:Date:From;
	b=PppcO3+kvephUH3by8+NgzG/IXzoAhIBWlHaKDGZZDkcN/AKtFxZdPGfP5xjRW8jG
	 2EE/K+UwLHXQSLuY702Ebbwjgj2A+IuaKcxeSZECbAfQ2fHeg2DcpBMO+jNKhhbcA1
	 gI84wLJU8xvrs/i32C/G7uDyfW1mQT94dSbrYW1Y2UUF5JYIF+FAtE6mCCqlaWBuRq
	 K77IEoUlkuytXZvLQkvOsE31qCC3epAEhGcWt8/Diyb1zxQeN72l2jJIP5V/j1yZj/
	 3sY6r3UaZ/B73btkpgdNmX8V3N9UyVWfVAPTWZM2HVbic6e/VPifEuzR1bH5RRazp6
	 AXCoWuMfyaeZg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 550F6C32771
	for <ddprobe@lists.linux.dev>; Mon, 26 Sep 2022 16:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166420985334.21132.2484893008827790189.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f9758a35f89cb3249600b497303329075b0020148a910752dc2b55cc8567ad93
Date: Mon, 26 Sep 2022 16:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664209853
