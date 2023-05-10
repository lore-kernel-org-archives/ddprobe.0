Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B21920B26
	for <ddprobe@lists.linux.dev>; Wed, 10 May 2023 10:41:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 01C3EC433EF
	for <ddprobe@lists.linux.dev>; Wed, 10 May 2023 10:41:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1683715266;
	bh=6T1IwKhY7S1kUFHKZL5jvciF5/pglXGHmHhuzZQOD0A=;
	h=To:Subject:From:Date:From;
	b=ZQn4FynJbi62K8dpdaoVz84Kj5euUSs7VU4ki1WajYnm7xBAn0UtIDj3dyqMyxDfN
	 eT89hznOAopyXpzW2xil72zDjdVlNELJeiurYZcvjjLjq0Rj/OA2CDTTvQu1HDUmGI
	 Hq2n06Pk/OGSQpMS3LDOfMriGuoVi6O5sjCZmMbFqFvox4JgWBpGvNfKph91dy7lfv
	 1uyi3lfCoilY9HfNXmUoAFzLTdUBpT74fAOvHFZPTOzZ4/AERm2dakbLL9espIeuVR
	 Tk3+vtqJZFOYZzBTbxcr3Ipatidb8rMX85NLeDzQloXgAsPRYN0bve/DsG9FJBP87G
	 FF9rmz9eZxGOw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DB545C7EE23
	for <ddprobe@lists.linux.dev>; Wed, 10 May 2023 10:41:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168371526588.25208.10677789789621787343.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 85a7bf093b6f973ddc22c9742d9987ee59a9d0c02bfe87ca74e653e60b1b2af0
Date: Wed, 10 May 2023 10:41:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1683715265
