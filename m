Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2906920F0
	for <ddprobe@lists.linux.dev>; Sun, 31 Dec 2023 09:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="t56+wGoD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 90D86C433C8
	for <ddprobe@lists.linux.dev>; Sun, 31 Dec 2023 09:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1704013696;
	bh=4dUB2Wpa9WkwibC6jacrXqWcwM49KTKSHZfJ63dqxdo=;
	h=To:Subject:From:Date:From;
	b=t56+wGoDxP+sGNb8Qm+w/NAA/SyGp+lmoYpx05ICXcRamz7tAqDlwnsCjPyWUTyQb
	 856pm3kuLgsPYVYBl5N0iR/heWfIEC9GFOf9v/RGMBdt0bfuAPfhbdbPn+Bm9f+jnP
	 mbIo0qTSPHOtMOV6X226A/z7rnubFOUpHnPobocY3umRQz5iA6Bk/0k9g1tZ/dNevK
	 UuTu3xCAO39Z1AZKEW96jtyEdvw3PUfGf3psIEj1v5kQYw7lnoAVGp9IWCNQ9HyVNy
	 NV9oFGrUbQi90nK3FeR5hyOd404eS8Rob8tFJ7f2xTYnZhZBhUQc2CPQ6EZ0paLgV3
	 ih9cbDMlo6LJQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 67D35C3DA6E
	for <ddprobe@lists.linux.dev>; Sun, 31 Dec 2023 09:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170401369639.29673.6736065250540041701.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eb1c96695c0e2bc2336dd6971878345ecb0bd8db8142d33cfaa78ec0dede17a5
Date: Sun, 31 Dec 2023 09:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1704013696
