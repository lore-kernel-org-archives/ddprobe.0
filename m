Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 03D263B636D
	for <ddprobe@lists.linux.dev>; Fri, 13 Mar 2026 17:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773421494; cv=none; b=XP19gxutxyspa6v+vSA6L21ymQGIsBZuhneecHP7Sl2ItsaKIrv17wTK9AXFBh+Hl0dDG+aDJYDm/6og/zOVz6ZzzDGYQH8iMxoPR7V5CCrdzzwPmfJ0DQ/0xLDL67AyEyC79Foei3MlV2Rnai/6Cjy/67qJ8SZSrC4HU7cIlkM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773421494; c=relaxed/simple;
	bh=ITZkUKq3bFcqIRdpMf7mQbAeCtNts7TnlUTmvPgXP0Q=;
	h=To:Subject:From:Message-Id:Date; b=o4oZAn2QxPi3oJqZe/q/8HnDrYLZN/JA2Jagft44zTNizNAP4IoJVgYqOy+mGQrTWpnjcx02bX1nSNDhXYDPS5KTCdzQGK6GuZ+JV89as2/4EtPsgjk+FUsklpfOhM1s+vRkjr99E1GH2NdIXbbFUBb9ens8cKWJYKKDQBcLk9c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=K6GS4AMP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="K6GS4AMP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FD13C19421
	for <ddprobe@lists.linux.dev>; Fri, 13 Mar 2026 17:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773421493;
	bh=ITZkUKq3bFcqIRdpMf7mQbAeCtNts7TnlUTmvPgXP0Q=;
	h=To:Subject:From:Date:From;
	b=K6GS4AMPET3Rzb11gczDospKFPxWgsrd8TgxL0vRPdQg1AOBglA7JchXOLXNEuPyS
	 Kw1rXarRR65ijOlDEa1It6xZG8n6rJjGIn7WKdFe8Rl/GZmkKQFd0jw9RIfok28SA3
	 RxH3YVeAUDViq5Xj+wE/0MZl404486KI4o0mpl2OBa09d0pRpR59JV+eo2uFCO4P6r
	 hMuV7z3cCULvxUaXNZ54N7rPTTQEqfikPOTLYBUh3CGxtIu+2zUuF7RWG26pnOI3Rq
	 +8hvKpeJqIv4oOVjchmqWXWA0vG3+mak+QYnnsRITIycfGYLoRk2wTuuv15+K3uTDE
	 rSGjW9c/k3EVw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9090F107BCCE
	for <ddprobe@lists.linux.dev>; Fri, 13 Mar 2026 17:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177342149358.7934.16504193527323787488.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 53f96d86dd9093677aa633d4a272059eae07d3db7fc664662048c5381445f1d4
Date: Fri, 13 Mar 2026 17:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773421493
