Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F2B68A94F
	for <ddprobe@lists.linux.dev>; Tue, 10 Jan 2023 19:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 99D2BC433EF
	for <ddprobe@lists.linux.dev>; Tue, 10 Jan 2023 19:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673379687;
	bh=sstbFDdCuZlBogDZSDh+tl0bmCvlRWa4WEnI6NiNPcs=;
	h=To:Subject:From:Date:From;
	b=M7pse7jJ71xw12erUBXaLea1CktX9LUvHOuqkHfpY/UiJZrukH0n9JAZ2UM68/n0r
	 XPPkm2D4/8A47YJreiir2gWuBuYy0Xkh598krwAol+rAHWRntS5r9xTyVGz1hrkUE3
	 VVKskBZ8ufmq75pn0h8vJ+V/kULg7Kh5nyi12Bf8L+drxAs88jnBO2M8V43wSMFMls
	 bDcty7HAqfxq5q798/qdHZzO4YA4ZyTL3d3Xd22TeHEhh+yWWJnylVHYzCxLJmwh1G
	 dylm5Kd/zMRbO+MIb4kEAJXefJ0IUV1RSyjijR/RIgJlBunyZYRTAWCR8Ytp4EFvGl
	 rTKXgHFCaHL9A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7B04AC46467
	for <ddprobe@lists.linux.dev>; Tue, 10 Jan 2023 19:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167337968748.14943.17726900125269646502.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2056649ef790a10bc5bdbc5139038ddb1396276ffc3be5c6a5fe725c64c5a85a
Date: Tue, 10 Jan 2023 19:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673379687
