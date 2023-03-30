Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BBBB1FC4
	for <ddprobe@lists.linux.dev>; Thu, 30 Mar 2023 13:19:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E1578C433EF
	for <ddprobe@lists.linux.dev>; Thu, 30 Mar 2023 13:19:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1680182345;
	bh=JxZ2jYjrImJUvI8QlHIJQAiLg+bRoS3IS/pEAOpiK7U=;
	h=To:Subject:From:Date:From;
	b=VCOkbPrINDO6KrMqyDs+53kjQYw4D+rs/Bc14/XBKLZfcpDOG/QETOEOR57b2A+DT
	 psDZLwDmtesZAyZkl/ZQZ28+wfqIAcdh7hZ+B6nz1FpSEyUbMhAjYA5O8HCAJdx8Hp
	 FdBokUv2AOkZsLF982C3H4cE68Mb1H6N/OC9XGhJtLm6aqJgJwgfHHwSxqYLBQ8PMY
	 G777aisGCGtzESJGzQi3b75wz35MW2OBWopsGsaBiXuG4KrevD8/37Qtpoc6ubDpf1
	 kXFfm15oVrSfJy0sZORHjnY5uMMXfKuFkFTjsFLJrMWXTfgV2BLhnBAXkrDfZdfQXq
	 P4ac/ILAlIKew==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BCC7AC761A6
	for <ddprobe@lists.linux.dev>; Thu, 30 Mar 2023 13:19:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168018234575.1919.8157555493405810367.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2b862373c0482a4aa7dda1b9c547483c70c8fb76b95e75b10d201987a2d35ea9
Date: Thu, 30 Mar 2023 13:19:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1680182345
