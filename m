Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3DD9A398
	for <ddprobe@lists.linux.dev>; Fri, 16 Jun 2023 22:49:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7370C433C8
	for <ddprobe@lists.linux.dev>; Fri, 16 Jun 2023 22:49:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1686955748;
	bh=Bc8XWg6EfCXhpzDKQWxf3+yeBfhAXQebg5gjxhHdb60=;
	h=To:Subject:From:Date:From;
	b=QCzwDMs+xOqZl9jQCc7CZ6V51XUkoSlwHxdJ1yWo699N9PL7T/AEjz908yWlUjADU
	 JlxRqYvqQUj5UBB61BitwTFYmSykCBal/1FXwl0TqnsAa0+xk0Q4hWafBCW7m/Qhea
	 htsoHcr0w9LcO3OKji1ADEAgPZmUUrgyrX9nnn80hxZlbjgKOxMSeUHYU2vnp9CgHD
	 nflI0kdFFAVva7VIWl2YEx5euoT4cNIxEWtfobcaqqRBxxQn1dJMm2edH9KqwxxaGK
	 83DT3b5SB/GVEbTT1SmUM6ZqF634PTi41OvDOw2JQ7ysayFPc3FxQZOkgMkAk1r2xr
	 iylf2c3V+C4yw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B762FEB64D7
	for <ddprobe@lists.linux.dev>; Fri, 16 Jun 2023 22:49:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168695574870.19547.16140136763288334266.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e813f72c2558b0d45160348464907cbb07de763e7e2f93fbb19733fb725688fd
Date: Fri, 16 Jun 2023 22:49:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1686955748
