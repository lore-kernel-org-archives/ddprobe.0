Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BDA477F
	for <ddprobe@lists.linux.dev>; Mon, 12 Sep 2022 09:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7581AC433C1
	for <ddprobe@lists.linux.dev>; Mon, 12 Sep 2022 09:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662975653;
	bh=72/aUP44YnVzC2TAfIrofRbl2X8kk6uvwTZ2oxfGtqg=;
	h=To:Subject:From:Date:From;
	b=Vg2VSKQt+QzbaYvFPKaRa49OVk5yy/1BjcNJZAR4cAN0OSqSEXUbDmzE7S2K8pnwn
	 iNYocjDY4iDO+8QyMwXvo8Azv19sUi69xfKdi7LvkZTsl9bxuFDR25rjtwNIMOsoGg
	 P8C+I8TiQ25k1TfrUfCwp9v6F7r/urMB4l0D9xXehXimO7EFlvrOmh8XBpRh8brnP7
	 lCByZQnPuQcYPlx9Puxy7Bt7yt2Fv8HGkO607UCgJiqjChvQYuTD09X28nDUdo80Lq
	 D2IQx8HW9o50BEqU++0o7Hw2ps4umRIIqHrkj6S3imTE+GridhJSpBc0y1SlLGhgyx
	 DZOsIV1dtAS4g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5C714ECAAD5
	for <ddprobe@lists.linux.dev>; Mon, 12 Sep 2022 09:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166297565334.5611.17233161992634615057.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fa3ba43379cf2979bd740f0804df5b2e4700bb256f09f47e8625b1582bc3c84c
Date: Mon, 12 Sep 2022 09:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662975653
