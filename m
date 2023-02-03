Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A4711FB9
	for <ddprobe@lists.linux.dev>; Fri,  3 Feb 2023 10:26:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7B46C433D2
	for <ddprobe@lists.linux.dev>; Fri,  3 Feb 2023 10:26:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1675419965;
	bh=kvA9N3pF7ri7x8nqey872B8HUGGt7KlDOkJiMCr6kqY=;
	h=To:Subject:From:Date:From;
	b=MHToEj06Ivr0VCcvJ8oZSYNl/HtnhLrK98ER3avPeYBsMhMUqhPyJgT9kYOaeAueG
	 X5ipyZD8MPenR9i4QdraIodxelRtQvUndyzkT1I0NHBN13x5y/uk9H9TgxC4SSPTzm
	 B/I3pzI0UdHZtSLk3OSGcDOhNDcAtCiHD1Vza+4KtJpDJ9hD1I3f1EU+V4lc9IQpW2
	 oKpRb638P6zhCBVDhLXkt/npxKHhHxFlERitcsGeoq/IfiqIeyXNppWVVtPXj8hdEN
	 NWNPL7JDiGyW2RvQkSv6OhVyOAkt+vl6oeRYvhyxkmkxvLsajJ6T1/Gq741/1TV7VC
	 u64YRHDrjKZRg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B8C1AC63797
	for <ddprobe@lists.linux.dev>; Fri,  3 Feb 2023 10:26:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167541996574.20645.12237806670474646052.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1a2bbaca2ec201238f268d7058aedfc572a957cb27aa1bd707ea687b873b74cc
Date: Fri, 03 Feb 2023 10:26:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1675419965
