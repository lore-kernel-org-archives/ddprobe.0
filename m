Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A40772904
	for <ddprobe@lists.linux.dev>; Sat, 10 Jun 2023 16:52:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 20F4DC433D2
	for <ddprobe@lists.linux.dev>; Sat, 10 Jun 2023 16:52:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1686415926;
	bh=hdDzOzLaZF8e5XuM0DVuCYdeLr/Mup0T7NVuxReLwOY=;
	h=To:Subject:From:Date:From;
	b=U50wmacMPaS01Tew9qxO+F/29Q6oVtJbQ0iKcMgO3IURlwTCvSj3IJY3Ep6KIpe5p
	 i5GI9Hr8wx6fs8oF5ztweOnxsi8XVQZ9cBzJtar4BXScsApkQbnbwQC92B4Po6IwWn
	 ErjGT4cQnkZDl6t1GASTUivV0eSsZqgHkMWygV7gg3fScG78gfj8rGj5w47ORBeTqN
	 ciIM7ib+BlSiwxXY6Lr3//Furt2DUZTZ70EKqBGHRxNjb5ouC74XlEBNom7BceRx6o
	 m7pqj6gjiAsdnMYCgDcOi5ua5EXrISa6efm2RD48DlYmrVH2nzBc5k50j3F6nMUile
	 YXBPXGXYWnHQA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DDDD1C77B7A
	for <ddprobe@lists.linux.dev>; Sat, 10 Jun 2023 16:52:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168641592581.19812.8581917341957761783.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d553dce8b91f153890a7b8f11f6e489e176b8b4cce6eb502b2d914510acd368d
Date: Sat, 10 Jun 2023 16:52:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1686415925
