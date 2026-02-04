Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B73335DCF5
	for <ddprobe@lists.linux.dev>; Wed,  4 Feb 2026 06:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770186834; cv=none; b=BAWGEMI7zHSRe2REdroymdA27KYHnzbMAxiorKo0rr/8ABCIzjcDqcbjGayjNq/l/yrkr/CirLZEGLiQJ3PesvZKOWmFwKqo42P+E4SkHG3IQ4TfgoGj0cQoMirsSM91gqgvDTM4JoVsvUuh5LKaku/sqDwffQWeJkOmgWHrRIw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770186834; c=relaxed/simple;
	bh=qm/kkYS+Z52C9wqHjoo/LUlW4jE1rg0rGPiLSpaZqDc=;
	h=To:Subject:From:Message-Id:Date; b=Jx6DpJuW0RuzTD4vMaENqRJmmaInNWe6vrdBTfXsYA4wdKUmRWTrJGr0cm9LlzzCdhTz5XGkaQhBQFLypquiwEYTy0QjQtF368Te5xYSN8Vqa3yYDpHKLxyonRtErwzTbMEmWBSYaU5f0GLbiMiN/5Q+1OfOZMFpo5aZbWVfjJ0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OB76gE/B; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OB76gE/B"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9161C4CEF7
	for <ddprobe@lists.linux.dev>; Wed,  4 Feb 2026 06:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770186833;
	bh=qm/kkYS+Z52C9wqHjoo/LUlW4jE1rg0rGPiLSpaZqDc=;
	h=To:Subject:From:Date:From;
	b=OB76gE/BJpXkSkR2pZKq/m7HgMaKScQ04m2grmjW8HahY5zFRXtlDf/eFg8Omd758
	 jwQElJUNuMo11zBM+HM0tR8xPpVbyfJEaWp6/ibLNPDtMnGhmLYBd8xnqRQ5THDCaN
	 Ns3tQwGWHWt9j2E0a64i2dBpZER6iPN4oXORLsnCvdmerFwxH/rLTNooKpbiVNkpr8
	 4Na4z/+1yrI7Lm27Ta3rorBnJOi0QzLGLkHm6KV5q1l1SJYWMKqfWGa+0kZ0sXn8W6
	 oD34hIfIi0mmOtK3ZQpnjZhs+Ypoh59rY2kIAynaEo5NXmW4Vfl5lpQJhEcFYhVwxr
	 Sa+MyTRg3eBCw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 956A6E7FDFA
	for <ddprobe@lists.linux.dev>; Wed,  4 Feb 2026 06:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177018683360.18007.12996043174697242127.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c14be602b43ed200357fcc4fef3c782fed2853571d8c891750a5ccdd86319e17
Date: Wed, 04 Feb 2026 06:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770186833
