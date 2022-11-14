Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C06FC1877
	for <ddprobe@lists.linux.dev>; Mon, 14 Nov 2022 08:30:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 67DC6C433D6
	for <ddprobe@lists.linux.dev>; Mon, 14 Nov 2022 08:30:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668414654;
	bh=GkeGHYnokH+NBeLtNHTJUYeS3volSv/k0Y+UO4s7g9k=;
	h=To:Subject:From:Date:From;
	b=SOrjlkJbEds8Y/jNGSGCYSzPWSG0Gxa/4Un6VkFvQddJc0R7tSyxDUKgQ9s0KfHer
	 MoXAPHMF0L8N772hAG64bA8VW+3sBw/lf09F1XOTASat4WBT2flZHyor3BgNKWBG67
	 7/BTkj80gkkV1G/7/5RadoGPGzRit3sWWC+bH8RJ3zCoWyN4Gxvod9p5dC27wY0ap1
	 BIrzJZgsIfGkuhOCfEtxPDuuVBYTfp9O1iafkdF4YAXW77eyPc6SxWfMx9X9Rr1k2A
	 YhCYObM/ZN1QBFyQlt6hk1LbyK/vrVRsXEhY391t608hkELSxwxJeg7uh609KxBo9l
	 rLR9fsK6KqKbA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 510D2C4332F
	for <ddprobe@lists.linux.dev>; Mon, 14 Nov 2022 08:30:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166841465432.10708.12902293650589917436.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6496c0e9f87aeeb0cd3ee09f670663f6410764c408a2516fce3671bad9691270
Date: Mon, 14 Nov 2022 08:30:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668414654
