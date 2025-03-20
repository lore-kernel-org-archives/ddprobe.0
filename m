Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5D3F81F8739
	for <ddprobe@lists.linux.dev>; Thu, 20 Mar 2025 07:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742457594; cv=none; b=ZfrSEkXaTXntRJ2GfHNdwVnaPauFqZCp1BdXqaIZajMRDkEGQq8Ie/b7kp6ydortKEcS6vcULOwIQ5K3gOFi9y1CRbBUXUvjO76gsK+r4CQHJjRTjdo1dANwY8MNZErjDSHWbNcKsKZnnqgxX2Vc0guDQFUH95u4xBFP6Wd4vzU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742457594; c=relaxed/simple;
	bh=91AlDvWa2DRzRtiHCXPpNiyU81PdUxWVPgEJ2e5MlLI=;
	h=To:Subject:From:Message-Id:Date; b=u+0fcln05AhjpCM1v/DuYuEg71f3k2PX2PNaGzdWk/hEDQj8dbQ5E2noBEftsUb8nPH/bypBREGqf4fnCQ6t3cQL2L0fgpS7UHW0+C5Q6fGlzu4gSPVJK7a9ADTd0D4Rymcs8j7ViakZ3tXtDW+hD1Xv6hYjhXRFLV79bN3rdeU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XH4HNnZB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XH4HNnZB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BEAA4C4CEDD
	for <ddprobe@lists.linux.dev>; Thu, 20 Mar 2025 07:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742457593;
	bh=91AlDvWa2DRzRtiHCXPpNiyU81PdUxWVPgEJ2e5MlLI=;
	h=To:Subject:From:Date:From;
	b=XH4HNnZBEZKjtsRYQPXT8hSNDedkIqimefE/pSIu/UebnSeldQIOpzpWMaxIeNegM
	 h5+w1MBEEjZHiGkxxHiFhKll+kBIcyGDno0TELdpqohYIg5dBV/+mC1e0ZLYgSBQ92
	 +37w1gZZW/a2cvNFOWMWIzmlXFxBg9TKbXLDOnUZjAPZc7Mw1GQJcJQqw/SnsM6vJE
	 8j0FZ/zsFIqaMkBaoyg2QGZ9Uo5ihYLGc4nBoIvzLR1hHJh2Xh7SfM/pEqlP1AhxCW
	 biQBTIa/hkoZ+EJiB1SKNJpDkt18yNPopKoGnWfBrIoyHxp5WzBdD7abapfjzeXXBr
	 O34zOmjL2PPXg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A2687C28B30
	for <ddprobe@lists.linux.dev>; Thu, 20 Mar 2025 07:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174245759364.31992.18199118421840247900.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6988d3ddecf66d97e192fcaa99259c07add85270e53f7de66c303987b69366e0
Date: Thu, 20 Mar 2025 07:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742457593
