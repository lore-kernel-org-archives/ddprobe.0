Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BA07D1C05
	for <ddprobe@lists.linux.dev>; Mon, 10 Oct 2022 06:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6A174C433C1
	for <ddprobe@lists.linux.dev>; Mon, 10 Oct 2022 06:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665383453;
	bh=Nq+ZkWhCWzafqanFkVG4yomUk85V5wS4Q3eneUvl8bI=;
	h=To:Subject:From:Date:From;
	b=R71SwuF3k8vIPCT+IELPb+aWMyGdy2xRUrUS9uVjA5A/BG2wA9d4JYEAYjwqbt6/O
	 HNaBKmTe99jbLygka6eHKPnSDQy2paz0ggiRxmLXdhasXYKj5thv9MBHhGva7r/Gud
	 iUckb86U2sM7nEKI6hV2IN79SOVH7xc/K+IeJu9Kfaf7xhQeUzM9gR5rHumFq62Y5R
	 48o0oIF50TnGIUd+UIqyrQwaAKz0Xv7aNhiUkheRlxTodIatl+sA2uFLQ7GoWNvEn3
	 bepjbER7YvMiYfgvc20J2kCuQjYOYk4xQ5rPs4Ivf64aPlgvT0U1A8V0DC7Irh9hfS
	 /McfcN5rUj8JQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 537DAC433FE
	for <ddprobe@lists.linux.dev>; Mon, 10 Oct 2022 06:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166538345333.18555.12735375195249712923.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 856e50f9a35564993b3d63a825984b01c5a697a044dd3aac14a319b3ccb69cc3
Date: Mon, 10 Oct 2022 06:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665383453
