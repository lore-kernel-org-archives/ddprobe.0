Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 55768ED3
	for <ddprobe@lists.linux.dev>; Sun, 14 May 2023 02:48:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 0587EC433EF
	for <ddprobe@lists.linux.dev>; Sun, 14 May 2023 02:48:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1684032486;
	bh=qzSz13VIDRBeucayZOkgX8LRKPvUeC1Pb26Z/uPtohY=;
	h=To:Subject:From:Date:From;
	b=Rk2AhQPAE/I2+FmhF4BKyJSOaa/+aCLeFh5GEE/izoLVkRrpWXoWJyBzwE4tF+plz
	 YuQ5TN3nO/WdrLxoNndwmt6t8zynedpnotOfeMwqZHXZTuBoJI93f5Ns+Sbk339L03
	 dFhwyQ2PoFCXaElRXFlWOXbqO2zh1/fx2GSex0Pu9aNMlJ7e+GIM6KLkxZIMTJhzpl
	 WOhpravRhLz3CyUckFuo+ALgq+ZEC1AadI7+CrXUfsdLNErgjaqEaOuiBmP14h2Se4
	 pIqhx3q6rrHQ3JRRNKiTQ48ETZp0o5zNWPJV04PxwQoqkmC3AXlUi3uQ4IpZHs4MGR
	 bTo7EVR5EHGDQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D80D1C77B7A
	for <ddprobe@lists.linux.dev>; Sun, 14 May 2023 02:48:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168403248583.4937.3495300039168973789.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6265f1bb4b46795c6facf709b540a00b5893ff5f640a5dec546c48d280ded806
Date: Sun, 14 May 2023 02:48:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1684032485
