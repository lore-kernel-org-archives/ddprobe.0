Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 501DA2E7391
	for <ddprobe@lists.linux.dev>; Sun, 21 Jun 2026 03:06:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782011194; cv=none; b=uElUynFTC45/FWsnshmByvCDotudd3opEZrHhR+lzMSQpQDlAwEfQqbL7dZQL/H2hcUXFul/tnTKM9d8z/imHBqb8Mkg5Dkj+ts/qJFwqug4YSAtLmq1ziMgIyLD3zR/9A3lDmzspDUJhuy1Qt+NnXHc18cdL1watyAUXb8IYJw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782011194; c=relaxed/simple;
	bh=dCN+7Um6ycvIgZ1Xcn6+H750gcRZbcNTe9Bcgy7qPHk=;
	h=To:Subject:From:Message-Id:Date; b=VQbsoWP1Ot0eM0746nF4NXxt+DlqEFm6nCD/cJLcw1wznsykab+8aNhFtKkmRNCyKKC4G7g+UqpoEt5/coWqyYUMFgiDLg1OD+U9GD5hYCFrxkCXEcmrzia+OnkITT9I2Zn3Xq44OS4+PBkSTX4OHD2V0gXNc+LmV5rnPrYoWQE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eJgmCnqC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eJgmCnqC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D14CDC2BCB8
	for <ddprobe@lists.linux.dev>; Sun, 21 Jun 2026 03:06:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782011193;
	bh=dCN+7Um6ycvIgZ1Xcn6+H750gcRZbcNTe9Bcgy7qPHk=;
	h=To:Subject:From:Date:From;
	b=eJgmCnqCWBTIrqHFPkCxSymAMnC0WMzzTUQg5ZqzQ2dciiShx4LMP5CDtXUAF8s9e
	 dOiGG3UgI0tpQuVPgCeBg8tugOn6hIcR0sn9oqC+YCZTexMlO6r1Tru33AyLoZN50v
	 fPH3IhF5UnFRHsTO7in72lBQCAEhXdNxc+6j/F8jBXJsr4ItlLOwzCfYTEUBr9YChh
	 y5VaGDKBnFkrBvNqJ698rFgzCrMYIQtjEpmudhNFbW4deyi1Ye4JnBj92L1RXFZG3d
	 MqgVVhjfb5HSFXuA2McODFpDCOLzPTAcurO0u1lucGj6k8Ywiun5jTfMhpB7zvRgnS
	 LeBPDyMKQaZpA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0CF4CD4F26
	for <ddprobe@lists.linux.dev>; Sun, 21 Jun 2026 03:06:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178201119368.12732.4632597117980306172.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ad03309ab6e18389a88f64732f5d0996052ab80c70fa1cde076aee3eb8560834
Date: Sun, 21 Jun 2026 03:06:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782011193
