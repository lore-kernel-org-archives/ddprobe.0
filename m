Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 305EA23D64
	for <ddprobe@lists.linux.dev>; Fri, 12 May 2023 19:35:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D71ABC433D2
	for <ddprobe@lists.linux.dev>; Fri, 12 May 2023 19:35:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1683920105;
	bh=5sQkYmqvvuyWVMTZ6IBN5IiE1kXC3wNnc88lqNV5iOQ=;
	h=To:Subject:From:Date:From;
	b=RXUpNLgFmQXdh+fueuX7zyfMDeXSGVMV5X1IK6x0K4oPx+3Tt+LOeec+ZrzvuCaVX
	 S6JZYv4Prr+8ZsC00QkXiyG4wD9WrKv+RK9mCE2yj05gs6yb+eQT9Sf+wjDKdpo5gG
	 xINkZwAumlYFJXn4m0oPwctWuH8j+cZyvb2R09F4lIIlE67/GehIlxZXaFkVPVKW43
	 bbv+qyf98kyVfUHuE7eZ71JEjKrcA0EhwKmzssj/CNyoGEd/1D4VPSReS3VF1T5YsO
	 kHueXYqTsXPHsZf2WZsMj5rqMvG97nYCT/yXBHWf1oGtFCnp8XddRqFlnfVVeQs6aq
	 VWb14/ImA1H7Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B7A88C77B75
	for <ddprobe@lists.linux.dev>; Fri, 12 May 2023 19:35:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168392010574.30824.16792491627340030921.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: de55e3669113a88fedd284177cb8154d6ac69e6f341b7225b27a2e986f2a1d6c
Date: Fri, 12 May 2023 19:35:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1683920105
