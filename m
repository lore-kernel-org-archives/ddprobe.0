Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1EADCD2E1
	for <ddprobe@lists.linux.dev>; Tue, 14 Nov 2023 05:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IcpYGZjn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8BB41C433C8
	for <ddprobe@lists.linux.dev>; Tue, 14 Nov 2023 05:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1699939096;
	bh=1245NdJP9Bv5zaIppGjFQc8DCmqJcFB1SxssrQJOuvM=;
	h=To:Subject:From:Date:From;
	b=IcpYGZjnw5vfqQ+VSSXHEcf/GNPqI55OwYnN54JE8KpZIl/V4qnbmDJkqr2IhKKcK
	 j1B1X0VvEOaxXL5fkrn+M4UU1yRtUVLjeSUOZpwMXt9YXQDCD5gjQTALJTOnH6txK1
	 oBRWUHAMoMx9BvNiXZPTSDzrWZpFrn2FiixqCafE9lYDhhuyc7MRSQ8ZivZ6XG2/nJ
	 BXicsC8RfMwLNsoqrF99pIQW8Ip9F1Zdv9v/YSB0KjsPXAsRCead+jvJAXbkwDB3sZ
	 JhLW9b3QhSfkYPyQUDlaFDXF+ArSXQ6ig3HWULmPDRIIo/K2SVPv/3TPei3d8fTY4O
	 hIIWGtxVNVkiA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6D2DFC4332F
	for <ddprobe@lists.linux.dev>; Tue, 14 Nov 2023 05:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169993909643.27240.15383161722013578177.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7c42cbcf0ca8707da93b3cfe69ac581f19d312862b508e7215c7959b31e29ba1
Date: Tue, 14 Nov 2023 05:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1699939096
