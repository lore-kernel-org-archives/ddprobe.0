Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CF0D03214
	for <ddprobe@lists.linux.dev>; Fri,  9 Dec 2022 21:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 80A53C433EF
	for <ddprobe@lists.linux.dev>; Fri,  9 Dec 2022 21:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670620287;
	bh=uX2hRWrMfs7V4diVRyyhMU4tkvHijVnKsXwn3Dlh6C8=;
	h=To:Subject:From:Date:From;
	b=X1kdOxj5RX7zbdVvFokPgcO7jnMJ4ywpQFdToUyk0YtL+vkmDUShT6yMYuIJzA3DX
	 D2H7figoQlzWrnOSOpUPZq52BcVStEj/JVXB9EZfbB53E8fjO7uNlj919FNsTn9Zm9
	 wAIQ2dz8Hv0NswEGnlWIWvDntSNPczfjS9sQLOKZn0byRCHsFGZE+dy+5pVoAOjIan
	 DQRCM/GmKuFp6e1R67km1u3XjDA9JQfecXZ04BrV9prBQr/qLs5TvWhGONdEQaQJZx
	 QjSMPDTGeVAdujzgGtm+HvcuE8HVYjSmB/66cEL+Dfm9qTF7UUuFJH3d5iX7eOPg/+
	 kTai+CAR83eiA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 63702C4332F
	for <ddprobe@lists.linux.dev>; Fri,  9 Dec 2022 21:11:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167062028739.3090.2295874154829710371.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9b6c3ed3cf6bf5b6ccb6418203a97580bab6f3a91d0680d7aaa2c6fc3113e655
Date: Fri, 09 Dec 2022 21:11:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670620287
