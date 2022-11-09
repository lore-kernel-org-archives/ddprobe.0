Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C8F0118F
	for <ddprobe@lists.linux.dev>; Wed,  9 Nov 2022 00:30:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6A5B2C433D6
	for <ddprobe@lists.linux.dev>; Wed,  9 Nov 2022 00:30:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667953854;
	bh=SAFQZjb813uXKD1MeoSBd8bD2Eud09arRpk+PKf/lc4=;
	h=To:Subject:From:Date:From;
	b=hN+VfINebiq6LhA8GhDowRIi6ABNaKm5FtKHEbBOfrjFSOnFaZhnwFjxk16d9ueo/
	 1t/iNK5dhjyMH/mnaO9ttyhPwwHasA5VNoWYpVYKbIaDyIZxvlgQNMaXcloyOSCG0T
	 b6cPqK2coj4BYx2acOjmm2FfHM76xGhXPGg3uz7Wqv3NRdZ/aJd1G1uz4LuSNPQL65
	 tB0oPVzuWTom7XYcFiQSlFKZ+u3TyusjJB+2tHP7/Wnyjdr/WrZLW5Sa75JAQ2i4Et
	 A5qBkR8GUYyt29oMJiy6ehENH3nXr4WARk4oYnA6Utyo1tGPpq8QPZfWh6f0rED8qs
	 0ewnyLzQF01WQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 514BEC433FE
	for <ddprobe@lists.linux.dev>; Wed,  9 Nov 2022 00:30:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166795385432.18231.15283180813896852079.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e385499c48658464e08dd5920c1cb93e3760d32421ba5883538caaa6b9137c1e
Date: Wed, 09 Nov 2022 00:30:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667953854
