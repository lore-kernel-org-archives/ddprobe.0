Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 10F0610781
	for <ddprobe@lists.linux.dev>; Mon, 23 Oct 2023 07:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="igr+nqNs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7805EC433C7
	for <ddprobe@lists.linux.dev>; Mon, 23 Oct 2023 07:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1698046096;
	bh=jcewrSx3YrLNsuZ+MuRKmVIASP2GfzOCgvNAab4cwH8=;
	h=To:Subject:From:Date:From;
	b=igr+nqNsglVwliaPruzV0agY2FTK2hcQzgCL+qk8lxGUGdqB9Qpr3CbQwc6hIzAI1
	 klmCw/WAV3EEJKt6Sa3ZvLdAg/tDvI4v2BCVTWHZz1CJhqr2t+6d+K/1cqhWI1+hNW
	 roDZTwlt/RvITbtJuuNLCmfAPIcayrlKeDJqZ5uwM6jE7PFRoywgnJoTQzyJ6hLBA4
	 lhKeVmIq/2mAAILh5t6IJrSbrgn2XF/orY9xihJGAUCj5grrskDHga0954VI5Y/JQ+
	 DL41t4KV7E3v/4QfaEOI06+ETlVS9ECha3RHpYW/cQw5iafkJ+O7Jwe828OJ2WFxvW
	 wpDTSgmcEsYBw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5DB74C001E0
	for <ddprobe@lists.linux.dev>; Mon, 23 Oct 2023 07:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169804609637.11953.10678036517536672034.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ffd1c62aecb743a8289c8d83ee1d452956c8e3a94545696870455e10d4d44d35
Date: Mon, 23 Oct 2023 07:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1698046096
