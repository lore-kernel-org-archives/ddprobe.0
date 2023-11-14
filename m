Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19C1D10EB
	for <ddprobe@lists.linux.dev>; Tue, 14 Nov 2023 00:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="O8Aii+zj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 92CE0C433C8
	for <ddprobe@lists.linux.dev>; Tue, 14 Nov 2023 00:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1699921696;
	bh=cVYWhvTFV7rkba32+mQ6yc7mbo9dBMqL4CD3dz3aFw8=;
	h=To:Subject:From:Date:From;
	b=O8Aii+zjF3APA6jnY6DsTG8U2LHI5xBlhfc7tUNGtYzcbhAx1JMsBdHVRsyyCTqHZ
	 5bG2B1uWd/NNqR1bo3/34dxEPa7/vmh+Fd8O0YV/lqXGPw7cFEY2oncvqlSzb/e/RW
	 DjCuzFTbJQ0XV9a3CQgQd/KPrNvirINxla6iX820k7xr6+vb/F0D2Wa6tfJucXULOv
	 uaL8/c8L9O6aANqKcaj5LKDl7PjYgu/UievK5aD8kQ3uWhwRhLcEalznN1t7a4Io19
	 w2WkeZ7khz9s7FVnVPP+kTnz6lewtqEr9OpAhFeqXtn0pomNodvXqMAmv4Y9vCpnek
	 DbHC5Xn6pAtIw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6CB77C4332F
	for <ddprobe@lists.linux.dev>; Tue, 14 Nov 2023 00:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169992169643.18503.4019271145599491791.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 015809abfe38111c3583e828d9f3df81829ea76853b69ff01e34248db8fd4293
Date: Tue, 14 Nov 2023 00:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1699921696
