Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E2108ED1
	for <ddprobe@lists.linux.dev>; Thu, 29 Dec 2022 06:51:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 811C0C433EF
	for <ddprobe@lists.linux.dev>; Thu, 29 Dec 2022 06:51:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672296687;
	bh=NciFILukN3eqtIHhAMReuScIzm8eaDKQ/ccpeKguEAA=;
	h=To:Subject:From:Date:From;
	b=fU2t6wirmGKLqJ6aFvlySMxglmYmt2A8MjnTAbajgAwkie4EEduyuI2Qr1vYZTj81
	 GS3SWn89IL1yiLIZN7bus/UbKoxer8fPuFK0muK/jKvZkTk3dbC3/ePr9FveP/zZ7J
	 i10w0ClyBqTX4WukglXtjxpkTPzWt5EamAntjkWpGIsqiLmlrK8ybh2MOvdpcJs3UK
	 XzNzCd+EKh49yr0q8Us7eYYXvc1MqZ1/bwgOVt8GUxEMW65nO5f075Ib3K7k8TUGX8
	 3u0fxtjj8RvfWShQauK4qrInifdUYFCEHTA5C414xvw0drDAbYsncDGCw8LKNBDLAz
	 fgz7yQ3WAUX/A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 64EBAC4332F
	for <ddprobe@lists.linux.dev>; Thu, 29 Dec 2022 06:51:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167229668738.26994.17373193908682908043.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e24830f8e667d96533c124f24462d825584ed097569a065d026aaebc63ea7a77
Date: Thu, 29 Dec 2022 06:51:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672296687
