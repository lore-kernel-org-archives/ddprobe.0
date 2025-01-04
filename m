Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BA0018A6DB
	for <ddprobe@lists.linux.dev>; Sat,  4 Jan 2025 13:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735998354; cv=none; b=dC+Tl+fSB4PAle3xKeZRg5dL9IVQq4py77pM+G5Fk/wMLGxkq095a/nj6WeLImgdPVkzFT8Z/BeV6zT44nffPAxh1qGl9LkxXQUBVdNQFvUX2OBCRON8k2g7WhxY8dv4KJl5NKxyIr0kmHavgaoZi6s+qmDmjuoMpkkiyvjGCMY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735998354; c=relaxed/simple;
	bh=dGRIdZxlzPyEZ81zDfig1wwZGZ/JrHfpekbVnlG/Wpg=;
	h=To:Subject:From:Message-Id:Date; b=D9787p2BJpAg3k6sZS9Z+YqqMNc7D3R7DrvfgC36pHsJZYvKFpEvOcnNoVpinwHe9w9OUqm8NobSIcOZPU58IHBH4Rui4ktPX8vJGh1dNEauygXbHyhqOiBvPLdNGZvkVapQFaXnWk23HRiAGX5+QuZTDxU/KVG1xd6TNYcFLxE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=e/MxYzz8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="e/MxYzz8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A781EC4CED1
	for <ddprobe@lists.linux.dev>; Sat,  4 Jan 2025 13:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735998353;
	bh=dGRIdZxlzPyEZ81zDfig1wwZGZ/JrHfpekbVnlG/Wpg=;
	h=To:Subject:From:Date:From;
	b=e/MxYzz8Z3gHDwkhn+92+Km21c+qotEmDtA9mDmBP2rehVhwOyZQP+B6JjNR6y5Ig
	 00CSzpMMrQ+rNsp5W00MxuIPaFTLcPrAnQlEfLxB2OVXJ1cRZx1C9wdBhCHrTHZ5XO
	 m+viUpJ/AwimbTA7OsdQOJE70VkZj+SJ6f8tWDNtWjuk8fiOWnNbK/yOVcyOSrl8cm
	 zTMV2GiZ7JL3Ycmp5MRIMz7C/1EQaJW7NL7Mn1PNVHW24OqRj/5Adg9Dppq50NYFUw
	 CPqZXa921HX+24ypFCE2l2AGfxt1FdYjDR4H+7JvBDxo84xoELH3ke47+Ewc1uMjiW
	 Cucj3EGsRrPVQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93D06E77188
	for <ddprobe@lists.linux.dev>; Sat,  4 Jan 2025 13:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173599835358.28655.6313809133500630292.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3e241cd63efddc57c733103479236596fb1cd42dd09f110f9ab32fca168399ed
Date: Sat, 04 Jan 2025 13:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735998353
