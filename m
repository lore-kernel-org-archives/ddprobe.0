Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 336E27C
	for <ddprobe@lists.linux.dev>; Tue, 14 Feb 2023 08:45:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DE06BC433EF
	for <ddprobe@lists.linux.dev>; Tue, 14 Feb 2023 08:45:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1676364305;
	bh=JVcnTd5rDzNuRO82vVpNVdSC7zVqGu1Yts+PGUoiBD4=;
	h=To:Subject:From:Date:From;
	b=Vb8GmG4FeAqDq6RSxcDmwasFhxwyLe2EQGnnjul0d3744JsOnar1/F0oWoi+YLoo+
	 Tsr+XKml8dXkNmPmaEzz1mvUPaqnz26VTA0P4O93dsTel20bCJVNNM2VlzpJ52iYiD
	 x+DDgshf7WkXxaO3l3os0MA+31hPfjrs7xIv1c8AqC9PSRuqaQwfWAvYi5qOgDaHLo
	 M9tbgfY3DVR90C9+a02jggX9Po4+m5jAtQAyQjqNU7fQ8KiB8kWG05OThtau+NHaD7
	 CMsIcUnsq+mIc/ox66+67Cj70t5W+Qk2Ieyjz51JQ0Ax/1dFY6ZTxAGe5uxavdhQKY
	 JDxbRzcuYhJyA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BDA14C05027
	for <ddprobe@lists.linux.dev>; Tue, 14 Feb 2023 08:45:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167636430576.7407.10738482446071558002.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3451ae002559c74c60b93900a15afcf35ac1ac1aa68d320d4075fda24d4ce1b1
Date: Tue, 14 Feb 2023 08:45:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1676364305
