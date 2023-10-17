Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 82491C8C3
	for <ddprobe@lists.linux.dev>; Tue, 17 Oct 2023 06:17:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mHUEh28x"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C5390C433C7
	for <ddprobe@lists.linux.dev>; Tue, 17 Oct 2023 06:17:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1697523428;
	bh=637rbl8ZBO/MfXKr9IcGq1jBH1GILMOU1Xi5mTbyFm8=;
	h=To:Subject:From:Date:From;
	b=mHUEh28xu5bpRHSwMqlzSdb2vN0oFGOV41R4L893Lp7OcZ8XwCcvMqNlq4TjfLozu
	 Q4Apeelj9Bn8u/9QGI/iUBUq56rUTAEljm2ic/kutzgZkJOeOZh4+xYlCs2xvsMGzX
	 ofGntcmNXL6jKyWYQc2lkWFdhp9+cSva0a9jd52nfeybA2yf6J2x3YCW1fLnng5+c7
	 sqWaUu97qN7vBBhQveB2bxR3SvJQ2xYlKLpXViPe8Lbkmr8J+6SIrEP/w7v8qnbeUY
	 TOVbj+9Ag7UesTPj2s2w87axpGWH41g0SHqVxwjctSGDsv7pNOq7xC5S4g8QGMu9Zu
	 hCkLuZp/f18Sg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD1B5CDB474
	for <ddprobe@lists.linux.dev>; Tue, 17 Oct 2023 06:17:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169752342870.3895.7036107695281846587.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3dedc2a01f93a64d875ef7d99069f38f840801737149c38035dcdd997890bdb0
Date: Tue, 17 Oct 2023 06:17:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1697523428
