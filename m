Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 52E561C06
	for <ddprobe@lists.linux.dev>; Sun,  9 Jul 2023 04:37:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CADA2C433C7
	for <ddprobe@lists.linux.dev>; Sun,  9 Jul 2023 04:37:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688877428;
	bh=x1EGCNxTpQmfUo5SfHCUkQ70tPf5bLUlRZG5sCOWoPQ=;
	h=To:Subject:From:Date:From;
	b=rfdwzXUxW0DLxjTj0ej8oDBgFBI+zYIDy+6IFpEfJuUxxUSguYldmyO6pxVVOzuC6
	 lbfdfdlDMvdmCrVPETrPDPGgO4x/2j9TYcDwu4rk1azx/ZslPUtGtd2icdDMOPoOaz
	 GSK8BJmqpy7LgSXxnEw76V15Z91m9CjSPCV/o1tbd9y8KRe65mvwBT/saYySp2ejZx
	 K7B1zaJ31NGgWEBs53Xq8g8oVRwLMs2NImIeNKaDxBEmi0WMsIdf4qo4r8h1eyv6+s
	 FsMyTluu5sG9CaWnEIpLfYQsjv0LK61lJ31KNhtkbnQgVLbFy+WQyKW3sCtC0NME2M
	 4CoPe81eh3OGg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A97F7EB64DC
	for <ddprobe@lists.linux.dev>; Sun,  9 Jul 2023 04:37:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168887742868.26850.13051688714230964495.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cb280b4fa6c888ec1ece18b6d508bb4081d524c0d7465f477192b868a774dd6d
Date: Sun, 09 Jul 2023 04:37:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688877428
