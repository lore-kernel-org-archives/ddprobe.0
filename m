Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BBAE41FA4
	for <ddprobe@lists.linux.dev>; Wed,  7 Dec 2022 12:00:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6BB5CC433C1
	for <ddprobe@lists.linux.dev>; Wed,  7 Dec 2022 12:00:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670414454;
	bh=LUz84jXQgSPdI8iCzfY4Fg4f4vUSTNBnR5J36yj3bcY=;
	h=To:Subject:From:Date:From;
	b=ZBMKw747tpAc9He69QPq0xPlk/GyBZMQUUuEtrC9Qxhg5VwSlHk4JlG6HTSrfWb38
	 Awi5tOfwlYLiCgxmqqPkyPHwKinVJjTEAL+ZHxPCfZWAt0hJRtR0TUcAobeeCDGzch
	 0xuetmWW2VwHQHA9S8HYhH7xJ9yIGaewYnrnVvRAElS0mCX03R4kOmKUc6FwO8OQ74
	 rtXJSXOUW33mrJC6Hk0mOZRenJ0qtp5H28wCR0ePUgNuyUa+qGk+ea999hBCYlc8IG
	 u5lwrcfHhcbXqL42qE+SLRbog6o7yUVUQKR2dtLdfWPBSvEdfeRq890NOGlCF1VLHR
	 26F3q+/maNUag==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5514BC4708E
	for <ddprobe@lists.linux.dev>; Wed,  7 Dec 2022 12:00:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167041445434.30060.15858383935412051590.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 710f32fa9c95217a8a095e363760272b3883216b61296ee491e4a91572348999
Date: Wed, 07 Dec 2022 12:00:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670414454
