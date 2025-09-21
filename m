Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D54451F4E59
	for <ddprobe@lists.linux.dev>; Sun, 21 Sep 2025 20:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758485993; cv=none; b=Zyw/RvDSXxXQ6+3LQzv+u7fPDWp+ohLuLIT6njnqjQF57Xj6ZhxaJZ06zmb8Pp/cTSXZDCX6izDuHNTAM7pDYoC7KGu4iW2EqrmNuOyTZK2VbSABqbVftXs9dF6JehTmLHuVD9iRZa3iz6Y7HI541+SHvvgd/RjEndV01MA6BoE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758485993; c=relaxed/simple;
	bh=W7FEkaF6oihdHKeOyqkHV3lyi/OVMeHAPK24LDARE4s=;
	h=To:Subject:From:Message-Id:Date; b=gm4tW0PWN3L6sZRJNQ0vm/8kA4ChpU+JehFrOX3ZgV/uq4g1EgyfmG1MJj4DIwnHF/Y+p5bE7TinA5qvz+TtqiOYMu7JXVpdpqBsXURUxGvv66nTGPTCmRGsT147s4/HefJtOoGSXusNWMjhPLlU2QhIUd1Ge3PJLW9ZxoPDb6Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vJcdvYjg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vJcdvYjg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4991C4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 21 Sep 2025 20:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758485993;
	bh=W7FEkaF6oihdHKeOyqkHV3lyi/OVMeHAPK24LDARE4s=;
	h=To:Subject:From:Date:From;
	b=vJcdvYjgBE+WT7cSYfyuhndEo2SQ3hJqEGD/N95Yd3OA8sRjmBmCYZ1doA5vqjv/C
	 Tw97KVNL8Tj6G6WKloIRcaDDWb3Orce2WvmMxpRq5WHYLrbhFjoIlcCm6MzqH1cye1
	 8Qqa34JDwLKsEVZHFOYagCyoMg2P75OgElN6EvS9pXheu4AKW1NzQbSaJFPg9zYzbS
	 DSSc3YK4lrBj1Ulb6PyvcqZbH93BjmCWXJHUFfj8J4Z6y8yf8ag+f74BNDsSCrU2el
	 vb3UTyU85augv+iyhAsQwSmkia70l2HSDB6fFW9i1AtN8Q4Mqt7gebsnbayPbqEZlL
	 DDzY6zkAapBKQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91A34CAC5A7
	for <ddprobe@lists.linux.dev>; Sun, 21 Sep 2025 20:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175848599358.29232.15348394288077131486.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a9f848003d5815feee49f5da5b9371a549dce44178ca8382af80bca2af82540a
Date: Sun, 21 Sep 2025 20:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758485993
