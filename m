Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F5A616A395
	for <ddprobe@lists.linux.dev>; Sat,  2 May 2026 05:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777700854; cv=none; b=sSC30O9BI+0t8UZZ1ZHYZQ54Hn3V3axrUjC1ZSUg1LZa7/94gGJ0TOu2wD9pfwaXhfJWqzV9V6Ji4qOtXAB9NkkiJEpWiojZNhfFysTc3Mzg3Xq98/y6Ke9I7b2SmQ7RclVYlz5q+JrqdAuOj046jmZ4DgVrGp2aIa6lT7gw/sY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777700854; c=relaxed/simple;
	bh=i+Y/0WXvnXDpyXCkgS+862zM4nkDtcniOikea0fkHiM=;
	h=To:Subject:From:Message-Id:Date; b=f7gFRm43ZG2EAjxFS+ddAqR4y2LfwyTdfvsVcxdSp/j6msZLT4b/cZtneSejN2NqsHkUIHnIkoRYE5Yc5ZRt1MW7jWdUxBxz+NajdVQKCwQ+4NcRF0Mj4PB03ll0UKr7kiP59rgsdkZ2NqXKUoGZLhJ+7sdZYkCr2Kf1IQTtfus=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hJjxwoYI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hJjxwoYI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BF862C19425
	for <ddprobe@lists.linux.dev>; Sat,  2 May 2026 05:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777700853;
	bh=i+Y/0WXvnXDpyXCkgS+862zM4nkDtcniOikea0fkHiM=;
	h=To:Subject:From:Date:From;
	b=hJjxwoYIVavN+EGitvNd8ifcj3jRVM4r9CJ366L6iHYrMcbooWZ7rF0Gin8ZHpM1q
	 5CUoqjFSKnuBTvLg0HubK0TnK6oEvGo4Iv0rwGFhFCL8faX41YLVcxDOvO9/A1/D++
	 697MTzy86ERLgDORJrcdZGFJn9R0VSUj/3aSYgjLW+yr2KzxP0o58bP1Q3EYc9elhO
	 LGujlUWK4BM8BGbPhHDx3v/guKjUc2hXLFWdXSa3qShvuHMTilaTvZj2/WqIokqjWC
	 q+o8iY53jakU5+Chd8UlK9MqMS9o3qXr9FH7l5m/IY0LJsWjO5Asu1rc8E2f2Xvb8S
	 slTM67pEDXz4w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF324CD3424
	for <ddprobe@lists.linux.dev>; Sat,  2 May 2026 05:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177770085368.4886.4998748914897263310.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8513aa7dc7fb22a529ce317f96715513558511fae392872f2982838e49ed8eb3
Date: Sat, 02 May 2026 05:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777700853
