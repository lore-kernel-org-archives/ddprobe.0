Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 75EC114BF90
	for <ddprobe@lists.linux.dev>; Thu, 11 Jul 2024 21:47:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720734443; cv=none; b=OiB4dlc04So4nNPO8R8xAsST0rH8AaoZuoCJqvjlzoREjRLURty7OqUp2TNGLCr8Rxgc5+Y2DwkZGup7zH1EMLt7femLLm17jEUEmUNzONGlx5eaZn3y7CKXP1IYOIn0J8ub0zrXU/dimSbw1skDF4ej/ilkWAuteZi3NmD7CU8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720734443; c=relaxed/simple;
	bh=Ew1n6/5pk7Y3qlfGn/CxFuQAiTPUF7q+xKjVgwc8S1w=;
	h=To:Subject:From:Message-Id:Date; b=eRtpTzgJWk2n6FT6cOwBFS3I9yYQAo2aDy7BbKsiGoZlnNZ/PulihVFkOXjucwqvuodz18ISCfBSv9g7zRvlqUfbpaARnSu/rlv7mWF1jK116i0CyEKPdC3ao4O+9NvxsU9fHkUgChZSSePSFA3OGPb+P+nNUhJppiJL8rGLwyY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=r2TjCe3H; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="r2TjCe3H"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DF9F5C116B1
	for <ddprobe@lists.linux.dev>; Thu, 11 Jul 2024 21:47:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720734442;
	bh=Ew1n6/5pk7Y3qlfGn/CxFuQAiTPUF7q+xKjVgwc8S1w=;
	h=To:Subject:From:Date:From;
	b=r2TjCe3HJtmmg6JaMNuIIdjidB1lc9kK55QvS5hGguEPiadiRqRQZw21me4mHORMm
	 mF6GSzfJGnNkqwpCN4xYxMKDqM5opcqIeud8IJo3xkAKi3mbdf1D4CJVYRA3FDrQ5Z
	 IY46FmkNXNazG0aR2W5E+TjHmRFWPZ1M04IwhBpoLR2KY4E7K0EQJhX2IiboW60kmY
	 iUUoLUSqbnHBUeSagWFiBefc7U6sNX57VgseEMPERbMymNW7b9wMIzxXa5nsgANone
	 AzE+7kzL6eHpqXYapUQ7ym9tmxe+7PhiKBBK8h6aEMu9YkjUF8EqKBx82CKXXcTmzG
	 5TBErAvoolOkA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C578AC3DA4A
	for <ddprobe@lists.linux.dev>; Thu, 11 Jul 2024 21:47:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172073444279.16655.6035594011974289311.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9caa797f969ab671b075aba28b47f951ee7c8dc6216534e080a73d98904a75fd
Date: Thu, 11 Jul 2024 21:47:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720734442
