Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 63AB7360
	for <ddprobe@lists.linux.dev>; Fri, 13 Oct 2023 00:27:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="B1CmDvao"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C379DC433C7
	for <ddprobe@lists.linux.dev>; Fri, 13 Oct 2023 00:27:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1697156828;
	bh=B0ziftaMTtdV3+KXa76kqU6aeAQl0/Ozb7XbHT2PxDE=;
	h=To:Subject:From:Date:From;
	b=B1CmDvaoDjRycC7lDLC8jHV3Svd+4iAH5CaiCVS5nM9hohzgEsxUqg38lXwz+bjTs
	 r+V/APrJoWtOInropEDsS3sDQ+lg4gWOiRcIktJUMQmH6LrRK64GMJgn6s0ttbOIKO
	 wj9tYjsWq9bjM4QSLroar7k/znSCdDS1L2aT1iQCWlspKQp/MIszNh3vMOv/9DNqp2
	 Bl7fyf7pyhEoc7qBJxRVVQQ9UgCmF9/INvA0isYDInG0fQXwXOUMIVjYwXK3+Okt5u
	 JB/xnSMQ165vIBHKXm1eF1fGbk69iHXe2nMOHdNhwMcHET2O15baiN/IatvyELPdAf
	 J8HMQcgcR7HZw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A7506CDB474
	for <ddprobe@lists.linux.dev>; Fri, 13 Oct 2023 00:27:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169715682866.3632.2326855511728478944.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 582c754aa8f5322d6574f30ebb3208b4039dc072940d243f194fab000c012599
Date: Fri, 13 Oct 2023 00:27:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1697156828
