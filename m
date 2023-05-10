Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35ECF20B41
	for <ddprobe@lists.linux.dev>; Wed, 10 May 2023 10:01:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E0B13C433EF
	for <ddprobe@lists.linux.dev>; Wed, 10 May 2023 10:01:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1683712865;
	bh=akQ0YqdtRNNCzgd2iZ0OfqcL7a+tn937zRz8Y8Zma/g=;
	h=To:Subject:From:Date:From;
	b=ReOZxgcFO2kzLCPNHG0672/lLcU0I++zR9beJm87sC9B9sP5OJEAsE/regK/tgq5t
	 rSxfTDCo7Qkl0s6mJMiSpixJV4U0oGwhEr+VNuTG6URjZLKnFQ/MtbyORa4PSinI6H
	 wMtolzMeC3Xeko3vVvJOId32lR6iPUIRTDV3pA+S9IV/f0UFi/3ghkpcZdb1gyk41R
	 CgvTPirXF3nW/zGfBhFITvQ5wXUrEZyPZFUPN6aFzalw6tU/bmXr2kwzb7NtVFSt6p
	 X07FAn6yamQL1d4dYdkmrYa4Em5fh32z1xMOf7mLxFMpELBHFyOPOoKXNm3CfCUhTo
	 QL/cIdgubwlKw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C2CDCC7EE22
	for <ddprobe@lists.linux.dev>; Wed, 10 May 2023 10:01:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168371286578.18190.13656385204323688765.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 18065981adebaa5819710ac96451176a923d38f917080b25d8d21de6099ef3fa
Date: Wed, 10 May 2023 10:01:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1683712865
