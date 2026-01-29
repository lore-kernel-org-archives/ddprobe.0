Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C90EE2D7DC0
	for <ddprobe@lists.linux.dev>; Thu, 29 Jan 2026 13:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769694833; cv=none; b=C3q2Wk8LznXKVduaAIT0TSi+RTjO6pkw4k5hihMAHIHcW7Y3Tl1f6v5jCa8/KA7cvyo7BLf2VzkEQrqIMkoqWIxntnBUpbuMrFPAvs/J7gj55UNR82/3XeLkKqXCSBNDcJjESlgPsSxJBUEx42MG5k/oTahpE9sP/KdJuSB/VnI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769694833; c=relaxed/simple;
	bh=SJiGrmuGsPEz2IkrGIOOLwLYA30A7dK6Pn+w1cODCZs=;
	h=To:Subject:From:Message-Id:Date; b=YL092OtM4a81mfAAfmee+ldlKu1vAtMDkb7RfqQWh05+cp3YmdnHUyT02why2MmMGi2dqaFTUe5wSsGsIrxmS4aQ0zjMBSH0imvG0xHN9DY3kCehsVqKYl6z0FP04b2bUWz0s14pUi/FGGKpUM3pimPoTvLrmVf1FYw4+qc6vsc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KKLV+pqn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KKLV+pqn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE38AC116D0
	for <ddprobe@lists.linux.dev>; Thu, 29 Jan 2026 13:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769694833;
	bh=SJiGrmuGsPEz2IkrGIOOLwLYA30A7dK6Pn+w1cODCZs=;
	h=To:Subject:From:Date:From;
	b=KKLV+pqnx+kJnUv8DgWnuAdEJPd6Oll+P/nylXUJ2u+Q9TCf/lLZs1XAOlwkVGIhn
	 LJ1qJ1JZUmGCBR+yqENoTn9n2MW0FwaJHBoiFVAv6LxGw5PYuqxP9GQIMOIX4ENBoW
	 XqnQgF9fwLpECS+m/yHJybxFazgrtkIqginGhCAFOVXSfOfW0xbpzYF4/TqBJwigqZ
	 WcuP2mW+cVUnC4WEV9Lx+fotPGegNmIyA9yt4zve8Lb0hmIDET9qUAYr83t9n3Mw96
	 weYoXWniaQhZZAejaU75/bM1bBh3fB/bX6//oATn9e6x1aCjBA+39sVLnPjr1uLYjL
	 Y0zb8X5TXy4Nw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C9DED61019
	for <ddprobe@lists.linux.dev>; Thu, 29 Jan 2026 13:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176969483361.26737.11428341468712435417.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 97422c351acd5115bed98aaf2e0bcadb8e70d21bbf60c052212b158098cf2382
Date: Thu, 29 Jan 2026 13:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769694833
