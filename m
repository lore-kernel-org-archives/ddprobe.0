Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A12410FE
	for <ddprobe@lists.linux.dev>; Sat, 21 Oct 2023 05:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lxPhtDlS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 87B22C433C8
	for <ddprobe@lists.linux.dev>; Sat, 21 Oct 2023 05:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1697867896;
	bh=YylKTpwjAhdsFdq72jCAViyIAb6ENf1tdzDuVC6uySQ=;
	h=To:Subject:From:Date:From;
	b=lxPhtDlS6qoRVFDs+P2qftZ7qUslfPdUKmEEnAyyP68Vx+44YfoBIY99Q943SQbad
	 AhACgtW1z+fwhn0CsFyVr37Vh6voK5T2/ruGblcn2urn8I4l1w0ahWNmONILMm+V7h
	 wB2lzbSoydxLwZIjrVHh8rRWFfzg2Up7vWeo+UAzeB3U8muNoccgrfsS0UMZT9rOTZ
	 20eSnEY/uQmkYEB99s4tf3clRotZ99BRVmkxwM7Lz23Le6XTOykpbiU49tBdwZnaT0
	 KmFl4eCezFQJrYvImXHeHxIohtk4352IftoGQk770isNok+kTp6bfKmXuYGhUhL2BS
	 g93PNks8KGFug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 67E8CC001E0
	for <ddprobe@lists.linux.dev>; Sat, 21 Oct 2023 05:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169786789641.31665.8650085508921240209.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8ad526c9752548c9c250734de2ab7f7e1910cbe8424857284c98628217159d8f
Date: Sat, 21 Oct 2023 05:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1697867896
