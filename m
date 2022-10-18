Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B75F5EA2
	for <ddprobe@lists.linux.dev>; Tue, 18 Oct 2022 02:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 716F5C433B5
	for <ddprobe@lists.linux.dev>; Tue, 18 Oct 2022 02:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666060853;
	bh=zS/0NCK5K+ls9xMEQpAKELjGLuk9P482ulKBTVaThJY=;
	h=To:Subject:From:Date:From;
	b=Cmdr/CumpXJT3BJlA058w+JjU21ZAv+uatVGJ39xIYzMr16rXvHqexRry47aRZHiU
	 bQYus7neh0QjP6ojb9+12gd1sdX0J/u0FijXz/TiMrHWieW8E4ItMRTHdXmj7l5bi9
	 2U9TkapTFJvCSNTZOWOGtE1HMgeZXagiShh+mS21uwm/r1dGnLa776dHe3IVGy7RaI
	 AcdzNNwcA5ANw5JPcK6ZOSZnO2exvt5bKzlhlCnasA/wlJLGn2TLpfVmsBv5s82zxO
	 y6JUwCDSWg1tg7b3VizkpLgkxNHXg0IO5Y3ZAae1s4OdenffEi2df+Y9V7Y9CjOir3
	 s8c7a0nHhpP/g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 54FB4C433FE
	for <ddprobe@lists.linux.dev>; Tue, 18 Oct 2022 02:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166606085334.6701.10013484507572979056.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 269ec52f5a5e5fda0f84bebd68d8698d6ec5cd66c332ba19918fc6810cbeb92a
Date: Tue, 18 Oct 2022 02:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666060853
