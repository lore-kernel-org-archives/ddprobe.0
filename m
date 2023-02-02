Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3FDDE63B7
	for <ddprobe@lists.linux.dev>; Thu,  2 Feb 2023 12:46:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DB720C433EF
	for <ddprobe@lists.linux.dev>; Thu,  2 Feb 2023 12:46:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1675341965;
	bh=5ZUjyvKMLaAU3/M/5s1DMvrdRuMj0YM7OkrWL7zXfw0=;
	h=To:Subject:From:Date:From;
	b=P5O8sH0kQQpRVSxFnBb7fnIReZgf3ufbtuu8xPrWJCVLFLS9UOdjTShRSm8lymIHA
	 LJOeJeEORzQr/RNBj5D1LMzA/46ezVm5k4vfnx9QXqoQcU1xEgO/Pq+9DRpg19VQke
	 A/Rbk6IQjey8iM520jljhlZF9Gc3i08NOCg23UjwqtnN3umkdW244GfBRL0aBQdWtL
	 NbjSCP0/OTOFqzeKTLnqdQ549E8/IUAvVTydZP6eaGbi+PUFpAaWW3nMCYxSIVbeaL
	 LtiASi4NjjbMXmBONbpyS5/AWvJlUCp99755VzBEPvOouetYn3Rwbv0RSfCaHh/YIV
	 /5FCddfmegiSA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B87D6C05027
	for <ddprobe@lists.linux.dev>; Thu,  2 Feb 2023 12:46:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167534196573.10606.406066511945087575.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6e93872a2a79a8981ccee48608a4166a149f830996e1ab3fc86a8b8b5bd13b84
Date: Thu, 02 Feb 2023 12:46:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1675341965
