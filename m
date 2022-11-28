Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BB2C22F43
	for <ddprobe@lists.linux.dev>; Mon, 28 Nov 2022 11:20:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 68A23C433C1
	for <ddprobe@lists.linux.dev>; Mon, 28 Nov 2022 11:20:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669634454;
	bh=QBY4gNnBeSnAWdFYWU9YpsmAm8MIv2NVIh35Hz1TAx4=;
	h=To:Subject:From:Date:From;
	b=SjKlNNdKvKenZujmdACRN41iu6po5iAgQL8Z/6hCr8cxriKb/pwMOnPJYThXsJqyC
	 O3wy+TEBtI/rgOdD9Us8ACqxCPVK7sLa13MhsN8fLL569NlZr6xCzWO27qJoa9DEZu
	 c/f9Yn6U+Qq1nQxhsHzAmTxvrYHBZTerSS/JXkvKOtyjaJSlld501TMfCTzAd4kW1w
	 uRMd1lLEDmYkaEgY/tObDl3k32cP0FD4G/DmDLZ0g/YuL4D3kvpdWEkfyHp2kgqozL
	 N9OtOu5owEYG4jPXX462d1MwKLaOCyaj/Hgh4H65KnsZqc07TFdpslA0SRz4D7g/3e
	 ibQmYh6QG5EUA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 52A63C433FE
	for <ddprobe@lists.linux.dev>; Mon, 28 Nov 2022 11:20:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166963445433.27922.12863899536849746570.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6dce57a82d8c278b1af377613db41cb0b1697c3571165d0ff797a95c24b9ab61
Date: Mon, 28 Nov 2022 11:20:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669634454
