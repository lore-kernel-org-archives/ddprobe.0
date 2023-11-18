Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EF5A010785
	for <ddprobe@lists.linux.dev>; Sat, 18 Nov 2023 07:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rIuR1kc7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 83F0BC433C7
	for <ddprobe@lists.linux.dev>; Sat, 18 Nov 2023 07:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1700293696;
	bh=TgjULn4d109Ufa1NvWSpyGIZvUSugO3zpMa/M1aRu4o=;
	h=To:Subject:From:Date:From;
	b=rIuR1kc74AP/mH6lxieB0qG5HDB1TaCrwyHYktiHuWVs+8EssiLzgHsBFgfBOdmr3
	 VZjQWrH2t1rX6pMKxJM2bjR5zo7+ct9/sPBv/0jpKrVcwxPqLKflBg1H4puMcjWkEb
	 SUaS1YfRmOnXYcunqKkoG+6a/OPFavH99ltzqE3Ls4UiOlouksbSEyVDKifxRi1k4Z
	 jJIRJ5eO28fF59CH4mjyh5jg2Q54GP0xCJBOLXQwYEk7We47aIQlAoWH4wyDxthK++
	 0GtqcATv0tPkI0A8mfSKHZFD2S2N7YZSoIadUHYtKkVpVTwpdZVWyE7B27xv6iMjlF
	 T7ermnyagKQwQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 64BFAC2BB3F
	for <ddprobe@lists.linux.dev>; Sat, 18 Nov 2023 07:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170029369640.11070.11352665257266861636.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ed3cd3ab89d66159f70eae1b30a3e013bb6962c00fd0a88832802685b97648b6
Date: Sat, 18 Nov 2023 07:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1700293696
