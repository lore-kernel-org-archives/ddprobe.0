Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 392277F
	for <ddprobe@lists.linux.dev>; Sat, 22 Apr 2023 12:20:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DD32CC433EF
	for <ddprobe@lists.linux.dev>; Sat, 22 Apr 2023 12:20:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1682166005;
	bh=O2q6tI0BXxxZmNSO5b3PlfYjQSnDg5CLb8Mz5cMHjts=;
	h=To:Subject:From:Date:From;
	b=FTRbAFRjTXnl16ciMWemNmxz5TSshqKAZk0PUDBpjChoA1HlqeWeUWrhe+Lt6Eliy
	 X+8g1YiW+lHgeSO/uJV4SJ99BHd0uGSsuiQFZyooiv1LPEB5IpoO78NKZLFACQnp71
	 scy3nnwa45Ean3ZoEcNiWmDPG4Am20EB1rs4/19mu1SG5D2AcZ+b/FCzIQ/qP+Xxcw
	 16tzXt1gHpTab/c3DQgi+pfH2B+IBARHKL998YR6GnNIqP1HI6S3mcgb21UJ+b5eTr
	 /aQRIBhImWwzOsJ02oQbh5VEmcYdc2nmGvcENnaMd3mczreP+4S3wk6wnGZ6u8d/gD
	 RKouHq0uI3WCA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BB4AEC7618E
	for <ddprobe@lists.linux.dev>; Sat, 22 Apr 2023 12:20:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168216600574.6653.4371306859734259472.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c4dee5d5d2800b729b943b1003cf3283665d3c261444acf59ffacd2b2565dd67
Date: Sat, 22 Apr 2023 12:20:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1682166005
