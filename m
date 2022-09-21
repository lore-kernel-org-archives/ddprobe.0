Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BD8D07C
	for <ddprobe@lists.linux.dev>; Wed, 21 Sep 2022 02:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 722F0C433C1
	for <ddprobe@lists.linux.dev>; Wed, 21 Sep 2022 02:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663728653;
	bh=o1Zx5ZAtew9GiUVItvvxNbwoSsHH6bBeDvmMI0NhDtg=;
	h=To:Subject:From:Date:From;
	b=OqBDeAAqzm3D0CuWw6Ly4SilNV8XHED7ZyxKwKFYz5UuqAmk6pYKadGDXaqgo/idq
	 eEn3hhY6bt+8VkAbotVjeFYu0J3tErNeZdVMrRX0Fm5mr5TzCGw+u2QCtzjef4oz9f
	 zsnAUt92CtOT6oM/e7eIYezy9vEOFDlhNHdffrVMIwXljKx03d3T2L4aZxHUnH46vM
	 KQtTWFiAwP+5ljnSXRlRuycwpX2cI3KtUxKm3QgenT0MavTPdkzXrTLVtHr5H5ZkO/
	 oAFSPbNoamIwjCg3wCbcwo4AwUjAFfaS2QLcTEvEgfb9BDST7zqd1uoAfrFAIp+IFi
	 HfWJdNVhbG8JA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 51A22C6FA82
	for <ddprobe@lists.linux.dev>; Wed, 21 Sep 2022 02:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166372865332.12559.5348277815988139373.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b1e9a3f52e7c11425c7d2b61c5861f377d81bee679b120734ea39b916a5c994d
Date: Wed, 21 Sep 2022 02:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663728653
