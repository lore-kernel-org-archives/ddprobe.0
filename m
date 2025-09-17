Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C9DA621B19D
	for <ddprobe@lists.linux.dev>; Wed, 17 Sep 2025 07:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758093593; cv=none; b=jkolrN+lCkztaHxT73sANcky2GYex5f/1XJnzi4A0UP3tmAyHnlQ8Qqcp2RGH/uh518aI1eTQylPKckZxMUtE2ctOIEfFpQk+cX3Y0GhlP04BgbFmNl3zYvhDd3Xqb3bXwEPLEF4ztY02509Ad+1KKBSlQTf57a6NSONab/fzOs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758093593; c=relaxed/simple;
	bh=4PmTwGhyRJJR+QjFuOX0MxOC0swZyb7eGZhdojcdZjc=;
	h=To:Subject:From:Message-Id:Date; b=QmJcMCYr4bn06XCINey/5CYgOkdQkHoGwhEFipObB/dx+yxQZcZI/qRV8HJ+BA+1AZh1EL7Lh1kwkmkSuE483SgnEsbrC7UGG/yUSJgzqEVvepESGuhfgMS4Qp2f/xGypnlfcFnWGE3uWNVAiP6mSZvILZ/ZvAjka4r8ELff6M0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KllnTSgG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KllnTSgG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A68E4C4CEF0
	for <ddprobe@lists.linux.dev>; Wed, 17 Sep 2025 07:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758093593;
	bh=4PmTwGhyRJJR+QjFuOX0MxOC0swZyb7eGZhdojcdZjc=;
	h=To:Subject:From:Date:From;
	b=KllnTSgGLiQkNEVDs3yjtNvZ4tCm00vx7+UlXYUfF9BQHgNihiIZRLaXpxINWVzmi
	 lOJmwQgjymwaYA4Go0+Yj68Kb7GiHaWX6301QlAK3qwo1j9meYIsseVlw3O0dEpqu3
	 aMR9ekVnIoftJzQumyUuS9OTrDJ3oVeY1ny/ZXUjU2NmleobOqepXKn8w1fgx8+Ju3
	 DDEiNLCT6UwbN7xXQHvXHRVWeVuHgvw1w7QEQsKY2jmOCgtgRcDXMjNFFUuFUOT2ya
	 lGHJWzh3z4KeUi1Q8pY8sHozhwP0QoJySPpvEIh1Ghg4LqLbuwCvYPWGzZyaT3+f7U
	 mB8e7ULhaGC+A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94F6ACA0EE8
	for <ddprobe@lists.linux.dev>; Wed, 17 Sep 2025 07:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175809359357.3959.13123439458348552135.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3acc2cce5456def4835133b8cd686c039cd666bd5512bf0754f680d2dee18f85
Date: Wed, 17 Sep 2025 07:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758093593
