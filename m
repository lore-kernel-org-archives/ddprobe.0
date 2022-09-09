Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D1B2D4A02
	for <ddprobe@lists.linux.dev>; Fri,  9 Sep 2022 14:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 72C5FC433C1
	for <ddprobe@lists.linux.dev>; Fri,  9 Sep 2022 14:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662732653;
	bh=jQ2bwQBk5W3vc0ikn8ZCegwtpaNFbuehio/hK6s/H1A=;
	h=To:Subject:From:Date:From;
	b=oKH+YI3Bhr+LtX6zVfM0A9Nh79c16szBykO60UZMnSPvRcgL4o1LB/ZlTp0cuaiCN
	 j0J4Av3xWZPWik4yqm0PhwqRb4Eg0wYyTWO7PnZYfxALJ004aeyM9cGkiIrRgvK4J4
	 75b1YepZv6hzHfZQH0Cx5i9xcZWBnERuRiDBU3pDrYKkf4dzIk4stGrK+sjmDkk6HJ
	 z0IuBC8JAAcKsFwkIqpIJOWBU1n6mUZwpGF+KBdDWGgqJS9VFcjmNqbHXDRtGTUADv
	 sgyGNDwWo89gHuYNmN2T/LAJw70Ty5z6JX9EXOKzFyli7riD4aODsFdTcIGBYY9/kl
	 kC2kW76v8aifA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 546A2ECAAA1
	for <ddprobe@lists.linux.dev>; Fri,  9 Sep 2022 14:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166273265333.13895.8072355175104656196.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7ee0b1a99c66d210d9c047473bf5a74740e69d3437e21b1f442544f0805e260d
Date: Fri, 09 Sep 2022 14:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662732653
