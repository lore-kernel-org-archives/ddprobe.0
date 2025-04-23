Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CF1128BA99
	for <ddprobe@lists.linux.dev>; Wed, 23 Apr 2025 17:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745431194; cv=none; b=mBaFNlXJh3mAvdrRkLchXUvdy3cvZGsg5UIw2/yu0M7FDgo6o47QtPxUcONTR8vn2thZVutte4mBy3nNQt5C95L/JOV9biwGLzcUunLuatOtPZU1ag3cF72kLxcXimAnTFbIjzCPu/n8qKPT6Puu+4jtile/PNiRULqLDst5RtY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745431194; c=relaxed/simple;
	bh=xVCCRZN+4lDKdylpFqYeLFz6bZf2+/wuPsSHVeP84lQ=;
	h=To:Subject:From:Message-Id:Date; b=NeU2hXSRY4hTXuBlLzuY/n2S1qO64CMKObPGKR9yc6rWWhzjqcpSCzSiJ7FFYAmLHhofj8cXN8kdOVwNmG3zyjD8cVEYgpNyDDyxDWAcwAr9srbVjrHDeOVUkb6xEZvB98+rmtNdVXDfROzKINMtrM/ul+Mb3lgxivjx6MEHdLw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XEkf/W5+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XEkf/W5+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2145C4CEE8
	for <ddprobe@lists.linux.dev>; Wed, 23 Apr 2025 17:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745431193;
	bh=xVCCRZN+4lDKdylpFqYeLFz6bZf2+/wuPsSHVeP84lQ=;
	h=To:Subject:From:Date:From;
	b=XEkf/W5+b71kkK51Ij6oqwPYCG8TPQ5ghoqgWTZL34dAQFQ0PEhL2k+ralHfFYH0q
	 O+U/jU2PfwLYDrr3qWSzG3ZBuBwdARlC6aJ+OBF83CvIrJwEwhBQZ5xN3Ah5zX8eHH
	 hZ+9pTErJHMXFxGLQ2LMECIOIhwZA5TRRRqDIoh3RvWQLZ1h7OBfr/tN5ZP0v8eO66
	 RYu2tBf98FWUtYCgmzYvEnjO3YLVqZB8h7mv+YMAcKH+2WfG8dDupVkSQUNlgknabo
	 KtTh+uKLvq5xJynwADwL0iXb3KkiuBkAAjebtd5DISHuoaAOQDIZDS/1WHiBsr2//O
	 joEGfP4JM7ONQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 907BBC369D3
	for <ddprobe@lists.linux.dev>; Wed, 23 Apr 2025 17:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174543119358.26059.9000544164514445428.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4981debdda854339f8011d748b7a1cb6817ea9ca13f33ba44fbb34b6f94ab72c
Date: Wed, 23 Apr 2025 17:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745431193
