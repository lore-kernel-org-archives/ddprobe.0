Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8E63AEA6
	for <ddprobe@lists.linux.dev>; Sat, 15 Jul 2023 04:21:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C8BD1C433C7
	for <ddprobe@lists.linux.dev>; Sat, 15 Jul 2023 04:21:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1689394868;
	bh=zm3nbAfVF0PQzQ2TcrjWqG5jTMjAGAGoln0lhRfFD8I=;
	h=To:Subject:From:Date:From;
	b=BgivJLZoS5GylGrZoWLrvBp+NugCt3GOnZe9ZkKlxP8WMbY18fGNLcrqJXm8JPkon
	 Mu3KVprDawPwDA06ZDqExffrrFk8re6/ioNFsIvF2i8bubUbuL3PGICBkuBswZEj8Q
	 yCfVJ5dHUnQjyLK1/asZ5APururv5EbXZvPZT07JYgUuqND3nL4GCihIbT5G1MSX1T
	 MEhFUvBoTqybOAmwqnVGPSQTDLDM5ymsSLDouB1sSQdi4GiHBIVEvAZXbvHA/24H2V
	 EgRWYhDpoYRtpgjF7mWSZ9Nq3dAcQz25+KKs6IDMrnhhNkKJcUYAjqJb8pTko6GyWs
	 qXspU4cP5ic4w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A5C36EB64DC
	for <ddprobe@lists.linux.dev>; Sat, 15 Jul 2023 04:21:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168939486867.3738.5676595074751933487.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7c5f8bc1029c1d2ca8c30c54880a4e921e1becbfd973f893bb4aaa687b7fb93a
Date: Sat, 15 Jul 2023 04:21:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1689394868
