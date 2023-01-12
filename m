Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D8864137A
	for <ddprobe@lists.linux.dev>; Thu, 12 Jan 2023 09:21:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8BE16C433EF
	for <ddprobe@lists.linux.dev>; Thu, 12 Jan 2023 09:21:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673515287;
	bh=sjDKPcZVAm0xCv6HBJRF77xLo9PjVFCtA3qQbcX0PoE=;
	h=To:Subject:From:Date:From;
	b=YEQnGyTVN+7IWI2QDxTK9EejAs13lscKHy3f3l+qN2M+Q5j+TDvl5gcC0/l809mMJ
	 htJEP1hjNkvhEe6RI+QlKT6GbvEy2ASgbtQdkfsJo5VO1aPjwKni9vSTLHwId8myr5
	 rWvjoIO4pkDVqv0tqIIwJq1qvEnuFsMb4aWro48rOR+6mnwVtQKdhBkeg1AisLdS/Z
	 ZNDwJKlgLbLxbumYuCL1Y9JQ25WQbbyQvLRodbSbME194Y9denTmFtLqGLIE8Rckc4
	 btABi8z1Hyfmbyw11jAfPPeakpqgoVVrLSp8fhWzqPdI77eJ46001QldNeiDq7QgcM
	 FFoTVX9Vr1Mwg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 63D2FC54EBC
	for <ddprobe@lists.linux.dev>; Thu, 12 Jan 2023 09:21:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167351528739.19797.10991389581835484998.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 86cda9625c862c27c216f92aa4e2dc18c7439a6f0932a7acfbf3a61fc681dda9
Date: Thu, 12 Jan 2023 09:21:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673515287
