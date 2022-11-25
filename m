Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C0EC933DC
	for <ddprobe@lists.linux.dev>; Fri, 25 Nov 2022 14:10:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6F270C433D6
	for <ddprobe@lists.linux.dev>; Fri, 25 Nov 2022 14:10:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669385454;
	bh=vC/oNdpShNUQ+g/lbfubGBkxRVR0UGrgFkUON3ZnfEE=;
	h=To:Subject:From:Date:From;
	b=T0ZBmsoDtzkRJ4mA2ewGIfvixv3eABbdFLVlJhEwIMn2t/aVh+GhcEJzfdmHgTi2s
	 Oaghu+qBnaLRDRPtet25RufVINYfi3f/oAIs7OPaAJ/m7ZzmwMfPJugSFmFI56NamN
	 sXhreZyVb0pRXMzuEd+AJ3eyjQR16OwUNcFmy+a2WAjAETAArKFyLVTxn4ch7xtnqD
	 iB/NCnPSyHB5xK5z9VQp7kYVerhGLOhGw9KbZpke2caQM/O0EyZAlXhRQzFOOK9nKA
	 xd/5WXMNd+PryY+14YsyF3GjflYnYMAGLcQ/IVrfMqgdK0HwwpjjIKX83zc01FSDJX
	 jUaGQfaVQNmfw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 53AB6C4332F
	for <ddprobe@lists.linux.dev>; Fri, 25 Nov 2022 14:10:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166938545433.17693.12481650253359391655.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f892c736cebfc178427f807dfb30eaf6056e8d73171092ffdeffd3b6f0723470
Date: Fri, 25 Nov 2022 14:10:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669385454
