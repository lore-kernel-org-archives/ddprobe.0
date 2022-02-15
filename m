Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 87685158E
	for <ddprobe@lists.linux.dev>; Tue, 15 Feb 2022 17:11:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1644945085;
	h=To:Subject:From:Message-Id:Date;
	bh=xAHzGCjRnwMcxMnmV+I6zJSRsy2D8vKSUWLbbaCv71o=;
	b=QIL6jTrRRV3M2wyS31Jt58MeF21MxSGJ5oCa6ZgbEvg9jqFS/lM2aVr2lwFmsaup
	LLuG+r/8DdtO/fMFH3SkPXCzbUdsiX2pagsquxCkJahLmeKwYLIZDprsVXka72Rv4qx
	VsUo8i+hSNhvitTlfwrmXmHalUg+H5gDmzWTWoBA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1644945085;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=xAHzGCjRnwMcxMnmV+I6zJSRsy2D8vKSUWLbbaCv71o=;
	b=WcvM5MYJoN/3WA3OU/qL7WhQNWvXjMtAlf2iJorV/UQ5FBkn1PTmsrP+9uTCv1/w
	G0tGe8oKfZOCq6lj8qmutKAT5F7w0pGtP8M9s7qcV4w8tzB6FFqo/t8OKeolFTpbA9Z
	O84MvgqPWftcrmmnRIgzpATr/dT4stf7rGvE4k3E=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017efe5e118e-d9ea5203-e7cf-42bb-9851-2b8d6e2789ee-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 0777d29e7edae4a5aff7c38ff7ce19a401d70abf2de7762fc834d5637169c117
Date: Tue, 15 Feb 2022 17:11:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.15-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1644945084
