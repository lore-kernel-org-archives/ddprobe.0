Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D01235280
	for <ddprobe@lists.linux.dev>; Wed,  7 May 2025 17:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746638394; cv=none; b=o+OICsxomaz9d3a1D+RNOLqdQFF393fAxOxKvUtHSCe6hypab+GtR4Jzhe/vJbnD4GBNtIAaRtvpjyZ8uO+R2DcssEom7qse5wwXu1mt2d7HSIDEkSlMKtaVo5bKpgDEGAPLMvGxukd/J6YlZMmPZfi52psYRc/ZHHSXvw5Fq6k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746638394; c=relaxed/simple;
	bh=8y+jHlhnTuLNtqhYjX9C0nvKe8d1Ykk5mCJKJHVcFxE=;
	h=To:Subject:From:Message-Id:Date; b=HsR1Ch0DxJOw1RU6knCybvtgX3HWBs3WuqDOeY+NxJVKSUnX5kz0Bw5U5YMboo5SceazmrxYL6SnrZOVejzGxPr6PaO6fB2SVIbWnoJ6tA+N6v/YuIVkfGW1m7rhld+u8bXOMN7tRFa+1fJNp/3H7Kj+pEQcQIcAbsPSFQk1eRw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=itZgaq9C; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="itZgaq9C"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D862C4CEE2
	for <ddprobe@lists.linux.dev>; Wed,  7 May 2025 17:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746638393;
	bh=8y+jHlhnTuLNtqhYjX9C0nvKe8d1Ykk5mCJKJHVcFxE=;
	h=To:Subject:From:Date:From;
	b=itZgaq9CHy8+85mHzX0CwlnsQt8qoE5ztzQjJnz74vyNlOcCQNhAyglcPfFajiVF1
	 xs8k8zAGrSFktlqV55AG+U38WxHsDhcekrJdFcXT9zHOu+ZqDkCVZqnxnbBsjMrI1b
	 IfFTIPbpxN3NYayHj3w3qqK4c475bqEb3MbfnAIMOtQ/Mw+K8Om2mLl8SfQt0lri1p
	 vfSZUYaBtgq1yr5n6Rya7ynq/pcuTYg+LW0fRlP5jB/MN15vNyZ7IIYIJYm6GHIlML
	 349OHRblxi+MVY0u2L0anhsFfLs4VgLuVzMLVoPRSiszNDvPXBXNdEECdgmRuqzqZH
	 VcbVyrCX0BuMw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F1C5C3ABBF
	for <ddprobe@lists.linux.dev>; Wed,  7 May 2025 17:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174663839357.11849.14778870758727138736.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7de2a30f46c4a2a951d39610c115cad43b97b1e1974b86ee12f281495942905a
Date: Wed, 07 May 2025 17:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746638393
