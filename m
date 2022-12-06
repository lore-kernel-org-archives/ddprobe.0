Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BB7B420EA
	for <ddprobe@lists.linux.dev>; Tue,  6 Dec 2022 21:00:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7056AC433C1
	for <ddprobe@lists.linux.dev>; Tue,  6 Dec 2022 21:00:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670360454;
	bh=UiqVZKpp4CvPc1yZtDMs4JlDWGHQFqSMavAxZO60n7s=;
	h=To:Subject:From:Date:From;
	b=d49Kx0FhGy471iqR0ihCUVrb1D4SDnAPsf0qMmppKuqo39FvpjWST1Kym/I/Ha9Yn
	 imH7Gmf0YKBJtIvZVph+a9HiqzUp/pOrYN/XdmZs0bA2+2WfYLyT2F8t9eTjRtEZTR
	 XEp+R3ObSxPJHkkKtoUNkx/Qcr2KtYgrnjCrw/FrpRMX8+LcDHceby08/ePe/kUiVS
	 q7g5m2Suwih1IYpggf+knI0ctYhKI1uNwFUpWduSgCV/HEYhkhtBjGjufqxQGJ9VxV
	 VtLiQ+vzFpA179hY9ALnmUK/I1saWmWDfo3NvQYIfZ/ECQH7BMVAIy7Xw17phQxy/F
	 4L05LzydHJ5+A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 55DCCC352A1
	for <ddprobe@lists.linux.dev>; Tue,  6 Dec 2022 21:00:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167036045434.25351.11471427255673796638.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b4119f96e277016d0ce61be21e0ddd17022f63f773019eb50a23b46f63fa211b
Date: Tue, 06 Dec 2022 21:00:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670360454
