Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 400108F42
	for <ddprobe@lists.linux.dev>; Thu,  6 Jul 2023 12:07:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB520C433C7
	for <ddprobe@lists.linux.dev>; Thu,  6 Jul 2023 12:07:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688645228;
	bh=E18cWEbf1g02i8YYrrsn3Ev4rad5BbJT5U2HqeLDAoQ=;
	h=To:Subject:From:Date:From;
	b=OcmjSqYM5IL0vTI7dcaoySSQuKINfHKmdpHkSqeRR/WFg+dVsYHfCTq1yulR31DxS
	 VkpcEVtLTK0uvJl0CmA3rehSGOUsbftloPHYL4FKUR7PJB502j9VkEUQNh8FgZJ05p
	 yYoLEU7ZVjwqZXuKZqzX5Ks548GZ8+bquCDxfrWTeBwHCYls+add2FpiVrAS5nLtGr
	 N2oYO9/zdqu/UyUTVkTQnHqVXqcUXKNCeqc1R3mNMsuS9jmOjHd35393oufW16dp98
	 Gfb8AWuGiz73XemFbiSWwX4bi8Dbm0SA9mheQwqKwjpjsCCXzW4V2oM3OiGTxHoG8G
	 4hhNHvPkk+JxA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A5EE6EB64DC
	for <ddprobe@lists.linux.dev>; Thu,  6 Jul 2023 12:07:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168864522867.11020.6310504480851001191.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 241901448ef259588b730dac08d47e0f13019517c416cd69d75202ab9e794ca6
Date: Thu, 06 Jul 2023 12:07:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688645228
