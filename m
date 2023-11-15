Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 030F2801
	for <ddprobe@lists.linux.dev>; Wed, 15 Nov 2023 04:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GKBIm//c"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7CC82C433C7
	for <ddprobe@lists.linux.dev>; Wed, 15 Nov 2023 04:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1700021296;
	bh=4EGbDep8n/BVOTsLeHv1bRNozDcD33rSHmBiyvhwMvM=;
	h=To:Subject:From:Date:From;
	b=GKBIm//cdzn/Utp+06btRK8Cpz0dDq21wKVBexsFSi6yS+t7LFPFqGjfLOoq6QgAV
	 qh2WmiLZ+avnh99t1RHaJkDJaBYieyVMOVknGdRq9MO7APtG2Rbmts57cxH4rmjCHP
	 awdBKRVRGCZAW2erMqjWmepNvztDMUXSrjfOv+OLaufZzomoPwwSSlluDdou/dhKPB
	 jakcsM4uVMcGTOvqzRTYjS7LWYTIB24z2KyWd5kEw5c4Q/A/bBwjbiCnoMPyO2gY6M
	 JTAe8JnSVoLK4UJiPD5H/bXy0HGW4E51rpfo8X7g7tPJ+kvmces+jEuWS0Gj9yisvO
	 I/e7P/2n0ofbw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 61076C07548
	for <ddprobe@lists.linux.dev>; Wed, 15 Nov 2023 04:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170002129638.12246.6029962023131683354.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1e070914da8ab243e8614689e4fd184e753010243312b2d17f4fc5cd1e9d5276
Date: Wed, 15 Nov 2023 04:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1700021296
