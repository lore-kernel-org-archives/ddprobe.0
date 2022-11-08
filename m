Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B2D02190
	for <ddprobe@lists.linux.dev>; Tue,  8 Nov 2022 02:30:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 655A0C433D6
	for <ddprobe@lists.linux.dev>; Tue,  8 Nov 2022 02:30:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667874654;
	bh=kmJKBimJi2VJSjdp/Zm7U/IP6FCtZWW3rPgsh63mR4o=;
	h=To:Subject:From:Date:From;
	b=ZGGFJlmmfretmPfgEkHg96sTwkrqGbaS/MsPNC7Dud4ZCVK595A0q8ph+EXYy9awq
	 Zxfe/EqoFuDj/aNSLGJrAFc53J+2pB+iyCcw+3FIHeZvgq4dLw35Ii5e+U+ciyXD10
	 m0G5i2J0tUQWcsvjqNQ1CwCVnTbRAMXqMqtEFlWS3UEU4ZS2Q9E7tK0TRtrwPweZxT
	 iKfXVJY1gtacV436P7BuBQ7jukmZNRXhFvyMkEx3iJ/zxUkuGEARRKyhdyVSFu2Ts/
	 apd7S9gxfJCsdgPOnMfoguPMfGDwlRDbzMaRCtZXBoEBW/HBHGsdasOr081zFRvhgu
	 P0R7v/n5ND8Cw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4EE31C433FE
	for <ddprobe@lists.linux.dev>; Tue,  8 Nov 2022 02:30:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166787465431.24472.16260381381201843688.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 171dba6b6952607f4d14b346ddbc25486927894eb6d95d1fef16de83680588a8
Date: Tue, 08 Nov 2022 02:30:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667874654
