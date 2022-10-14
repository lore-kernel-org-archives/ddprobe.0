Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B79B236D
	for <ddprobe@lists.linux.dev>; Fri, 14 Oct 2022 05:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6C710C433D6
	for <ddprobe@lists.linux.dev>; Fri, 14 Oct 2022 05:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665726053;
	bh=Eo6SDgQMzlxA4jB4QVhbmpG6UKig2BG6x4nimO6Y3+w=;
	h=To:Subject:From:Date:From;
	b=srH+rkc9TjNkIIZ9xN1e/3j4BAegn8Yjrt3n2lRqUKCVUHe3UIai5CSC5IQmuDsDw
	 X/KeSLGZum/UhDgX0xXml9iHl4ErOTtKBaFDvO40rvG0ksVCzjhQCvr6HPg/KLnODE
	 acDtVDey9MI3SpUfIGjAzG8oWLsrodTlLC8i772zLl1zW+HrVXxNomWi4W802Wh455
	 ZMz5Tnntm9GHXW1SEYZyHZCvcLm+t5D3U/qsn2mKziHcDqwAegeG5PpOGUPhHrT9gv
	 ElFXwHMSy3SKPzbPr+sGdVD8D8DmL0Xg6hUYQwQLCnBglz0KduWNL1amYVXUY4i812
	 tgd2Xl1MaPEGQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 512B9C433FE
	for <ddprobe@lists.linux.dev>; Fri, 14 Oct 2022 05:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166572605332.14925.528367786124776188.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8ae1daa4a8f4f2f25065d650c84648f34d5e4c9233f87263a7eb31eb444f2c5b
Date: Fri, 14 Oct 2022 05:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665726053
