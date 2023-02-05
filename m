Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F8CC3205
	for <ddprobe@lists.linux.dev>; Sun,  5 Feb 2023 23:16:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D96C7C433D2
	for <ddprobe@lists.linux.dev>; Sun,  5 Feb 2023 23:16:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1675638965;
	bh=KnUMEV37rZouSV/YWyjDrNWko1fl7GtsqpzWLE+6Eno=;
	h=To:Subject:From:Date:From;
	b=j4RnnH7j9FhtzvVtodYQgxBrBFHLKRgiRR9Xsx3WWvbSp/UeI3riY4vlgKuNxI99p
	 4cY/x4lIsmYdVoDthaYJ46CrOQZ9nH5OI0BA2CohHQKy0YbH1Hun5I6ZnRCZP0SR56
	 gU5SGOIgs+R1J4qoY5a+7XhErLDi7GRXuXZ9IGgRdymaU4Ni6q2Mogy2KD4GacyZkS
	 IEVvtBBtjQDDm4vA8hlXYTrBP1wJ4PRq1FFEPLZAJdnW2yC1ba14t2WGT6gwPbGBFF
	 3+SItw8dIFnTsFpWCs+aESysLXxEp1TPXuGGmtX59jd5azKZdIiiAwtEppFO955zzT
	 xRSQ5+XMOBbLw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BCF77C636CC
	for <ddprobe@lists.linux.dev>; Sun,  5 Feb 2023 23:16:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167563896576.13395.28220854250407920.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1fe16b6a293db014acc0f1602990a55619b2460c365c6d95cb5c31720b128034
Date: Sun, 05 Feb 2023 23:16:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1675638965
