Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CF83B7B
	for <ddprobe@lists.linux.dev>; Sun, 23 Oct 2022 20:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6A5E0C433D6
	for <ddprobe@lists.linux.dev>; Sun, 23 Oct 2022 20:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666557053;
	bh=4y1jSNDktIneT95P3yzLC5AOA2gNMMOvE71gycoUCGM=;
	h=To:Subject:From:Date:From;
	b=YuqIfEIYKev1dKhc6ypXsK5qvxzUc6v5BQpwz0aNoPDAW6YUUfBdXMJ3NJbWYfYFh
	 h18eexwdmxOWiIBLaqI+QlZ8r4A1l+t6tWgFvKVIonk4iERd6bTS0+7/FejueMQDol
	 K+z5l2gmFgbniIzdw2rigkWi8H27GrAeS+JsZ97b4ikpFP4MXbw2Uiib0BAiwkGFVK
	 nv9/EzRrk9cPezVFR0k+E7gXg154TCW/a9mx6mpsPj8uhYQBpGwCR/fQCJvo0ZCtTc
	 k2aIGBbW2p11ciChnATlIgFOIZk9f2AVD6usiQ9kQ+J6Xva0ctZvFMvZH5MLB9ueOO
	 3QLZqcUwGg9rw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 51AE2C433FE
	for <ddprobe@lists.linux.dev>; Sun, 23 Oct 2022 20:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166655705332.3332.15940592506712088699.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 26c7f859176ff2db81c2705f2cb9c54b861cbf3083324dcc69c04ee12a13f9e2
Date: Sun, 23 Oct 2022 20:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666557053
