Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DC0D29AC
	for <ddprobe@lists.linux.dev>; Sat, 21 Jan 2023 23:02:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CECC2C433EF
	for <ddprobe@lists.linux.dev>; Sat, 21 Jan 2023 23:02:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674342125;
	bh=ZpZAdE8Lnm1lg1nldXo6DKvBp+UeMwc8Y5f9Dng3a7I=;
	h=To:Subject:From:Date:From;
	b=KsFKM97s3wJckgP6809LEa9uiJm9JnPjP6gEb2jvLYKkAohGjuq77GvxmDaO+qW/q
	 GgqJwAkfYaxOwcUJa+7lxEuPKq88jA0my5Th2zywmep38kLsNVu7jTjQLi8GQQH/v8
	 hPr+kYlPEoGunXEpjHcFG0ocZorQCx8F+xyL6eC9yyTyiHxQ51nUp+hI87gsToRaYR
	 K+6xrkx7mJG5vnBOxoh4Cnq/+LsqCmq0LzTCIdMPNS2EVAFxiEDGTyTLM5eBiws2Aw
	 EPRbXLWJlaUpdRAg/Ak0n43fSm72baMaTOLbB74mjXxgtSQ62CZomdgABusG4FHI81
	 kkap8B7MIsLvA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B369CC27C76
	for <ddprobe@lists.linux.dev>; Sat, 21 Jan 2023 23:02:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167434212572.12260.17832645178950325431.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0cf9e9fc121c40cb414cb8f7c2cc80b0197ed0b02ef9320c969f8f6fe90eaeef
Date: Sat, 21 Jan 2023 23:02:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674342125
