Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 76FB94426
	for <ddprobe@lists.linux.dev>; Sun,  8 Oct 2023 08:27:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ibc88oqL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF3D2C433C7
	for <ddprobe@lists.linux.dev>; Sun,  8 Oct 2023 08:27:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696753628;
	bh=wkBc9MpZDOhu7kgRA1JTHH0iTv4s6ySPZHD54NiQDcw=;
	h=To:Subject:From:Date:From;
	b=Ibc88oqLCfe/qOX7ua0bXcA9hk2ncKTbORTYAjq9maVOKw4cg06Tc1sl3vGT2duQg
	 mf2YowAR47RpKdAHhYtP180xSSMnjW6yTjk+l9Zmpby/2cYXROmCC6LDpfczK3hiax
	 hV3S8eXgZ+eqrZVjaSohL57U6lpMCX+6ff9UUsJOQYGaBLn28HntSvS/zqYcS7l2WM
	 rHuE98LnVUeET0i9C7nTR6nSV2Y7j+/Sz0XBJ5Q+e+djzQT57VuZAiHLqybOtqRRbv
	 pL7bfosmufoPZPcWd+I9jTzYoGZBAqH+U57qKxUtOBcze9jINQRbuI1g9re2Y6szWf
	 sRlTicAQb2aCw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF483E95A67
	for <ddprobe@lists.linux.dev>; Sun,  8 Oct 2023 08:27:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169675362871.7746.1710907149045024533.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d03b1839dfa530b5d0d6b76c98d6cb659f20bbbda940cc4415f021417c585534
Date: Sun, 08 Oct 2023 08:27:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1696753628
