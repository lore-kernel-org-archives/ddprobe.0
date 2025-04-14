Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C4DE2EAE6
	for <ddprobe@lists.linux.dev>; Mon, 14 Apr 2025 05:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744608594; cv=none; b=B1fSJlodXXgUi4Ti0VDSsUGq1BP9ZQi7f10SrEkH842eE9oNNjmEvSHbxs/So4i4e1wP6NRzGfJgGQ9UqdfQxGDvh88gZhHYrs0aUEw2LUUIVN66Kmp0/kxugoJprOmruCOOqdSYl5D8cqPK4/t41rNtuV/g3ZJNnT37UZ1qM+g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744608594; c=relaxed/simple;
	bh=ahIjLFtmFLgFO/inmqtommX/btRr0gA7H8nv9+6XzNE=;
	h=To:Subject:From:Message-Id:Date; b=e8AEPHFhX9HYmAHM/jMmvkquOhhKBq+9KWnKed7zVPH03Nm3aMuWlHGpOQktrza3eBT2LbawkTvh+cjuLRSiz3yFNYP0yqeM2/EakjSh21nb+wnq+KRMGBDi9p69fsNrWce332DP12K5dzBeD7Me9L1waHSLVk+2o5/ARokEHpM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=X+5J1hKA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="X+5J1hKA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABF8EC4CEE2
	for <ddprobe@lists.linux.dev>; Mon, 14 Apr 2025 05:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744608593;
	bh=ahIjLFtmFLgFO/inmqtommX/btRr0gA7H8nv9+6XzNE=;
	h=To:Subject:From:Date:From;
	b=X+5J1hKAT/Uf9UnQWuMDO2Xnf7qCK3uO9+CENSI4txS6s2Ei6Rv6uS7nqU3iltrGB
	 k0vatz/bTZV/boVD6yGTksEKya93WPodgoGAXC/sUjcUVezs2aOI4wKfaR7c9RljsG
	 0rzs/DQrQKC63bEHWhBZtLYJ6miXIl7c8e5/M/mKFmjy2QLo7O3JBVBX415m/FCU57
	 NSiW6RslPM+uqXz9/wqY9RaxJduM2qSO+0rYr800hgzgoc/FiJ3/7gDU3evG7HlC4n
	 Jh6LzJiTr/NVfEPUDc7njABrXK2jbXY69hPLEqOlje8nFuMnYgmagZ2WK7K1/ONwfX
	 mxPrJ+6qF3mLw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B715C3601E
	for <ddprobe@lists.linux.dev>; Mon, 14 Apr 2025 05:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174460859359.13441.16184212033891194851.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e2ef4e72698754838291748c7a384e9462225fcff629cae0ccc5d5ea25da05ad
Date: Mon, 14 Apr 2025 05:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744608593
