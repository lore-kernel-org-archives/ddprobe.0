Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C23597475
	for <ddprobe@lists.linux.dev>; Mon, 12 Dec 2022 22:31:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 74004C433EF
	for <ddprobe@lists.linux.dev>; Mon, 12 Dec 2022 22:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670884287;
	bh=kx5WRxJ1LCUM1laS89eVUmtaZRNqfM6NzGg51Qiu974=;
	h=To:Subject:From:Date:From;
	b=IV6W1py+9SNHwjCoo1ZQc0xTEoOd5eHoSW0DlP5fYs+c9C1rcY0y4bL5WecjVVih6
	 UwLZWKs8qe6hy9mrp7NX5S9wCk3rtTvIKeWXCElYdzZuvjytl6cWZIuCvnC4PKHhl7
	 quoroNyi277yu0SFvrwFIyJkOfDbPfP92eNAES5BMovKow/dhNQwjlHiBzZHYeOpZE
	 WfLY3YaE/B0iGF1XgA7yrl1fadESTdmi7uMwRCkOkilKWQjoIOvNlsd6ZV8nmB5VQ0
	 i8vbUWEnvzhCWfnaddwhZgs/5B49EWbwdld9KF7FPt8axVXO4EAA3kM4xamWgQKyDy
	 cDizVAuG6zCvQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5D6E8C4332F
	for <ddprobe@lists.linux.dev>; Mon, 12 Dec 2022 22:31:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167088428737.9627.17518666686389893371.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3fe1c32a1b9f7b71f5874700ca08abcf1c2c6280bb109ba8a9034b4dc0f53c44
Date: Mon, 12 Dec 2022 22:31:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670884287
