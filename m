Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DEE22367BA
	for <ddprobe@lists.linux.dev>; Fri, 30 May 2025 17:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748625594; cv=none; b=vCv8zm3l1nVDVXU79r9uIBC3Eem5nOVedyuyb6nRhL8r1LTYPlNs/5tWvM2/sydxqtRjiaer/f8AqxC1dmiJ+gAbfnFLXSJB6GU+hJPJ9ocRPixrox34rdEU0QmOPI4VTQIVcUzcxAAxdeAuD2+3mhpeu5Xb0nL4J0yc/wv+oio=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748625594; c=relaxed/simple;
	bh=ngS4VTBnEiLRvOJTZpmuFtsaxvq3S1BP3HUlWC9jPpY=;
	h=To:Subject:From:Message-Id:Date; b=i6XbpRgRm6yxzQsTnjm2Xg+OCzfABx7clwLsdLPuVoY/u0TAztUW9TFMkWab9gZoDi1N7DSu6O2xqoN+/v889FNEFfTEtsQJLOfNvElQrrWuM6gl+7o0Rn0tFqXvNSK/1JVz6oGvhINrqMDygaZebjcfZUPw5RoH55MsVrs1dFg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uJXOtSKq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uJXOtSKq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1DE3C4CEE9
	for <ddprobe@lists.linux.dev>; Fri, 30 May 2025 17:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748625593;
	bh=ngS4VTBnEiLRvOJTZpmuFtsaxvq3S1BP3HUlWC9jPpY=;
	h=To:Subject:From:Date:From;
	b=uJXOtSKqd3mWTBe5+XubrxrbuB2ltWk2BjoPHqh0chhgLS7BkGEUewk2W6JvOxuK7
	 UbTVqo5R/W+E9Ww3fBSpZA1pOi2aFMEuDDK91f1ZR99lYoPRx71tvSdgY0izGZ6KBA
	 AUOhOZh+fm3zt7puBL72I/iu6yqGKLsSey3awmAIN45yQnk1qkdmXV27mFNbmP0UIr
	 1ac8zJeNvxpl1gUNNfzEEk5n+0k6kZAKdXdmF82y6Sa3zrrcjib/ZxpZJJxl4nsu+q
	 1NYF+WXfTPMuJ/u1ZTiLA3xMk5xQcpdStsRvbPBsfnYpYv1+WYt3kvIEdlSBLIV51U
	 MOCxqvk285eAQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 907F6C5AD49
	for <ddprobe@lists.linux.dev>; Fri, 30 May 2025 17:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174862559358.23178.17748384425194601953.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 70efc51d65020a0f39da8b2c6370d3a3396e19e6db4d7149504291beb4ba2639
Date: Fri, 30 May 2025 17:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748625593
