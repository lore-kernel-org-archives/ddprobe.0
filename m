Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34DCC322A
	for <ddprobe@lists.linux.dev>; Tue, 24 Jan 2023 23:43:07 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9438C433EF
	for <ddprobe@lists.linux.dev>; Tue, 24 Jan 2023 23:43:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674603786;
	bh=GCXlX0ly17+sNvI6nKjqx+EaQXrNhV1N4TwEGWVod28=;
	h=To:Subject:From:Date:From;
	b=OMr8LbEEkG5EMZj9luZ1PVpWanE6LXi8G8ABupmRThe+52+OApRKejEywYxWClgzv
	 t+wNQvMYSv31ZzIG47NvST1oxBH6FyMJbDsYJ5vG5d9vv5u+buMvKqTsNaLT/0AHGl
	 pgv8EchKl2JS1mPB/k7nUzm155iieOOFi1dvKGYd06BixYrpgj2vGiVQVyxNofusWh
	 HcZSYYr+moQFhkwPt2tAvg9W9ICrv3rDKbEpHaJ538X2ZJtcvGOiXKX5OrIrWF5ShM
	 kLdBOIQH2gyx73p7a8dbBoUq7t+jwUHW5pAsu9WEmB+1O5+E+zu75eszgWYSMMgJXv
	 8mwM1sNZrfBqw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B9DF0C54E94
	for <ddprobe@lists.linux.dev>; Tue, 24 Jan 2023 23:43:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167460378575.4003.10716949796168645616.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f1424b324ce532afba71908df50e45984f44eb2557760cb96d8249f46512ed24
Date: Tue, 24 Jan 2023 23:43:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674603785
