Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D57157475
	for <ddprobe@lists.linux.dev>; Mon, 12 Dec 2022 23:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7CDD8C433D2
	for <ddprobe@lists.linux.dev>; Mon, 12 Dec 2022 23:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670888487;
	bh=JovorXOGVBTeM7fNlGOlsQEmf5isTaz7JtJkDtSlcL0=;
	h=To:Subject:From:Date:From;
	b=MfH+tZFMu+T1bsv3EXjtFmzJTCDQSue77lQaY3awjozgykXeCVZ+JR5UnlfvJJt1F
	 llqSAJD2pDntYTfONoB1JRiR6Mjlcj/PDlanFwldgCnnhKH9nZt9vQxJsy+XkVKkMw
	 Ll/TUTAAZcyCfKFpckhrOFazdPMED3w2ASRJ9eFTd5geCP59qvZ3/lgmLTCn77hvgR
	 eFHpObydmkMecv9Gv44CyFd5q5XALaId7F3dJnqVKV1v65ntz7uM8pKA2JTXyQ6W5M
	 aQWaiZKIwjbd0mJmVx/cPl0x+o794XOU3iYV+f7/IB3CcSR+iEaVwozIL9bekUO8mL
	 UGKNvcP9ToaQw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 663D9C4332F
	for <ddprobe@lists.linux.dev>; Mon, 12 Dec 2022 23:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167088848741.12092.16728238948459930248.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5c73ac252cc839f710e00459d5dfc9c57aadf8df490aa17f11a078b4a86c153b
Date: Mon, 12 Dec 2022 23:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670888487
