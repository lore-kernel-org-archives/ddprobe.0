Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7345FEA1
	for <ddprobe@lists.linux.dev>; Thu,  1 Jun 2023 00:14:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id F066DC433D2
	for <ddprobe@lists.linux.dev>; Thu,  1 Jun 2023 00:14:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1685578446;
	bh=Fntoe7EykhqJxz+LU7cTVbYTFt+d4yaBc3eOZNsQbNU=;
	h=To:Subject:From:Date:From;
	b=hJXABLldXWR5d+bpcD7iqqO0Qf4qAatrcnHzHgMKbHYUjHzcAavgNg470LtBHaGXC
	 sw0PrwX5m79JdEjJDAgUtk+8t6Zb7XuJx09UH3la25ZBz+AQ306QlkmdIDThQoL1TA
	 qn+FovMIbwR1Vlx+siNt7hqoDu5932MKf4kChf3mom62v4RY3V32kegyYfkSNzT7wC
	 hO8D1UDCPixPFFeKv88OQ/ap51BPWBnkcpooudpp2vNa7RgcTIgR0AJVdGG5cKDyAG
	 qHGOH6mV2KLx59lUJ0tfV1z3yxqEEqq+7AOaLAEOlDm3OMXowiWG6cwxB1jYW4EVYw
	 AV2DVR37IyPTw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D07BDC77B73
	for <ddprobe@lists.linux.dev>; Thu,  1 Jun 2023 00:14:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168557844583.12916.5992541745355700071.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fffb93ab6deccab977e3a17241cc95feddacc3f8807bb3108a162c6640736349
Date: Thu, 01 Jun 2023 00:14:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1685578445
