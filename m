Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 56E04185F
	for <ddprobe@lists.linux.dev>; Fri,  7 Jul 2023 03:17:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DF76AC433C7
	for <ddprobe@lists.linux.dev>; Fri,  7 Jul 2023 03:17:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688699828;
	bh=2vUYqUUbowRFNX1jgjUgoEgln1Ty207du7pOhQ8CQAI=;
	h=To:Subject:From:Date:From;
	b=mDSsV4sYeXcdIeZXU+hnRjKPTCqCDLxiDQIBbAEBsvV01QrKiQfB+x+uaCUT7rvuP
	 F4e6JeG0mNMM2PwILPs/GJzpxqjNMxqNPeC95lKVPAmlDcFNoR9gHq3NvmA4qB5yb6
	 X7HqVBaGGgv/vHZGCk6Ojk3YU7r1JWM9GhPEuDxqDwgpb5P+8YLjzoJJYLGuBARNIQ
	 LdwM7beoORXmCJYL1RPymudTRXzOZd9rZKB+FfI717f2BKXm9nCXAbOyuUiBd2+/pZ
	 4/mmNyk/ilZqQg1lpbn+bsfT3PbOMwEDI4LHk2i5qSimiNGJtz0pxVdPUERMYiq+iA
	 wQEazcFAxcDgw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BEE47EB64D9
	for <ddprobe@lists.linux.dev>; Fri,  7 Jul 2023 03:17:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168869982877.11676.12692475195876802579.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 113ee89e02366511e1b5e2a220245dda3d49d95b74e475276bd8753b3dee1cf1
Date: Fri, 07 Jul 2023 03:17:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688699828
