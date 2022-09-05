Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BEEC77E
	for <ddprobe@lists.linux.dev>; Mon,  5 Sep 2022 02:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 70DDCC433D6
	for <ddprobe@lists.linux.dev>; Mon,  5 Sep 2022 02:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662345653;
	bh=cGGQwpANmGuRmYu7k4ItVsGTPeGzDv3OtljGeFLioSo=;
	h=To:Subject:From:Date:From;
	b=mg+VCKYVzFYatn0kCZOdbwHbrGCFM7uzksHy3bfCXMPiVQq0097xXlHqQPYfoQc/X
	 i/boPVxc6tcpRLPhY1N39rEe1RceD2BPjoziej9oENUH4fbpqobrGxDPD669rgp3rF
	 XuR6Aq35k38LyNRwbFKLWpSCxUw6HbKxkS0E/znmoplkRss6rgLYrBiCtMBdqDNIiE
	 /0kdDh2moHwtkkt/gWw1hPkNMRqcJIOdyegZ3pL/8G37f1n3cu4G02hk0mUQM1OjmZ
	 T+f0UyOl0W7POrt4lnx/KPIfr1w4LmudQyZN17wrkUuv20SqQh1hCnk7cI//hQDX1H
	 4GA/q2bnfUQHw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 55BF9C6FA82
	for <ddprobe@lists.linux.dev>; Mon,  5 Sep 2022 02:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166234565334.12407.14811379375852155294.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 48123215934578096fd1d57bd019e1276d4268d3f041bfa96d7e64ae72ce2eb3
Date: Mon, 05 Sep 2022 02:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662345653
