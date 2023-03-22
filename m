Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 498481FB1
	for <ddprobe@lists.linux.dev>; Wed, 22 Mar 2023 08:19:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E883DC433EF
	for <ddprobe@lists.linux.dev>; Wed, 22 Mar 2023 08:19:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1679473145;
	bh=TPYtePX/Cu+IX95XR8oJRo0ncK4Q0bF4mDo6UtkoHHQ=;
	h=To:Subject:From:Date:From;
	b=VsP5W3BDnYXuG4DIs4ZYimussg7qyGPdC9BkMUPW7DBmSDpXlWcV/M7RtGMMNdMbb
	 pHVS3bgOQNyU60LPrzSsiZOMmIV7S8/KRu7ofp4CJQMDbgxPcq0yr/OMqqTsje0uvU
	 lBfnYV32HEr/cfn2YxY/rMfzlg3FFCdUXk6CdVLX/hrVr9KwZh506+kdgfkgK8+oNS
	 ADv3XgVgD5WoZpxTGSAsKFOZyPhFaApCDprAxa7UOKMV9CR+AdW6rFX5Tvc+BAQgp+
	 Zf2oeM60LbMfC3rYoauweAsQjd6UC1X4e+/AsmvhnhfGlXalkGX7f2Qq8edJ4qG94E
	 2YXp7ddVcdwSQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C0F3FC6FD1C
	for <ddprobe@lists.linux.dev>; Wed, 22 Mar 2023 08:19:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167947314578.29815.8982492741061624380.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3f0503f76def799051cca9679c459c677013548d247e1c7bca65b08216fb6713
Date: Wed, 22 Mar 2023 08:19:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1679473145
