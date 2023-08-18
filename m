Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 900B7375
	for <ddprobe@lists.linux.dev>; Fri, 18 Aug 2023 00:44:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8AAFC433C8
	for <ddprobe@lists.linux.dev>; Fri, 18 Aug 2023 00:44:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1692319448;
	bh=rd4RQKX4dryTh9mUPuYBnrSPkyeZ3BPScsxW3iGs2wc=;
	h=To:Subject:From:Date:From;
	b=R64SN/JdJwyZGx0WaepCwmxS/ZmVCwRFkT7RO7U5ybFQFaGkHFslFXLAr5Fn6ynA9
	 RU0SC4E41Uz66mJN6HsuLtvtWzK0qad0qggcdeyMC4JHJtDphoKnS1Z4nkjFCyk8Re
	 osEvRp7DM1qDKj3JntoBC7vaBsStxAn+hUTyzpHWwCb9+8pFj8blLBmyVC6+QHwVsP
	 Hp5DMq6b9FrWH7gyS4fY/RvHT+Tg/Mm+4iGMr5xb84YCwvR6PApKEc59YDpyODBklT
	 sycq2IlzpAW3NOpsHwXiJU3a4sj5MZsKFAlkYLMEFl9AlG01Ae1l/6uVpl8/g906E9
	 o2+mwe+Hps5RQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BE4E4C678DC
	for <ddprobe@lists.linux.dev>; Fri, 18 Aug 2023 00:44:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169231944876.14969.6345114798072418797.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 10cba0945e5518749cab35281c67c9a08f764e63eed99d62abef6ed370cc5c2f
Date: Fri, 18 Aug 2023 00:44:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1692319448
