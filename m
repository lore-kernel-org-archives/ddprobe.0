Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1FA0E1369
	for <ddprobe@lists.linux.dev>; Fri, 29 Dec 2023 02:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IUlZHcqs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8A271C433C8
	for <ddprobe@lists.linux.dev>; Fri, 29 Dec 2023 02:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1703815696;
	bh=7CHNDAVuoUdJjg1a9H2mQ4dQyjFxEl0UGNKH/z3uSFU=;
	h=To:Subject:From:Date:From;
	b=IUlZHcqs+5uxu4cs801QJADeunkIskARs8RHY6xSRIbBY82zlFo44tk+Rp3as0gjh
	 o9+MiGriBgDFeW2DS1L6Mq/havkIGkH753jBuynGlqOPYh7IdVlrLWQkizz5cNH13q
	 Uy7Yh3hI3cM7Bd0AAoXm19d+EnmMLxQkiRQlvs3Q2CoebrLfeRMqeX+Y7qb0mdcITv
	 oeqsBHfEKdT7iA2Xtwdih+w2u5z6JQK4Zl+0s+AVwdQxI8HK5hEyHElBXBAIFqQ/GG
	 8G/r/OIcS60Tu0OaxKfkUjJ4OQypO4Sv+oL1rmrh3npmDZIYMf/SbvUwTvNaML+/Ht
	 js+zPMMEajJqQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6EB90C3DA6E
	for <ddprobe@lists.linux.dev>; Fri, 29 Dec 2023 02:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170381569641.23581.11200780607972653718.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6b7e8eff3a7fde1c8d45f85fb9d1cdf2b59daaa85f67c0ae72b0052f21d63727
Date: Fri, 29 Dec 2023 02:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1703815696
