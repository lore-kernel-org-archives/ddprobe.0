Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 72B9E3FEF
	for <ddprobe@lists.linux.dev>; Tue,  1 Aug 2023 06:22:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C6047C433C9
	for <ddprobe@lists.linux.dev>; Tue,  1 Aug 2023 06:22:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1690870928;
	bh=Gy0uznJmBNs/S7/G+ehz7zRuaYrC6d39uqQ2LJX/sXk=;
	h=To:Subject:From:Date:From;
	b=mxs1kjEnUwg13WRKP6S1jheeVK8wZWw/IXPqtVgdqXhUxB2DvXf9+xI5180z/EKlH
	 kS9c3hCSIYuXjKwUshSYuuXQ9x0lY0XOKZv7GAii7HRi9WZMkrgQhhmSc3TavlVq6f
	 lR2lPO/x5u+2q9gtTxZYWUlNI3Y1bf2aAibALuca6s19+H7BNVHbzUFvrXLrgb/3XD
	 alZRIZGxQc+ComYikgc1n70N6YvgwKFw/YmfryrfIzexG45EL3TyY17bDJYPKvyvXu
	 aDywETESTNk75JKSO5pT09hI+TPwRXRUgJwYdz6WTQHTLCEouF9ouOOQ/MeMJyMXcU
	 2jUIU62fmU+Sw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACB5CC001E0
	for <ddprobe@lists.linux.dev>; Tue,  1 Aug 2023 06:22:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169087092869.12154.11168442426241121277.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 791d951dadcf43f28e179b537d817f63fab5964c54867c5a46446cb704b6f28b
Date: Tue, 01 Aug 2023 06:22:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1690870928
