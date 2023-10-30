Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 16AD61A709
	for <ddprobe@lists.linux.dev>; Mon, 30 Oct 2023 18:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eq17x+BG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 81C39C433C8
	for <ddprobe@lists.linux.dev>; Mon, 30 Oct 2023 18:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1698691096;
	bh=ECEUUWJt3x3eOPHMrfVcfXhAl1voheYyBK+kzPpxZi4=;
	h=To:Subject:From:Date:From;
	b=eq17x+BG26qGcNiLRNdR6L2ncCMSqFKwtjjEg8/L3wZ3CTOPgprCLshQiRALpkKUL
	 hjLXcKN9eJDfuDrNfuRfrUlfDjUl1eICiZT7N7eU3nPe2jaErBcAv4odspk5YtZUbH
	 akoX8vbQv/LtDwmzHykCKwchBVMMzwLrG+1JH2f2YF+1JAUiSnoZUa1xQ3LTSWiwyb
	 H3HGlLG4z8SP0qwd0PMzUqYNCF3CgtB4klhWS68UhArf03098ANsUE3VMkoY4424RC
	 u/B6st6g5ZYuOuoq/0c4epu0QOHcfLgFngNPal/zcZsyNF5dyaJj9nzD1a2yTHKW8Y
	 Jmm2Bsjw2QO+w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 663F4C4332F
	for <ddprobe@lists.linux.dev>; Mon, 30 Oct 2023 18:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169869109641.3953.17681247426712287728.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 496ff06fd86f57503c21db13b5198ee8020a28c31998a8048bc4bdde56967201
Date: Mon, 30 Oct 2023 18:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1698691096
