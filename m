Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47638A2A
	for <ddprobe@lists.linux.dev>; Thu,  2 Feb 2023 04:36:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DDDB2C433EF
	for <ddprobe@lists.linux.dev>; Thu,  2 Feb 2023 04:36:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1675312565;
	bh=TCGVFBPJzGAxyqJgyFQSMDNYtFr6vEbtJ1YYYD+Fac8=;
	h=To:Subject:From:Date:From;
	b=ZCb5533sXjdLZHqWMBrHwmDsdyMRNqr4n1FeOt1fJXWma/nbSgIXh1spmKtkOIQX3
	 O150Q03C0T50RfSaCXtZ71SVuqpZ8VvN1wyckUQwbizftPrHUz86mL2PonCGChETZE
	 T00VRvgdZbQtBoiRw+5Uq/bDxvQMWAJV2zeoESpAurx+hqcKh51+fIhpP90ND+2D9q
	 1J9lrMvVhbekFzLnm8U34NuWp5B/8cM3ireLTe1lsBhAYlOd89+6e7vNGSUnRWLzKc
	 T3hWjXgb1vZpScutXAQ1YKIh1qOTfmhKve0i/SAh1W1uQiEZKdcTXOGc+18iGUvxK/
	 j/IRUv0GpHmRA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C1552C61DA4
	for <ddprobe@lists.linux.dev>; Thu,  2 Feb 2023 04:36:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167531256576.13738.7077497555708078436.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2840b4c278c3bd7c4967f439156e71d0083c7e5bca0448137458f28aa444bdd2
Date: Thu, 02 Feb 2023 04:36:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1675312565
