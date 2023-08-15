Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 549F0567C
	for <ddprobe@lists.linux.dev>; Tue, 15 Aug 2023 06:23:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C2B2CC433C7
	for <ddprobe@lists.linux.dev>; Tue, 15 Aug 2023 06:23:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1692080588;
	bh=xC4tiOVS/NCgBIQD4r0O7q0032Y1zSmowFpkEBXUwI8=;
	h=To:Subject:From:Date:From;
	b=EiqtVm7/NtYLO9NLH0OP1uuy9uBApmVgatCWqVxE7KajojjwMTDZzUR3lNbs+rfIF
	 7mP8TPkJ3+E6yjUkYcWh4hxUHg9vpXQ3sjc5CKmaE1zzqohXXuByFf1YsWgTVsl7qH
	 fGAQznAM309ibnuQ/00ntU0aqcrtAC6ax1enTExRxoZ7cGzryf2XpxntnNNQ6dhR3Y
	 SdhY6Z8wG3bFmB23gKcaxv74GN7i7jWmRbXkOCAmZfZofLctn389ihchagi0Uqs2jr
	 YjlijqAY6OTz7XkeTCPY2ZyatuXBVMYsE7J0eVC0tDlNATt76FhImdqiYviiA7mRXb
	 5nZLmQgbbXu3Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A63F9C001B0
	for <ddprobe@lists.linux.dev>; Tue, 15 Aug 2023 06:23:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169208058867.14377.10588928275562599754.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 84d4ae8ec68d044003a9306bbebce4f7050ed92b52bc2589dc43608af5a6483e
Date: Tue, 15 Aug 2023 06:23:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1692080588
