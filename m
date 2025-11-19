Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 92B7622154B
	for <ddprobe@lists.linux.dev>; Wed, 19 Nov 2025 03:51:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763524314; cv=none; b=ezU/fp3D89KFf3mz/XqOYa2FJGxS7jAUYWghno52x90m4r889OJDmX+aTpnAp6o2k0TS5pKnVQz0LQnE7sWDx6GtZ1bMgQf1PHoSqHCFuUUAuN4Z8Kysq9zqrRFDCM6xomUSP58SobFkxriYUG2yuB7mgu9qqC4CU+oP72i0ezo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763524314; c=relaxed/simple;
	bh=07+1FWPCyyJVkw6FWb3WW9pTgKISO+oGs1Ktm6XqYhQ=;
	h=To:Subject:From:Message-Id:Date; b=takCQQoIZbO6+A68Vyd2N1Q3VxOyAgu4nd6GDB/1S81T+p+KZdyCL6Feq3Z7v7gqcA9TUJpSF/Rsl149iVPCP+njSReXBTTQxBlPYhD/TMN5ff7BKbkWl5HqpIcppOCKfF2+82SUse4OBWDDnASWrna/l3X6fpHjc2ctiGcY5ME=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DlOyk0gM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DlOyk0gM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DD996C4CEF5
	for <ddprobe@lists.linux.dev>; Wed, 19 Nov 2025 03:51:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763524313;
	bh=07+1FWPCyyJVkw6FWb3WW9pTgKISO+oGs1Ktm6XqYhQ=;
	h=To:Subject:From:Date:From;
	b=DlOyk0gMcUU9SRpyZK9Sq+Qpe14QK4SRcFcCOkURhl2GhA51L1jnItCg8XeQFnHbV
	 T39IAQXWOCzKVVKCHG56FzVO1R431rbuWiQx5Ysmu2mQsP4GrQ8qPiK0CuNReUZzKo
	 NFz43ezP3ACcNRE+cbMJloHxPms+j6UkCKXHmenNFLwZ+wLp52X0zJZy//fNuuaV53
	 g7D0gXxkQp5QzoMwtZWyLEpyZQYml1/iirQeSbK53kHb1gpJyZQ1K7nE2cAt9MvBJK
	 /a4nQqzSgJzgfBj4X6+0Ksflo9By38S9EEPwgvavVy2JC+Q27LMpM+qBg/GhOq9ykK
	 fkvjXiM5dZQag==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 971DCCF2573
	for <ddprobe@lists.linux.dev>; Wed, 19 Nov 2025 03:51:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176352431358.6855.15907970761118715364.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e8ee39648b92302428ff873fe816df63e2d0beff6485ab82281841bf01e039a1
Date: Wed, 19 Nov 2025 03:51:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763524313
