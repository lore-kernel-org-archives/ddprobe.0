Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BA694654
	for <ddprobe@lists.linux.dev>; Thu,  6 Oct 2022 08:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6B2EDC433D6
	for <ddprobe@lists.linux.dev>; Thu,  6 Oct 2022 08:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665043253;
	bh=f2/Le/VKWIlzTjkWPBJ3absJJ5B6q/u1qPK/kXbmun8=;
	h=To:Subject:From:Date:From;
	b=TRBmWUxeu7WXnItQw8bijGykDc0m6HRLWrBURhdNbgAPOXCChh8aMcId0V6XR63Gm
	 +XECPsV1cgLMmcQTvfpmlUX3HtcZQoMmXWfUBAwtIEB8hWc+ccEPVpqMcUSvG9O0um
	 puqar92tmPe9oyNn8/dABeqK8KzFM4UsUcHDAEVJ1wrbXUjFGXH2mEzx0yvxvdzUGT
	 h/gffeZYpJlSCzQ2hJ6UzN2ZoRAPcBAiGCidYk1fhvrQl5bcI0H1IkaQpzOEk0WLkN
	 gv4jwtQLiDzzo9rjQpSLLG/TPAc5R8oNVvZ89ZfyaPjUVUk3donpiuTDcutrxpbyi6
	 8njEOhm51UJCw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4E3ABC433F5
	for <ddprobe@lists.linux.dev>; Thu,  6 Oct 2022 08:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166504325331.15475.8493290894755070168.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a2d2ed204af880b55f8a59ef50cc3d77d49c9e6f8e53e238d2a9e3e45f260642
Date: Thu, 06 Oct 2022 08:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665043253
