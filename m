Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E2B3D3984A
	for <ddprobe@lists.linux.dev>; Tue,  9 Jan 2024 14:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Y86tg5ZY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7C65BC433C7
	for <ddprobe@lists.linux.dev>; Tue,  9 Jan 2024 14:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1704809896;
	bh=ZF6ChqXSNtJo+6n5f/yz9o/aIlej/ulNI382q/hS1zI=;
	h=To:Subject:From:Date:From;
	b=Y86tg5ZYhxOfFVvdyEvzbFO11XKd18JjfHgYxz/v6nYI8j4AhxHk6Ltyj5vyxl0XR
	 +eONOp0+ubIXQ/JhBzaa0CjSRAPQYV8zzJa/Y+fHkVBxdu14Ssx/MhH6UHRopuQH/Q
	 4I9vCvnpGIylbR/DeetRc3WsAoZnNhbrF+sm2aQOttBbE4ZDg+YcCvoE6bPGqNrCed
	 1bUExDXp7pqhaR2t9nAp6yunaRh+NGj43unsGpkanM9dP/XIgFP204lH/uhxYvfrgG
	 73HDs2lnBOvrk0M/LjnnH50RhSiDoNGB6mRt89sznZ3JKTThtTDRFeg9cm0HjZJ13K
	 3gC9DaljG65qw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5FABEC46CD2
	for <ddprobe@lists.linux.dev>; Tue,  9 Jan 2024 14:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170480989638.479.4006440914607607834.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8bf757e89090bd11a3b54f98c0637555aee62e8d98be3f73ee00ab054b5a02ef
Date: Tue, 09 Jan 2024 14:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1704809896
