Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B0203374
	for <ddprobe@lists.linux.dev>; Wed,  7 Dec 2022 02:50:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 672A2C433D6
	for <ddprobe@lists.linux.dev>; Wed,  7 Dec 2022 02:50:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670381454;
	bh=me91/YdXo5UaIrv+JhNGomO384BDugPf5rClUqIDE1A=;
	h=To:Subject:From:Date:From;
	b=MRgDg0hniNSj0CXOvj7I04s4j6OqoCi/ov5pE6AAyfAcFPP0xcP35lOk7ZeC7Chp6
	 gJBDc8t8uGWGBYPYJCIbRO7ccHsk4+ad47+M4bppKz9ihod0d8kQmc5YXGu3MMnetM
	 0N5aa99vHGNBMK2ezY77QgP8Yclga/m9caBMHj3GxXywfONRkoQ/VtzODiyJoAs+l9
	 aF+8hBVZYNQI28cpc3JEPa3vrqz0xs5tCve/dJTIs/750ZOxfcIGK+lseQRdf8WA5V
	 m8qlNM5oHvirSpiYUr+d4LBbqQycmLjAZMxBs/ae+/NuJGafGDKUL9JDgj6JRMPPI8
	 J8/4RVzZ2/p5A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 51DA3C352A1
	for <ddprobe@lists.linux.dev>; Wed,  7 Dec 2022 02:50:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167038145432.18790.11040675168058986417.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ac89b81e6a1a844a91b5bb41eed79ed9691a1880a393bba5c1beaa3a77f8506a
Date: Wed, 07 Dec 2022 02:50:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670381454
