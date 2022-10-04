Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C506933C1
	for <ddprobe@lists.linux.dev>; Tue,  4 Oct 2022 12:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7C247C433C1
	for <ddprobe@lists.linux.dev>; Tue,  4 Oct 2022 12:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664885453;
	bh=+poj1/eCzTqS7fvbSnSbAVPgjGwHMHeRg1HLH+l5H/w=;
	h=To:Subject:From:Date:From;
	b=ODVIXnth5SV8xNCnD/nVzOATQJKHe/+qz5A4j6cdgmwZFM42n2TUIGSE2ETgbUGeC
	 FCKEVoG1LBgPgAndVOiQ0xD8PviHruaUaXzp8Lo4ddbt0L56Z+ATRPVBvnlElsPEpP
	 hU806qi/oDgb0HuIu4ZuKRexqt5vtal+AQPDCqcrQqB8g57jFiPlysA1Ihziwqvby+
	 sSkHw9OzCB0SP3gOWze+WRyBBTCPTqJQmVbGpsj0rQmoCTVjm8GkpTqZBglG/FnAda
	 iR9FymL34OB1dd9P8Wsn8pT5HfkP8Q/WDw/qz0gORUZSBbafwHkO8OtJEzrYpoM/O9
	 S/w1Au8UEaJ6w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 60957C433F5
	for <ddprobe@lists.linux.dev>; Tue,  4 Oct 2022 12:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166488545338.24109.11573122307324829578.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ebab59dcac79402fba5adb9754aa6503f9d549db2f49d093b2a611a6881f59a8
Date: Tue, 04 Oct 2022 12:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664885453
