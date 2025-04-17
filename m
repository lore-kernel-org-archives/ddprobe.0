Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2EED919E96A
	for <ddprobe@lists.linux.dev>; Thu, 17 Apr 2025 14:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744899594; cv=none; b=a+zxpHecLrI0yXkQtgU+ZaknwWn+kI/xSvY5c7m6k0BalkqrDR0mWijQ50skdxiiV6kWGwqIbmGWyGB3upMwqqeqbR9R4BqCNCyA20HP5aP/Khy0+4m7q5uI7WWGnyBoP+8yelq39gNfBz5VaLbEsrjaaizfOEZ4ej9vsUOJw24=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744899594; c=relaxed/simple;
	bh=9M8RLQZGXXUuMJ2BkrfZyCCQRSuKLbkn4+Y7kyi3uM4=;
	h=To:Subject:From:Message-Id:Date; b=baVuOcv5bwFDaekm0JlOL9zHzCjTOKiF5oFYnvROsrgTxW5j0XIj/jldXgB3rh59T8BrxTvQk2qAyW8v2Fsm2q1X62WwOD71YRZpiVZybGO0d6IOjRu6TQgX2rZaDUrV70BvAI4xC9P0tOfA1IZgYtT+HIHrhszudv6wYWFRiWw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=r/kmN4dr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="r/kmN4dr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A420EC4CEE4
	for <ddprobe@lists.linux.dev>; Thu, 17 Apr 2025 14:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744899593;
	bh=9M8RLQZGXXUuMJ2BkrfZyCCQRSuKLbkn4+Y7kyi3uM4=;
	h=To:Subject:From:Date:From;
	b=r/kmN4drUdFAqctnCB131pbUz5/KmJN+POaFr2UY1r73hkSr7ScC5FPwYOso5eeVW
	 NtdXm8xPL86DVhTyaC3Z+BMVKdx+xsu96+6SE2RvLA2Bm5/E0z4ZvAeJ49zTsX9puJ
	 L8aklH6+i694kHpat4x1/LtWulWrphM83EEpKT9f+Za3pn5OJmfw4kx7Dz4E96SaMM
	 JSD/6H3RFmHhH/3IQCiWuoy1QZgLO8hJZ8L58hqgVcSCHoLsK9I8KqqTR3TWfl8rrx
	 hBTSROLPKSvCsyVwsJdyCfMV76n6kB11v+hwxp6nKFFJXc0QSVq88W6cQQ08f/MZIi
	 J5/+AuNV0l+Bg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91211C369B2
	for <ddprobe@lists.linux.dev>; Thu, 17 Apr 2025 14:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174489959358.24720.3735171086165693991.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fe732e3ce3f78c54877e610da5a1b3499b902dddd746afb36c0686aecada20a9
Date: Thu, 17 Apr 2025 14:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744899593
