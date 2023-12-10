Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19FB76FAD
	for <ddprobe@lists.linux.dev>; Sun, 10 Dec 2023 19:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WMHuCQEP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7DC7BC433C7
	for <ddprobe@lists.linux.dev>; Sun, 10 Dec 2023 19:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1702238296;
	bh=3d3w61m8Ti7xrnLJq1fqfIOrUjHTpJ+/vNpLEWUrjoc=;
	h=To:Subject:From:Date:From;
	b=WMHuCQEPOc36V1VSOvCcVPeaZxuUCCIKG51o9Frc9N8CzscG/0ajWT6Q6t/eAwsFf
	 5inXwr8DOOIIG4GG6kyLHQwDPnmARevIETMxIqvMWNLixCcgRA0uKO4RCjo/tC0e7h
	 ICiKSzMe1NmV5xhj+AJ8wdnizRf9SRBc7c49MSckNVC2WlDseJi6VyhkfC5W/IXfSd
	 xt6KH6VW2xIgafve43qCmdXeVC4YDFtg0QMfDIyZD5AG9CqSJYNA0KI+2gg/nB+X4S
	 ErsAnF6skmpdLMs08Bb9O7ygZ2Oyh21fhzFaepc7GcNUjtnGHR8wpOYry75DfjM79G
	 cy9wsyqR+nGeQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 603BBC4167B
	for <ddprobe@lists.linux.dev>; Sun, 10 Dec 2023 19:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170223829637.13753.3347195174442408991.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4804dfaba710f29cc52ea938920c1e155715ed731dddaf04a642cdbe1af3178d
Date: Sun, 10 Dec 2023 19:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1702238296
