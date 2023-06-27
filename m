Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8C7C3EA1
	for <ddprobe@lists.linux.dev>; Tue, 27 Jun 2023 03:43:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id EDB01C433C8
	for <ddprobe@lists.linux.dev>; Tue, 27 Jun 2023 03:43:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687837389;
	bh=OP86EZ/0qYIei0mg44hjNBpIFu4SpjZVv5MTJ6XXeRo=;
	h=To:Subject:From:Date:From;
	b=tZUF7sKFV6iiMJG4JaTMrIUQHEiMpXnkBM+VZnms+Hi/QwJT0iZdfV5v974cR/l9Z
	 OJHc81rrd1LQVGg+WakA/T4J1W/UIaAT8byZvN3tSl4RmRqyye7A9/V8IwXwMknMTk
	 5kVouyD4n089FlcGnVJkRHMsl7XslWImQfUD5uql0ReExUwoQ62/V/DOy1F24mp/Kq
	 xs7E/Ib6U1F6nF+KoA80KfKzyuCN2pCRephkwXB7OAM2reypA2JhLhAAx0nzKoVDep
	 n7ztU+iC61mzwFGNS02qkU5flfhbrcph44iT8/o92/F3iI0NjhT88thsQgpcwEaTl6
	 xLa0Vyfo65IMQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C3690EB64D9
	for <ddprobe@lists.linux.dev>; Tue, 27 Jun 2023 03:43:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168783738879.28148.17698079582124170115.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: df8026931277b27166374eeef8aee5d18df300be2c767109400868b0829645ea
Date: Tue, 27 Jun 2023 03:43:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687837388
