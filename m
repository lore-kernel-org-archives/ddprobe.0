Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BB1AF3C1C
	for <ddprobe@lists.linux.dev>; Sat, 24 Sep 2022 23:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6C0A3C433C1
	for <ddprobe@lists.linux.dev>; Sat, 24 Sep 2022 23:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664061653;
	bh=prL3oycELppKsJnl6MHxjs3jOK6ClIJh6w/OhDkap9Y=;
	h=To:Subject:From:Date:From;
	b=Y/20jE5pIgGzgY0AlAaSfgIIbc6YVeP2si900OcQuHAV+KTRXAYsmqrtEmz6EHkVS
	 h++5v6FJQIwoHWVMSAk6YNaSO+0QMCc2qQ9nZn6L2+HhzwlJ1eTOmJURRnL/fte8IB
	 pgq88lJqOwYR86536Qk210Lz/mhj93aiTcifLFu1U1CX2KWRwr94fSwIUWiSVffC7p
	 Gyz+8tt3L0UR3jlGlc45V50m1pzgqwqD6/9Yc1iY+53E4j9Y08U0ZpzGIWYf4KCG06
	 Xxy4RE8rcTzeRKMRfS30tc+IIuDjrf7gNq2yBesf4Gz4BBCnM8nKxVzipUDnNVKFRP
	 AkEmJfLEmq4fw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 52040C07E9D
	for <ddprobe@lists.linux.dev>; Sat, 24 Sep 2022 23:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166406165332.16355.14958070912032997274.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 335206d5fc50804b9454fc4c5d9d702a3590cc5c7e79503592398642ac93bd99
Date: Sat, 24 Sep 2022 23:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664061653
