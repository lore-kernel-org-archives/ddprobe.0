Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7062B6112
	for <ddprobe@lists.linux.dev>; Fri, 18 Aug 2023 19:54:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6A22C433C7
	for <ddprobe@lists.linux.dev>; Fri, 18 Aug 2023 19:54:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1692388448;
	bh=6D0eeENjHfH9P2sNOQHSqI5ATCBW5k3WwYJjG6KhM+E=;
	h=To:Subject:From:Date:From;
	b=ROT/gNGPIZtnZR7vjKYW6YBabp5k65BldmCRPyxs/fK/1X6LU6Vi0fm1CoLV3FEP9
	 ZBxn14eo6ZxJWppChX8BhpPDHnNVof7J5Is4r8V9SXgZBp+T4udaqcK72B62zryJeT
	 m55x7SgdUCGcRg4w6Do04wqNAmk0K1OjYJQrqrQ0k0sUzc/RaxjPogQc1ws+O69xP1
	 9/AK0w/AAkUaQKZsLHQ5lBXiy19MhYehs9r6jx1r/nHfrOae1uvyvNb0yfSe84wR8+
	 SGbCLWlqZY05+7z1IKbUXBnZ2ogzZ6l4v4kawHfLB/jab30dGDCf9c/YX/Fk9O9zib
	 bfNIvO8jQyk1w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B04A4EE498F
	for <ddprobe@lists.linux.dev>; Fri, 18 Aug 2023 19:54:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169238844871.22184.3252418224633287878.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 610e3d18ac82f9026ae167868578fd29c8336e86f08e4b6480ba876700bb33df
Date: Fri, 18 Aug 2023 19:54:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1692388448
