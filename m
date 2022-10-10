Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B70881FD9
	for <ddprobe@lists.linux.dev>; Mon, 10 Oct 2022 06:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6D8A5C433C1
	for <ddprobe@lists.linux.dev>; Mon, 10 Oct 2022 06:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665381653;
	bh=3+xbT+UoXzieD1sl+kpE9hoxrvfvHwV2OPf6iMdA1N0=;
	h=To:Subject:From:Date:From;
	b=pfGmCKNTuQHksy3lOAIKJGcckhjlvGUFy9HCnwdca2a+MVLfhv2+jotrrImRwlPTw
	 Warra+6OfXJrfWrUhpVyN7qAo96ld5v3BRu/VhsYZbhfmpwVcaCQgdBW312idrqNIW
	 Be0nod19j+clpGu5YH7+YfbFX/56ug11NJWFzvyZ9DgYYD9lM3rcyLnsX8aC0zENBh
	 RjzcAL/38OgCHrLCAwRkCSL3mOV8mDXM8Yuewx2TLooTbRl2STEwQmWwc1NqfUYB3K
	 mNQN2cYafZmKFgaXYbLftqm3mf9DalP7sjqd10NfJ1eVFENmrrPPQu7rmz0jpJlDSa
	 LQOCQptBXF3cQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4FF14C433F5
	for <ddprobe@lists.linux.dev>; Mon, 10 Oct 2022 06:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166538165332.21577.9837192699950533669.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c4d5c2effb426f7cb57ca991dfc4cdfada8efeb67506ba0996719ec7f171530a
Date: Mon, 10 Oct 2022 06:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665381653
