Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34E4B259C8D
	for <ddprobe@lists.linux.dev>; Fri, 25 Apr 2025 14:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745590794; cv=none; b=DUrHKV9t1fT7W9ejguWyzBgEcqQbgHz9HyNSzgwJVhC39ojetaS0B4SP+mXGhV6khermt8DtrCHSybrpGuzpPKToJkKcSy86BWsR9FuZKLmot44vwSYKkOo3Kom/sZxlNZvPyZHlqd2cNtIfFsXtAYgnjPJnnrSl+QyyLFq4XG8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745590794; c=relaxed/simple;
	bh=j7RgTOEJYgNiaExtlrzVkVzVrKs/X2IYIrw2C+04d1s=;
	h=To:Subject:From:Message-Id:Date; b=SG0jKF/0dv743T+nGSAycbx2X/LvA4sBTtG7v1pf/YEU9TkkrcTjhZVJEr9JaQN4EO8LKeA6x8W9fpgBVqcX5cEY+pSx/52ukcayo6wPgJqIu6+K6yXim4Qm0NZ3Neke+XjKJoXlCuBQp1vCjJONyJFUuJSlGcD/qfeYNPzNpEg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZiuKeneI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZiuKeneI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DE6CC4CEE4
	for <ddprobe@lists.linux.dev>; Fri, 25 Apr 2025 14:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745590793;
	bh=j7RgTOEJYgNiaExtlrzVkVzVrKs/X2IYIrw2C+04d1s=;
	h=To:Subject:From:Date:From;
	b=ZiuKeneIY5u9NQHsnmrC6GE1ROQXtsJol6sioL5d6CQRtRRgOK4wg4jgcrimz6vW0
	 8ltms5piGxAe4HNqqVO4XJQg+aXQQ+GqGIK1Z8lHsaMCzm8htHFb6FPXxOghTB3LZi
	 PNjfeKOKebelwhDttKSIbiZs66GvGXeBmjI6ky1NnPo6v2GVrU8CuJ7jgm+KjuisQa
	 6x5JX+Swza+qPfxTpctn3WFgLTh/lnzWdkLAedVd3g3YfEcVUjuGepjI1QlE/tsskr
	 q9tVyoMD3RGIP42om1T4Frk1NeRyLVumeUIw/5nOaZDeYprEQuzpAtI/DI4/d4JcoS
	 WNj3DJ1D5ffcA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EF15C369C2
	for <ddprobe@lists.linux.dev>; Fri, 25 Apr 2025 14:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174559079357.801.8027561587477491445.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 59451586933348668164f59278ca40a70a495bd62f6b7fe2f5b25cbff15a69c7
Date: Fri, 25 Apr 2025 14:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745590793
