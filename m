Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CCC85ED0
	for <ddprobe@lists.linux.dev>; Wed, 28 Dec 2022 07:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7C237C433D2
	for <ddprobe@lists.linux.dev>; Wed, 28 Dec 2022 07:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672211487;
	bh=Od2YFpAxbAYcD24LbuLoWJxblO49pDDRCjnLoHRLH20=;
	h=To:Subject:From:Date:From;
	b=t+5RiMPjayy0CnYLWAWUsuYq6sRZssAOMEiR5jeZ19kDkBEcOIe06k7STVpPRlmwo
	 yt+Z8aJIeNR0WdeLkylYPx57CFnl3TKr+Cv1vk4zfpl7icQLkb1BAcuhXDhMGndHMl
	 ar8t2KHuMgosMIn8PTEH03sth0hACQO29G8mH9qYSMJBIE2yc5qiqyQOWEKXAYtIDE
	 nvhNVZGKjeU4GSrPu460GGX4Ap2YnAgiv3XiAQcjrGaxVWkiAA6nMmISrgjf6Ev0C3
	 X/j6B/isV2ArWnhVpYIOKKdIiinc/VpXYtQdMmalMHblpfbYlJNI1e0NjqhGKPVCFu
	 IhnFqgSP9lf/A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 627C2C4332F
	for <ddprobe@lists.linux.dev>; Wed, 28 Dec 2022 07:11:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167221148739.9337.9103240867871615830.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 29d0245320da949af36f02dc40e718143d36290b9e482d213747dd2b290ea721
Date: Wed, 28 Dec 2022 07:11:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672211487
