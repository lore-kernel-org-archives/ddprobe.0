Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C0A974432
	for <ddprobe@lists.linux.dev>; Thu, 15 Sep 2022 12:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6C32CC433C1
	for <ddprobe@lists.linux.dev>; Thu, 15 Sep 2022 12:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663246253;
	bh=Vvt35f0raI1cJk64DODE/SbrIJ/aefEhvgi3mhmkafM=;
	h=To:Subject:From:Date:From;
	b=F94dRs8Uoeax1XKUcJJN1w8wz1OAD0I38E1NZTfnU5WRb/fI2Dd4iqsNAkzx81Tav
	 OhqYO+KP8qf8VfD8XWOiGY++wxRLLfOzswPV/CL7NQ0sE1iMeVMvTypa3DhdHomyQa
	 GsJZWuVOYl4GNcOjL29a+6aKLfb//BtIjtb+fPcQVngE67CF4L26dl2VRvthr1l2VQ
	 x4+eaJUHFJ0sSJohreuVjkd5PcjxMA3qmQATkR4HYALnKkM3330iJ7ecBZizQEdojf
	 3/S033TOEkONGcW7sLb4tZighX0qQ+bry73IUWa1vFARroL+PFYmeXWJTcZOu3tpQo
	 GwdJkqv6m7SSg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 51562ECAAA1
	for <ddprobe@lists.linux.dev>; Thu, 15 Sep 2022 12:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166324625332.8633.7601590861229664310.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 20c2a2f9429949db02c9530f59f840c0deb03e33fab7ff22e30d21460e32faef
Date: Thu, 15 Sep 2022 12:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663246253
