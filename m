Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6CE3515AF7
	for <ddprobe@lists.linux.dev>; Sun,  8 Oct 2023 19:07:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rvf1Dszf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CDEF8C433C8
	for <ddprobe@lists.linux.dev>; Sun,  8 Oct 2023 19:07:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696792028;
	bh=+1u7RvOvw4LzVBWU4fuEA6gV0QwU1Zl25QmJdhfoUIA=;
	h=To:Subject:From:Date:From;
	b=rvf1DszfoORKTYk7uhey0i0REx4U0VzWjAMDm8jZlH1sAsobyVKgnJjzgko6ceF4e
	 xy9aDTP4BPdE0/7XihTqVXT9rMt4rWBn32KY4rxZAsWdMLn/LUNUf5W0E9h5a2jjuN
	 avUuDruBuLUTtrdoaSkvyr/g2CJVE4F2fcjOu0odVhLbR92mhw0YDy4RbEMH4fwBxM
	 iMiWbGrSn2+EW6TyS78unpwcc6VEArAbojLJW0bzHG8Pjf15HeZKUak9KcrwFp8ISV
	 x6wNRYS3sVPnKiID81/Ki5m8i4UGayqUld7umQ9NYX9LRRxKpR2qyczXotchiehZBh
	 iMpG1gBxfLxQg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD197E95A67
	for <ddprobe@lists.linux.dev>; Sun,  8 Oct 2023 19:07:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169679202869.2225.12166798385482960808.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0e7323c8244af6e6d411690aa16337aa0e9faf4b49a3a7bada5654724349b559
Date: Sun, 08 Oct 2023 19:07:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1696792028
