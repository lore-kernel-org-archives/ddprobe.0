Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BA8097B
	for <ddprobe@lists.linux.dev>; Sun, 16 Oct 2022 01:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 69033C43470
	for <ddprobe@lists.linux.dev>; Sun, 16 Oct 2022 01:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665885053;
	bh=tXnKc6JnMMvu87MnP632h2nHqoI4iedgCGasiQ1qxnU=;
	h=To:Subject:From:Date:From;
	b=XYd5l40vqXXhQ/iFzO3lDcHnDybGXmCQvN2j+9TLzpfIg0Iskf1ZUB0Dqx23ayfHt
	 KoSoyUqBWQyPw6vU6/xTqKgfKo3qo4ESjqlzxjBISlmcx7OfhdwDYb6dBw/IjTMknO
	 b4sM1fNOdgXTjlUyh8BLXU18Zu9aiqIYa98Jhzzptbo+2eQonS7Xh1S+dotr6RSTOb
	 A2MDWNoPuUaetIsoAfCsUnGmZds2KzTRefLGNW/+yzNdz0U32XjZ7ZvorBWtRbF0Zp
	 2p+Kxo5s5JXW4uvtADaYOQuKc4LVK70nuGk08CAsGO82Nr+Gxnj2JQFiHNLZekQEzN
	 wJ3QssE0eVqxg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 50B33C4332F
	for <ddprobe@lists.linux.dev>; Sun, 16 Oct 2022 01:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166588505332.9132.11608229769224198803.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f40ed4ddfce4740722df2e43ca6daf44eb416e3a5e19715c53e55286da741098
Date: Sun, 16 Oct 2022 01:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665885053
