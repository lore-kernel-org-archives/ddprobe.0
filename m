Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 014E71426B
	for <ddprobe@lists.linux.dev>; Sat, 11 Nov 2023 12:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rzhd5pgV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 81715C433C7
	for <ddprobe@lists.linux.dev>; Sat, 11 Nov 2023 12:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1699704496;
	bh=6tL0ibxzn9UblGr0D9SJDzGuNboyFSaHOrPrYo9zdvg=;
	h=To:Subject:From:Date:From;
	b=rzhd5pgVnsl3pfPhwuQHOmqJt+rnuQ7lLg/cyqHUL3hx5qc7WDHj0AFNDGbmYEv3F
	 p5/sLHR5Si87kWLJ8qIADugmiTeqCquAstSoOi6HFG4zQ7uGpvShYSiDQr4EiVwqGW
	 1qU9e5WtmOIf4mTELR2c9XwEwbN+e5IvNzsiQJEgKLapcCLy/BlIWyYTXGNv3LW6Sh
	 eufUEsR9ojeFi2HNWRFulUopqQM2y90nrlI1119uLHnZ86xOTa0kg7dDZiPfhVn24C
	 9A6bRXE0uHP0j2FzRwdk89bCmWv2D0sJlUIr5rfamtsgdPwrt7JeXbGZBJATnSSJOe
	 oIQss8S9bvGqQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 669D4C4332F
	for <ddprobe@lists.linux.dev>; Sat, 11 Nov 2023 12:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169970449641.15971.7983782200108296245.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bd41e22024a2fa2a9e330f1d6e4cf6cf3db8bda26b659e28fb433638c3270dff
Date: Sat, 11 Nov 2023 12:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1699704496
