Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 58809FBF4
	for <ddprobe@lists.linux.dev>; Fri,  6 Oct 2023 22:47:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YyrDl98M"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C59B1C433C9
	for <ddprobe@lists.linux.dev>; Fri,  6 Oct 2023 22:47:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696632428;
	bh=ojnBQp2nBXcfvV7RIovu4n9kw+mbh0HcurFEnJnp6Qo=;
	h=To:Subject:From:Date:From;
	b=YyrDl98MIVE02H3R8oR6/ZpmSxxMaZboKHGcdgSwhuNIiz7rPG6Knju3F5wf7SUFf
	 MAWf62H9I2eFStG0bhyv+t5BQhpxnqv1tFCMFmulDhMsczqp5H8a9bp+VNVR1rODy5
	 BtsLcFfdx5hrN/EpF5FobGzReiZpnGL3HcXU+1iaR4yQ8gYS9zvr58AWm5HGqa/vFf
	 TAhQty9uAnjRxma+BmfaHNkfK4RC3o9WlYgTb+/um/hxGnEd0NJUF1OPF5e+qc2fKG
	 ppaTqf75o/Z6Qk/pi+dQIR49toeDjhNs4Jdnn58naQvh+VAdfnWDHnwDtSq83fhhX4
	 JKvqXS3TYe0Wg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA00FE94136
	for <ddprobe@lists.linux.dev>; Fri,  6 Oct 2023 22:47:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169663242868.7478.13956347885444210732.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 79caa6b66a026cb248d534a19442064ee95ba2c8db73ed34655babd9bbe26175
Date: Fri, 06 Oct 2023 22:47:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1696632428
