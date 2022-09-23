Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B16E8441A
	for <ddprobe@lists.linux.dev>; Fri, 23 Sep 2022 20:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 688B3C433C1
	for <ddprobe@lists.linux.dev>; Fri, 23 Sep 2022 20:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663964453;
	bh=AQrZA/U23KzC21UrmikFKkruojkkMchqqM/cQSV6kmE=;
	h=To:Subject:From:Date:From;
	b=n4T6OZsw30LRE5HgJwd0m0yav02X1+4wh7jU+EgzoUKUbPmG0567Cslt2yEBnQvhj
	 vGnJdfpF3aYMdeBiVS5yO+IWjJgd4UBiMU4CZ3DmGOKNml0hUs0oglilOyIRBq9H1g
	 x9fche9siaXPGBZPLtruMg5i3FFHC50KlmVOiJL9LCcplWYP/xv8Mubw65p23VHrT0
	 wPJFK9TDWqEIcCY0IY6/Yoe164eq280yco7d9cJ/DHyz0s8DTcERd4tf1qSTDVl5LI
	 BCOPw2OCQg0HXV/vaW2ruP1V3ox1bCFLqdZK5N9uE6Lrng8qRoOO7PWzFQwyb0KYh9
	 uEH0h0KT+MBNg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4E338C04A95
	for <ddprobe@lists.linux.dev>; Fri, 23 Sep 2022 20:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166396445331.21982.9751001603394379029.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5412481aa6f0a6ff01e625660348505cb42d63aec8ae16b282431067ec912827
Date: Fri, 23 Sep 2022 20:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663964453
