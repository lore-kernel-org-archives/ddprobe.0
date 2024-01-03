Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 104D01D54E
	for <ddprobe@lists.linux.dev>; Wed,  3 Jan 2024 20:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VPW/Zv5H"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 909F9C433C7
	for <ddprobe@lists.linux.dev>; Wed,  3 Jan 2024 20:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1704315496;
	bh=5xE4CoipvbhJO8Py6SuTFKnexpop2rfudDrN8xyBj6I=;
	h=To:Subject:From:Date:From;
	b=VPW/Zv5HKlak6r2G4jt9ysX7cFyizuXsad6FnOiKzofQdTAhq2mW54hnwbzj80j3w
	 BYL6wIgr94JuEQGygJU9zlwYHFDTZZwsHb1McVS5KDLOAPsBfbFkG+3PfCM5Qz7cES
	 9hDjSnVi0j2LL20+6YRuTZLHxNUAjls3eee8AdLNfyKGrzwMZgAeCQx+cBeFIPkYHR
	 oVWsuYanQtReepVyP7QjgU9s+Ju9SClxVyLij0f5FkYsVOFNvm4wSwIgB3rtNTSK29
	 OTirIAY9WpriAA7Gl/zubv7hFSd6I/QxB23tCx6rt9lHmdlAubXc7nKri54McDiSzP
	 oDnQpJCfz/Q4Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 73093C3DA6E
	for <ddprobe@lists.linux.dev>; Wed,  3 Jan 2024 20:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170431549645.18150.3686360899645251616.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e3d2b8fa2a4ca894a83a0882be338278ce01b66d364c07c0f00bf4e0de5cf65f
Date: Wed, 03 Jan 2024 20:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1704315496
