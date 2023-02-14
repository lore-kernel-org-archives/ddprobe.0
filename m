Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D9C5107B7
	for <ddprobe@lists.linux.dev>; Tue, 14 Feb 2023 11:55:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA5BEC433D2
	for <ddprobe@lists.linux.dev>; Tue, 14 Feb 2023 11:55:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1676375705;
	bh=2GB++1IG4vOfZ1AZGsSda1EwO7kH9GgNLqKHoh/YmFY=;
	h=To:Subject:From:Date:From;
	b=esFHXSPzlpNU31512JabzqISbeNhLniE6a4qQnlHGNjdRyWi+N35g4krs8zkFt2F+
	 Iz1jYG2V74sf+KT8N+9i2+wxJzDuYSG9lXKv8PH0zT3x9Qk7QdgRzUtFCE3fXpZQg2
	 LjjS7HgO2CxJc02CdtbqUx3nDbLifP7MWaUZqiL9PpCSuhr9G8MDeMOIOe2aE1zfKV
	 Iwp94XcrnwwZOFLanhGzMoaAISh6RP51psuYvReAnx4O8acWjOHOP2w+UbvHVEHlMr
	 5G9GTrVWD8gb26BUK3sjoucggKelYJzyCA4FTftW5dO6e2oAhhOfKLBGegVP9oRe41
	 kvpOH7LTWNPvg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BD9ECC61DA4
	for <ddprobe@lists.linux.dev>; Tue, 14 Feb 2023 11:55:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167637570576.23130.11992837911191998525.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 87bb4d3a28c8ff0cf58f08a0548042b1fa10a18e4a813ecdc5580ca6ac107027
Date: Tue, 14 Feb 2023 11:55:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1676375705
