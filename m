Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B90AD7C
	for <ddprobe@lists.linux.dev>; Thu,  8 Sep 2022 13:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 783FEC433D6
	for <ddprobe@lists.linux.dev>; Thu,  8 Sep 2022 13:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662642053;
	bh=0tPhSNLtcvCFTGe7UV4zjiFDfHLe2R1ZDDcGXCfQ3+k=;
	h=To:Subject:From:Date:From;
	b=TnlZkmtLQjzjslD1MV9I3yLE/cg7pXwKdQCnuXrfGdE+cecqsBEDc2NfaChC43Km9
	 HQU6bq1xRNmhazYHbFlZilBNqbZtrrf9VZ/WFwyVEbjCM5mLi5E23kJoQHxLxDHjQ7
	 L7hZepFzL+znp+zSY4JLBFcSlPlHHl+txMbv3Ka1HOflBNgwsnu0IgU1Tz40fyW/Dm
	 6Szevow748KkebydSEPFPd7v01CalaMMln1Hyc/ZaTvamDd2RvD7Z1uQlh574iNiRr
	 v9n/pCTRfpA2F8ajY3bDoD9TnxpkSwVJFaA5KGALCtt5XmjyHsr63PXY3tm0VL4kv+
	 Me1EjLxKvhlGg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5BF86C54EE9
	for <ddprobe@lists.linux.dev>; Thu,  8 Sep 2022 13:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166264205336.19482.5058198158662005570.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9b1dc743849fe5cf5dae45f630532cfb1e66c990ef4f4f49349d4950a82d1637
Date: Thu, 08 Sep 2022 13:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662642053
