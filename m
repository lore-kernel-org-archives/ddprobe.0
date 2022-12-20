Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BC801184C
	for <ddprobe@lists.linux.dev>; Tue, 20 Dec 2022 06:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 87DE3C433EF
	for <ddprobe@lists.linux.dev>; Tue, 20 Dec 2022 06:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671516087;
	bh=GalrnQRcgDuqFWIPjxZKDU8GILbPNSjEDDSsp2UZ2yI=;
	h=To:Subject:From:Date:From;
	b=u2sy/xVJzUDnqCWpFAlN5mOAONh3RFp3HVO1mETIhDQHYRrmmx26NXkSUEF5asAkc
	 zpiHxUtwyry+r50FOggRJG2110+HnIzxQa8An3Rn8PWVMXW3iinGR07PqW8AMdMrxa
	 q1orsl0hE/zgkZXC1X5k6j+ehXC06zgNVEC1UGvpCv8T0BYVLJYloGSqwujakEmXtg
	 gQkLDhUXmqzzsQENmnl+Pwt/oX3MFrHf8GsHqRB/GtM//IRAUEz6AAte9oc2zqD0kY
	 uibWZT3w+bzAWH+TOX0ze6neY139UwSQE8Uqap8W/pWDQ/HAHxOVBCzG+yWZYFGVeM
	 jVRhZQzNHVI8w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 68785C4332F
	for <ddprobe@lists.linux.dev>; Tue, 20 Dec 2022 06:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167151608741.21972.13090817035877875843.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d3582ac9973e7a7ca8fa25414bbfb0b5536f23189fbbe2f359834c3fb9496f02
Date: Tue, 20 Dec 2022 06:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671516087
