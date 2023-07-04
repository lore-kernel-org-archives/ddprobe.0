Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 78D606128
	for <ddprobe@lists.linux.dev>; Tue,  4 Jul 2023 18:46:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DFA4CC433C8
	for <ddprobe@lists.linux.dev>; Tue,  4 Jul 2023 18:46:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688496368;
	bh=1e90boqEmgWoy8dAoYg4TWrnpKJn3SqGClEetPAoyEw=;
	h=To:Subject:From:Date:From;
	b=SmU+yoMnEfHlZg90YjmtZlhB4fR2J6aBFEyso+xH7AXa8Fj0O7GzDPo4Oyrt/yQmv
	 9Tn0z7vTFOi3EJyv45oxXZ1WWE7Cby0T9HHyUTH+DSSI6sYWIsfDqN4Lu8wgxVGqry
	 1m/5Db0rydkJVJPd4xO7T7zOaXOC5H26U07zYAd82ytyetYF362b9mlaqFazWLP0nZ
	 g9ekxtxY0++VHIYtp/7fRFMShbg9gFz3IM22V5D5MxN18z1lT9DwwKFhGCv+8XaCrI
	 586rpPWTdtcPDiJ24ciRF0f0YdI9+wJ++YXoxze4/T2FeQaYY7AwJwl9ukoqQtN4g8
	 mkha32IzO4uMQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1C62EB64D9
	for <ddprobe@lists.linux.dev>; Tue,  4 Jul 2023 18:46:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168849636868.29697.17747715396022348092.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1dfbf30ebb30c60c1545730880fc08f8d0a3d5435f4623f1ef42615efe13b2e4
Date: Tue, 04 Jul 2023 18:46:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688496368
