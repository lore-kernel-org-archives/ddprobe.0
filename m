Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 17514A47
	for <ddprobe@lists.linux.dev>; Sun, 19 Nov 2023 01:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qGXBZsOt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 84253C433C8
	for <ddprobe@lists.linux.dev>; Sun, 19 Nov 2023 01:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1700359096;
	bh=yqnEIhF1a9ehybQTQVWB0H9U7ET+zDRIsZw2B+pewMk=;
	h=To:Subject:From:Date:From;
	b=qGXBZsOtYUBhR9XzG/OxPH2zZZ2OTvNrESncOITvTEukQE97rA4LFCI4FLKjNK/i/
	 ATE7aiB5vXj3J4tREnUj845wZOZLY3luYA3gQY6HGmedDUvWdhQzO3N8odVFrr3/ik
	 ezHHV1B78dWB/O0zHi+GyxlQuRoSThid947XGiz6kSk8A+6iQp2E6CYKB8mOUs1U6x
	 3ItRlsUhIljgPk4af4dOCMpYPMvGGhQ+xNsT5+QLIZNYrsV2Mc8Wfvkir6ZbBjUINW
	 pTbmUIdXVK2sIsX4X3kYBIpY2ezmRy1qVlcnXQ24qWsaeepfKo9Z57MWH+0x0YoKSi
	 swiRVh/CDB0Mg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 68B14C2BB3F
	for <ddprobe@lists.linux.dev>; Sun, 19 Nov 2023 01:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170035909639.31410.7687148356875386303.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1e0f6ae3ae92f6d90e91d499f80b981e3d31ff7edd224d87a7cbb3067617701d
Date: Sun, 19 Nov 2023 01:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1700359096
