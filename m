Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BB3118F65
	for <ddprobe@lists.linux.dev>; Fri, 18 Nov 2022 17:40:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 669BAC433D6
	for <ddprobe@lists.linux.dev>; Fri, 18 Nov 2022 17:40:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668793254;
	bh=GKgxyXaf3Z/8zLSdhSw9+jM92qXyUvbuu4BxUWV/ZPk=;
	h=To:Subject:From:Date:From;
	b=m3a4UbfJwe2SCVrir4l/K8OcCiUOanpPJNeUjZp1EaqiB5lLkUEKy4VS6iKLJO2N4
	 w05hfpEUhNvf5nT88Km1+V4fBeJ48Cg3tUbpDSp71I+Ef+bFbym9oD4wQooG18OlxF
	 WsPo8j5sDZZjvTVP26Z86cf0K1lZIGIX/9g9x83C9ZYmcDpZtxGAboUDptcVCmDSbS
	 y1Q8Y8z2WMMGYiN0M4FEXEzxj/69JIB6tQimJpjLxwgfe58E9EGruG+uMV+JdEcemn
	 ZnT1VpWUzvuAIBnBe97EzF5UFhEfdlPTlVuxZlsQujaPDT6EloWv4xHl/yXesaHu8J
	 bEmH9P1aDzOFA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4FFFBC4332F
	for <ddprobe@lists.linux.dev>; Fri, 18 Nov 2022 17:40:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166879325432.17175.4704597999784276677.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fbebe7822032347edd9b366de9abd048eedaf7d6a47d24540edcdc39e5d47a10
Date: Fri, 18 Nov 2022 17:40:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668793254
