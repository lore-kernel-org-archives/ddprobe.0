Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B3E9653B5
	for <ddprobe@lists.linux.dev>; Thu, 29 Sep 2022 18:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6FA4FC433D6
	for <ddprobe@lists.linux.dev>; Thu, 29 Sep 2022 18:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664476853;
	bh=lpnsp/lW3wkh4riZ9wmwwvjErGXoP4gh06mC5qpPLrs=;
	h=To:Subject:From:Date:From;
	b=RQjYDx8Wtg5VCfS72vAksyrsx8UBt3uBjID7oL3yICNQ9ES+/mqE9baCG5sZ4Qx8H
	 h/Vu/bxAJyS4q7+Y/XInxoxpnvXjgM/TRcIUBLhrEzfP3Dy2/R5a2GlEjiIOjegDIa
	 kTOASk7BE4oshEdd43WeLuMJGsgnS2GGu91V7R478EsUCVtEOd+432nk/jnKH5TKMf
	 ZRXn2xq7w1pDljzUgACLpcu4bgLXTlpWjvnyYUZyNkuGQWgrlUhQ/P/ExLdcfV01Wi
	 kl8PV9KhAMl/wS9/Mn32HL9GyHEZ2jpzqi9Qf/hbOGWDK7PvaEAI2mpW4P0BKaUNCT
	 cPhzHRo8b3yGg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 50FAEC433F5
	for <ddprobe@lists.linux.dev>; Thu, 29 Sep 2022 18:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166447685332.32225.15695269696195379486.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 871f5a30809c207e927cd0e2bcc795815ccde2c8489b44d86fb258ca03f6e140
Date: Thu, 29 Sep 2022 18:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664476853
