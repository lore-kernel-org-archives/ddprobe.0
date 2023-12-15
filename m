Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DA5741078E
	for <ddprobe@lists.linux.dev>; Fri, 15 Dec 2023 07:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="u19HKWkC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7812FC433C7
	for <ddprobe@lists.linux.dev>; Fri, 15 Dec 2023 07:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1702625896;
	bh=YUEfItFcuX+nSVV/of9fZtv3KySCqGY6mYrgLZn1hKI=;
	h=To:Subject:From:Date:From;
	b=u19HKWkCvK0TwStf66iG+w72W4mBzFwgVuAsSvShuGJZKO9bHVFQ3Kb8tuTkn5TrP
	 PJUuR0Gl7zk/YsOSrlPUVA2rMt6PN9XXA/L67xsbR4NBd3zV8HYHmU252WKiMbV3qx
	 GJMRSj47woZtCz8UJpXgDITFtwSTaNxwOaqQ7rjcK+E/qe/K2iu0CPCQ+dQaYZs3xK
	 zwdYAYQNvFizpUfyaSm1ZZdfojEW61BY7SzOivPGPDlcHwI3S9qN0uByg1eT4G996T
	 nq8TkJ8HWEnZxBBdz0hhITcyp7lTJDnehuGo0U2GvuL4f7BRGKLA2ResXs83764LKA
	 5g4AS/ugObFMg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5C951C4332F
	for <ddprobe@lists.linux.dev>; Fri, 15 Dec 2023 07:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170262589637.22795.8546288518859844386.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 536fd28e5dd0ba2cd3d6799e9f9271d0001a02b4081cabe7e5c6b2d5deb2fecf
Date: Fri, 15 Dec 2023 07:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1702625896
