Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 526E013AC6
	for <ddprobe@lists.linux.dev>; Sat, 16 Sep 2023 18:45:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C832AC433C8
	for <ddprobe@lists.linux.dev>; Sat, 16 Sep 2023 18:45:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1694889908;
	bh=I/nyDabIl4ld1bj5gy0OTpcDI3bvHGSR3d5e4OPnayg=;
	h=To:Subject:From:Date:From;
	b=lUI6EjVI0zrcGUkPJBpEyvCm9SdJoS/sWJY2uj6uDBd+HyXcJJvWW9G3ZtWILX5ln
	 9WPtPfhC5RrGcXM9Hr+j6IUUjqpjpvst3jEwyd2jQCygAwjqKlYbM9o+7DH6jJviKA
	 CSMfKXU38EcLcu4lDuMYR5XRsyJdby8BkBKMEM/ogr+MbW3o3N9XW2i0qz+UrXW5x4
	 nZYERsyCRy2X77ZINEED0hHDeGNGc2g9w2TNv+P8CWSCSfTZd3eS8xgzXARinopzlR
	 VwGKL+QPaEaTQVHhiusIG+ZI9FFv6qwI2hS/8Y7R3DEE1M92uqPtlqgKWXYn0E+JQo
	 DhsXtJD/H+8SQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABF66C2BA12
	for <ddprobe@lists.linux.dev>; Sat, 16 Sep 2023 18:45:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169488990866.27917.1301199309403088033.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f9d7bf44f3d89e091539de4ed478650ef9c55b674fae13f3c40bc7e4ff8006be
Date: Sat, 16 Sep 2023 18:45:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1694889908
