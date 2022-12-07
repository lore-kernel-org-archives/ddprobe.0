Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D09E0376
	for <ddprobe@lists.linux.dev>; Wed,  7 Dec 2022 00:40:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7A07FC433D6
	for <ddprobe@lists.linux.dev>; Wed,  7 Dec 2022 00:40:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670373654;
	bh=cbBeTkZ7a9zLVNIICbKFeeoptGaiAA4yrcQjfKB/gnM=;
	h=To:Subject:From:Date:From;
	b=U1uAaOSawVIF7Ofw9lqFa7nUF7OC7NzrdpXW5KVEWKC+q2zv2cvKa+fDDKNChzk8m
	 Yy9A+VnVoD5I6M66Ceqq9Ws/LdtAid1qVQ3sckzK/sd0qSW9koSx4xkPgDZ9Rj7YT0
	 KPZ8Hqt8gUobTolttb4fkhMqqMZ1ubSb4TCRFUBCYFVM16IIgFkYSe1oCBE7otwtH4
	 HT2Z+XEv31XnVqDSrD18I6IFtBdXX05ZJG/H2jg8/nK8HUUGrmBikm6l/KROobJj3O
	 GdLDYtRivBnlLCNQsTbPcC5YBEineKGLA2J5R6+1vlR8toTqZYRggR759IW4rcxLg6
	 2p8YQB6DuX2TA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5ACFFC3A5A7
	for <ddprobe@lists.linux.dev>; Wed,  7 Dec 2022 00:40:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167037365436.27666.7858436844737324476.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ff1808521879a57bde51bb4c1ee56477c18eb6ad441315a9ce39551d0a3b4900
Date: Wed, 07 Dec 2022 00:40:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670373654
