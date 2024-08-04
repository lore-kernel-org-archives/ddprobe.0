Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 343E863CB
	for <ddprobe@lists.linux.dev>; Sun,  4 Aug 2024 19:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722798954; cv=none; b=bXjFpKM9zdSNWITFbeZNNTyPi1rgbQDtlrYZwRqiP5Z4O51MA8FFQcfKEsCmTmC68di498YtrywtirzaPm/Jpo7zT1uWwDmjRNpxHaZAeIj6cB4nwjSoz/x8rom230tJKLxBHbNnGNYzldufGYuSuVTBymKFjirRGvlMXOeLVGg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722798954; c=relaxed/simple;
	bh=/ZX2UE4B6irPmYx1iS16sfZx6CZlYC8w6N/R8vkWfZ0=;
	h=To:Subject:From:Message-Id:Date; b=dAut2sKSuB63DFJ/hZjHYOh/J+2zITJAsBhUs/qjTjUNkZ5hkj7B9mAdITmf999jLq6CwSczZi0R2+B6iAiU5dgeT1fLXEN0X6iDweVaAAxU0pO1bvbpFqy6TEVTovkljMV2+NQdt2aBt931O2itEa8/xfvPzMlRBxDPAk6e/fI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XeRimC2l; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XeRimC2l"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B700BC32786
	for <ddprobe@lists.linux.dev>; Sun,  4 Aug 2024 19:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722798953;
	bh=/ZX2UE4B6irPmYx1iS16sfZx6CZlYC8w6N/R8vkWfZ0=;
	h=To:Subject:From:Date:From;
	b=XeRimC2lUb2Lb2KQlkNE2DfTmC5CPN542e3T6FYDhKLWMy6Te6mKO4oe6A9j4kwfY
	 VD/RXsljn9g/jUQxaqStFLJbXK+zc8BN7bkusrLUBUJsbibH7lUxADqnZuFpnMWXDg
	 VECjDnBOUsqOt64blDH62e4eKNqDv1Cg8kptM6pw4OF5Ld4SRBIRS0bYimLoPRhCWJ
	 AXf97ZcCE5k9e0CHvKMFoAOwnqnxayZpKL4dsx2QKRbHqLnnMq61VKqI7NPd8rOzC4
	 6XWKC0lkUAKtwef2YQHA3XDZFH7u9VWgg9dbEQvRgVFsTdhodrQK+BqScXTkCv+JrN
	 H1sXTwYPXpVCQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9DB86C3DA7F
	for <ddprobe@lists.linux.dev>; Sun,  4 Aug 2024 19:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172279895360.24582.11992673454789559631.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5d075c4d46741e17e83c99c020a448a99d9e079e22da48b82fac3bf58b8285a5
Date: Sun, 04 Aug 2024 19:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722798953
