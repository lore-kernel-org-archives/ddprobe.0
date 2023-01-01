Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EFA7A2C80
	for <ddprobe@lists.linux.dev>; Sun,  1 Jan 2023 18:31:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 91550C433EF
	for <ddprobe@lists.linux.dev>; Sun,  1 Jan 2023 18:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672597887;
	bh=9iVQeKKuJE9pcY7n1wVqwnqOJ291wvwL929Wlb5sIdE=;
	h=To:Subject:From:Date:From;
	b=OfN2mTArkfjpcB6ulxeM8mD9cflnOlXazMvqBfLrwZtaeGhzdS4y1Co6p94l7Py8z
	 1r/WeqTD/PrgzZSIOZYbo92ApnPs+SUNc4rOkHD+I1x+YNWII8PcUV5aQ5wCISpAdP
	 2Ve+pF+MflfaM6YvBWFEGD/0KibgxWAtwB5RAuBMpvbOVkFRsJKOA1dxjH2LWIEe0A
	 doTEgZ2cX3EKl+GkA4sgXhBd7j1iy2sjffnxUTFt6XYSlAgnC4jKui4Fw2WXiMEJoG
	 XgaiNCKo7ehnvAJ/iBqMTWHlg0z/LDmMQ4ERHRdvyXKyJunqIlwT4/s0KyuXj+AvgU
	 e4sugqHdvOo+g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 71B96C4167B
	for <ddprobe@lists.linux.dev>; Sun,  1 Jan 2023 18:31:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167259788744.31361.11339603012047877977.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dc2c1982c8e7a6d261673644f49d5c7a58515ff1a01f3a8a4f1931a361d42a28
Date: Sun, 01 Jan 2023 18:31:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672597887
