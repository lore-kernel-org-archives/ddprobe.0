Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F07591365
	for <ddprobe@lists.linux.dev>; Sun,  8 Jan 2023 11:31:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 91CA4C433EF
	for <ddprobe@lists.linux.dev>; Sun,  8 Jan 2023 11:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673177487;
	bh=keeKUiBUW7ZXViRgL1bREAyhk1XlR9lSBBvL3m2n/Ts=;
	h=To:Subject:From:Date:From;
	b=eE9cpucK6px4r0zdFkJBc9H1Eciip6VWJYIF08hdGjtEkfolLQK6y6MCzo8cB8RfH
	 L6ipya17OXQqXIh5WzM94CSt43gnvPUJ7ZVhgswOAuv1R+YSlQADLkC3Hhee4RBs8Q
	 Uez2x0CL59n2joLbZGLehQL+Bvip+HTKfAI0eHAX33dzwYUuC61IqT5lhTjZDseKge
	 ebi7U1jQ251J8+bw2Ue0ZfGrEiXEGt1WMnZ1Fx7d1kUVkiJlqQnEYAoV4w9x675ENM
	 epuB+MEDAfX5krDSgnS0irCneAURiHGfWynNOTvZ1wKAYJVHofXzstUcgDzc217Ce5
	 DmY18MnLj3HMQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6D9F3C53210
	for <ddprobe@lists.linux.dev>; Sun,  8 Jan 2023 11:31:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167317748744.21433.3361704910768774376.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8e302d8ef5b97213f9e79b2285d6c4977124b2506af92bc21fc00d9798284dc7
Date: Sun, 08 Jan 2023 11:31:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673177487
