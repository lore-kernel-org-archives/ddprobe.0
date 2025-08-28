Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C5841A5BBC
	for <ddprobe@lists.linux.dev>; Thu, 28 Aug 2025 04:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756354794; cv=none; b=SVW5x0j0omCcAA74hlxMTtUzx9dZ/dughtcaeP2/bAYR/H6bzRvRSncwF89e5rOaE/eQIy379H+WOgDgzOLTzU2Q/XGou07JUL+qrBVd4DjbsIm502gOxUbCYjsLUacivt5hin13f8F4w5wGizy2VqpkX6A8tHn77/TvFa3k7Jk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756354794; c=relaxed/simple;
	bh=UNQp2oHqhNL2F/G0XoAzKx1zq0bftLFTN+65TRwWul4=;
	h=To:Subject:From:Message-Id:Date; b=Y3NrbPaJHtySvJD8OjJ9y9gmS+FynJP7lA9iUktwL/bGcHz3PNVa8jD3+rJQVVmX0KV0Yp7Qvn5PzxdzJBprHcjd4zHzwSGjrHsih6JRais7d7r/7QPIiFPP6EJ1lErDeusyp+i13Wh/81Af6uSH+6l5+Xy+4btMv/Ta6+5/Syc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gCf4d1rp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gCf4d1rp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC548C4CEEB
	for <ddprobe@lists.linux.dev>; Thu, 28 Aug 2025 04:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756354793;
	bh=UNQp2oHqhNL2F/G0XoAzKx1zq0bftLFTN+65TRwWul4=;
	h=To:Subject:From:Date:From;
	b=gCf4d1rpCAeRVa3WifVknPHLJU9a2Psu44fWpWY+vb9unOOmPq2zhqs/P0bmO50Vi
	 35LbqQns0cIS5VwIxMLYFunVFvBXR4xlH/RmVqRy9tyzZGfzBw1Usr7H18N1nY0r9V
	 eL+himgNB4/ygA52ZfqmR5pOOWYzIK96nNBP0u86kq8ZugjVrOY0aijcM/VVsjEYa6
	 RrEbQLyTMHIE/+Z2bNybu5gGlhkT27mYLH0wd98lgKVboPMDg12BNGqd7HqDL1ByHs
	 HAIltvHkygp4hoTfMeIATKm0QYegTipLtTdM3M6qhbO9Vmu0xzu7bdYAXghmnIfJPq
	 il8Fmz+u4cXAA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9398CCA0FF2
	for <ddprobe@lists.linux.dev>; Thu, 28 Aug 2025 04:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175635479358.22379.10367247708075930374.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bd8a555c81f61b227d3d867d615e9160c2756ce8b86f6eedb08b5516f088548a
Date: Thu, 28 Aug 2025 04:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756354793
