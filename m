Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 94F88101D0
	for <ddprobe@lists.linux.dev>; Thu, 12 Oct 2023 08:07:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="O3/EP8Uk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C49CBC433C8
	for <ddprobe@lists.linux.dev>; Thu, 12 Oct 2023 08:07:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1697098028;
	bh=0YLSLfkfTQ5pvv53PcXXzT33lbtRWhWY43kvQrDznH0=;
	h=To:Subject:From:Date:From;
	b=O3/EP8UkLs79h5zhniXyD+mwoLMjWjYSTMrAdKx7yXvaIR4WgGW1I7kZpBcSCSCZN
	 qYjs66F1qpK4qamvVW4FHpaF05lNAN8DFRcQkpmrf2mgmIxQILO9RIZC+NioOopUJd
	 tYRliXV0kherMQePU/vMFF4CrKHjb4fA+UdSAUGldaCWLv55oEKiXpDCDNhRwsyqmX
	 uXGHfKCvnEpvOHpszEmEPEyN9AHc0e2gruRZw3DvMSm9YNZbpVr4JYCrKzAxvZP5cW
	 nLtCoPJgyJXT8iIogdkqzyhH3WpyObz7zMaK4DcfOtE/JWsadU5USp898IEndLoNIn
	 j3Bjxzp52B+OA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA05BCDB46E
	for <ddprobe@lists.linux.dev>; Thu, 12 Oct 2023 08:07:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169709802868.19871.3410572723126756718.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5cb84e5e6f3a0006e975f25bdebb0241e9a8c9e17b246f5f95e43c23317108ef
Date: Thu, 12 Oct 2023 08:07:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1697098028
