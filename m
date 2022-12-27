Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 05CC663A5
	for <ddprobe@lists.linux.dev>; Tue, 27 Dec 2022 18:21:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9AD96C433D2
	for <ddprobe@lists.linux.dev>; Tue, 27 Dec 2022 18:21:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672165287;
	bh=IxR0Ctbgzhtwc8tpIVr/yJ/alYAk+HzXGPf9SpUBpdg=;
	h=To:Subject:From:Date:From;
	b=EXCbTxky2eVZ4BnnQIURVNDHepAFOz3R1wc6wPT7hhJBUZhfbNSjn3qiM3jeU4F88
	 f5s9uSQPiilbrqKMTk66LUMq+PWWhi/BX7zbRcKI+UMMuT8kPkJVVHAM+qLKc9ZwLk
	 xjTuXYJ8bNb56ffdRgjKQVNj1cZLA9gOblYRoWdwkhZxB0B2sgAuzSk3uTx1u7X6o/
	 KqlKuFKp303JqpTG8stD+hcf7IZbttFtM3xa+h02/C4e8ZfYA7ozsyn0mHsiSexCQI
	 P/Mq4XwvAQkQBKsL8L0H8PWV1qbpJb3ZalXHfze44wUyHMTh+l8lM2Wc+Cag3mstlz
	 oMQBa9y/Jjiqg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7CBC4C4167B
	for <ddprobe@lists.linux.dev>; Tue, 27 Dec 2022 18:21:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167216528746.22304.16173551296326811820.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 97b1ccd18b594334ef6dcd897ae0b49bfd86b3bacc80e9d4c3b0db0811246137
Date: Tue, 27 Dec 2022 18:21:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672165287
