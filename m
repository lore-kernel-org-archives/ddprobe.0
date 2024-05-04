Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 555A328EC
	for <ddprobe@lists.linux.dev>; Sat,  4 May 2024 10:32:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714818743; cv=none; b=dUFB6jDiDHeSjeP9f2aKA/w9Jjpu+ENlgcO7qf/BlMsN6ZRtCFZNd5Qe9+vIgU25WCBTFP6uxY1rDnLv5Ka5H6Bu8H6ZG0PKZuqhrcfoQy16zjBbzzK0v5/SFA4UR1w+LH2TTB53a3WrHrAAe/JhVf8J5kAhVqDq8qralbUB4gY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714818743; c=relaxed/simple;
	bh=M2AtIWQ6HmfRYpY+SZ+5NEyoEoRKZNDRUnEiSTF8nPE=;
	h=To:Subject:From:Message-Id:Date; b=X4bfd7HDpDt1Uj66HMtakMIQPi/EaWSPlZn78S41eSm9O1fXm/pC0f456UqjFVyEQUm3rVEdftp4GIoo/m40cYz/gY8qIQtrIaJ/HiYZ9BRmNJQyOIA8sCh+cM7U5ATZJgM9/sGRd/xMVjXapkSqgEz7023YeL4xRkN5XxkQgyI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZOQSETeK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZOQSETeK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5FD5C072AA
	for <ddprobe@lists.linux.dev>; Sat,  4 May 2024 10:32:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714818742;
	bh=M2AtIWQ6HmfRYpY+SZ+5NEyoEoRKZNDRUnEiSTF8nPE=;
	h=To:Subject:From:Date:From;
	b=ZOQSETeKWTOAsPz5198D+qpX23TfBJ6ay9QjtQ/9y1qlQp9I4d/37g95sgNJ6ThuJ
	 gSMSvgZ38eakDoyhpqKTnR0hY9vRR/CCuZfmqbucEyNFXFHrUamNmXaOcnSMnGZPjY
	 gbpSey0R91UPf0GjiUB/Ta+uIDS6SjWt7z5HbIdTAHvYZMaJWoEwGEVMNMPf5/jKb+
	 ro0e5bFFAX3NR0A6YoFPhwMMtMtPAknKqXTfJyrCpcFFO/Yty1dnk72SecfASyQpmc
	 GwS+dIqvx5atQcGGlJ0XpFBqCdWQ1Vd8iUWGEPG7+f2zxe1/McclCqpuK2eHdluCIT
	 9vTXwJo96uLEg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BFD6AC4345F
	for <ddprobe@lists.linux.dev>; Sat,  4 May 2024 10:32:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171481874276.27116.8141381892735096329.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4933cfe1156471a6a0e315b4ea38f519c68d55d05df7242804428fba55c8a2c6
Date: Sat, 04 May 2024 10:32:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714818742
