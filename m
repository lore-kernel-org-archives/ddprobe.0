Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 399DA185D
	for <ddprobe@lists.linux.dev>; Wed, 24 May 2023 05:55:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9119C433D2
	for <ddprobe@lists.linux.dev>; Wed, 24 May 2023 05:55:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1684907705;
	bh=dTi0fKENkOWyUa3nluiMQyCdKTaTI+5Cw/+2e9mOMoE=;
	h=To:Subject:From:Date:From;
	b=UoRffK8Kw/WQqfKNS3AUaP+YK7OVE+xtk27ZksVt0sahCFGlQYMRMo2MJHcE16yxc
	 tZcEhx0TxOujR7SIVhZCuhEuyCElV8XQSG4lIS/5657WidA0sz13gtupNvymEY+MK2
	 sdoI4AS/1wMKkmllGTXqzdiCG8Pi7fcPnpagAqKa62PNToaYX59ALn4miWKEx7JvLT
	 4d5ssvSFzfToRNWIV/lVZbNKWNCHqP/TW1hGd7oNucqNAK7G6nbb1GgO+cwt6K87FB
	 eX5o2zdsl8a7qXvdrECS4VfsyHtfKtCB4D1sNlfpGOK6VpEAbqVjyke9lA54OilAUl
	 HJBzxIRnByHhA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B86D6C77B7A
	for <ddprobe@lists.linux.dev>; Wed, 24 May 2023 05:55:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168490770574.22734.4764154088738835080.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c248430acfeb76a0efedbe2b9d3243d0ae3e6e1b8d294d3d58d5a6c6c2d5293a
Date: Wed, 24 May 2023 05:55:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1684907705
