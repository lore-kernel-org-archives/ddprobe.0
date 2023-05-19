Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 637EAAD39
	for <ddprobe@lists.linux.dev>; Fri, 19 May 2023 16:58:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 0C9C5C433D2
	for <ddprobe@lists.linux.dev>; Fri, 19 May 2023 16:58:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1684515486;
	bh=QBuXO9DYDPayn9kPKB8GrIdQz4ekoS/DwTrOzBH9hqo=;
	h=To:Subject:From:Date:From;
	b=gEf2B7nHXKRyI6hK3SrI7/aTHCx3JhFv+19/OUFzJy1Nw8d9Jgmkm6nRGEjUy18GW
	 Ix0o5FR61OyU6Y9li1FgYBwidJ1zlYqBC88fUzt052hYYXB26TSaDaMvsbNJ0tkYHP
	 FzVmYPHFUgxBoprlMlSlgXrIqbLxVEXve73MiMOY7QNKWA//PeHZHoC0a0z+H0fCOc
	 xe1DAENBMueul7997ecVhRK7nLaoRfgw8o9esTuMZohQHg6CY7PMYwBZB08RoC2aoG
	 WX3NUtucbdh4dmbJe+a+n6YA60YY0Efq2YwOTgH2jCutHqDJzwCyueTyhov+CNC2SS
	 lTvJ53RAc72Yg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DCE85C7EE26
	for <ddprobe@lists.linux.dev>; Fri, 19 May 2023 16:58:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168451548588.17688.410377560586249477.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 278066ebe8a23b252691182816ad70dce7b0f1416bbc0ae7b352ae19ad2696ec
Date: Fri, 19 May 2023 16:58:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1684515485
