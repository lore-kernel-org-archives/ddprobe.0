Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4CF7A4689
	for <ddprobe@lists.linux.dev>; Fri, 18 Aug 2023 09:34:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C79EDC433C7
	for <ddprobe@lists.linux.dev>; Fri, 18 Aug 2023 09:34:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1692351248;
	bh=rwPwO7/mBI0uhxTKSRRywjhsYDD4fa4GpgiTRIZUPB4=;
	h=To:Subject:From:Date:From;
	b=KAfyJcJXsrn03Z/wtbj+Ydv2eoyBx8yribFoK1GXmqOXE+zasF7OQUgVvV9pzp1lJ
	 +TQ0YYfMXZWRqmnRGHJ68EvKWjO89hFN82DyivxWRV6JRGU9ZBXNygAgNaVrxRlfzX
	 hdH2So/wuO5qZO4dO6MB7fT895Io+GuVdzRWEkPi0bRw1orz5xqWYgojgo65Y6M9Tv
	 J8Eb6BcxgTgbbCcW6Z05UR5wtB9pdXp5nGRSdAdG4U7ivhajStjsVW7qOEQyRvNoBj
	 XHw03f2fII/ClRBZPrVHgNvQIcSRkP3SiCi7tHp62VLxHVg2lHXzheX3JUqu4kK+bY
	 IqTcxu56jzAUQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A966CC678DC
	for <ddprobe@lists.linux.dev>; Fri, 18 Aug 2023 09:34:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169235124868.32206.9402665850756717648.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 05ee816e946f8b1411575f3a5504b9be356fec79114d13b6a190e20e29076746
Date: Fri, 18 Aug 2023 09:34:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1692351248
