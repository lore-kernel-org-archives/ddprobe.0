Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B75E68F4D
	for <ddprobe@lists.linux.dev>; Mon,  3 Oct 2022 06:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6C5F8C433C1
	for <ddprobe@lists.linux.dev>; Mon,  3 Oct 2022 06:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664777453;
	bh=2x0U9zXXKF3+hM7Vu4HZaA8bLkivxtQqcpf8Nz/2ou0=;
	h=To:Subject:From:Date:From;
	b=TT1xfyk+SS/5pHR8gPUqq0rKa23WyG2n1tKgqjxB2rgKZM9aYpbqj/eumWHRNAA0Z
	 b3GhTSEWzOuHEAw3fAD1A+8qomuSeFEttuKlSNAktez//O0gszlWh2eQnRn445zyvS
	 Y0ObXRT4tgGXahJcMHZNpiKCx3aLmwV52taOrnYOqdKmBdceUd3RZN5qajsAM8WAj+
	 YvoBvbvzIAOZHYpO6Bl+Qdkf/SUm7tiX22iiueE7GfqBMc/CnDgoqNABDyjxUMNtTT
	 sBVhg7vE9Kgu878Q2wrvgYSYHl4tvoGjGT3PJ+/RIeCFNwvxYJXm3WYF5YUNpfUOVz
	 RuWR+qPb4BFBA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 542F8C433FE
	for <ddprobe@lists.linux.dev>; Mon,  3 Oct 2022 06:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166477745333.5359.10704994032766144206.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 644b063fc928e907e1233a2704fa0d6052cf7ccbc1aa132e7abe252f6cfd3b1a
Date: Mon, 03 Oct 2022 06:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664777453
