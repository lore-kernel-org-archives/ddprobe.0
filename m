Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BDBBA1FCC
	for <ddprobe@lists.linux.dev>; Tue, 13 Sep 2022 03:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6DC45C433D6
	for <ddprobe@lists.linux.dev>; Tue, 13 Sep 2022 03:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663039253;
	bh=te6dU3Fej6aEJM/5R/fLwWk9T5zAdG3A39mk4iUzNQc=;
	h=To:Subject:From:Date:From;
	b=OuJweXHDMABw+vQJ7XMX1QBg2zn7+D8idun4yvtBUP9ZbHGQoP5dRWh0bA8Oen5us
	 hzM3WrAN8M6uu21jSkJvWREsXeVJxRm7zPWnjcfkR5Hsrj9eL9Q58kN0zhzneALWod
	 bySkjwe40DdAv06b97aab3MXxvbSOPp8D0Lm6+5PYmMNXSy+Jh+DFS7nNOdXKu4uV3
	 RA/uC1sqL1WkeW6j2IGPakH7cxwYs9dEz11o49c+4+SP1L2zeN3mc+/sSebIoUTVhi
	 gK3Krg+eVFhOV/Veu+k3QgbYEClH5QeNRiBdmQX2vNlgPk1/dS8rddlL/hLyPUZd1f
	 p72dddlGlb6GA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 56F76ECAAA1
	for <ddprobe@lists.linux.dev>; Tue, 13 Sep 2022 03:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166303925334.18853.2279587225685647711.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8836069437c7c5855cf01768b54fc9de6dee14c3aab8e8574bc0b47e40b372bb
Date: Tue, 13 Sep 2022 03:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663039253
