Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E2CFA923
	for <ddprobe@lists.linux.dev>; Wed, 28 Jun 2023 10:23:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id BBD8EC433C8
	for <ddprobe@lists.linux.dev>; Wed, 28 Jun 2023 10:23:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687947788;
	bh=CTfjEWIq6N1Yj+EpLcA1Ldh0rLwb4D8FeLT4Hj2CcJc=;
	h=To:Subject:From:Date:From;
	b=S7YJgXBQkeUdvSD2ozrikf8DXXDjBVmaF5jIWhd3ORd5AajA+Edr7XCpOG1lxr86n
	 WV9/3iJPqX1+FXDRP32fNqhjPPCoX8RHG8Ta0z4pYUXEMgLO+OXw4CPm4QuHUuBApw
	 o4JmRIbrOE2DgbhqVRVyQHBSM1kk/8krZl7rBxHH8Q4BCstBbM0/66lY8TISldZYIz
	 gTMhR2qD4Syyjtq944fH+VNmI3PVRFN0x328wKRVRA4hm/iduri0zOjfKeIQlV+YZw
	 HubXXGOB6WyaNEZdnhM4NLdYQbtgDmZ2cHQPc0X/bv8bcFSxLzCGmlz+zLVBgvguiZ
	 PLxAFc4E8tD1A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A4D5EEB64D7
	for <ddprobe@lists.linux.dev>; Wed, 28 Jun 2023 10:23:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168794778866.5833.1391153779393226997.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a2ad528537b1304f84028a69c5ef33584f735d4ff742d8e6991997989fcb6fce
Date: Wed, 28 Jun 2023 10:23:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687947788
