Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C2369377EBB
	for <ddprobe@lists.linux.dev>; Mon, 16 Mar 2026 23:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773702893; cv=none; b=jlEOr2420387dAeYh8ud2/91ZaippJaJTNW5Fv/SnyLnTukVGgKyD2CZAdkPhrWtAQm/dQRedEpFRE8yWcXDmQ38cQ1NU749NMecbSnOhWn07YSYANoTxWWleS1VJ0+Swkw+0Cvn1//nB6t4R7a19q6Z9elYz+WYqt81qwkkX4g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773702893; c=relaxed/simple;
	bh=Ev42KDg9/H5FuaJuyBakhBVScX6/A5btwstkGIkpNTo=;
	h=To:Subject:From:Message-Id:Date; b=Bg3DcblIH4kY2eSB3xl0Nh3i7ldLzhTK1yYDtJvg+REqHJ/7bmQdL3MCVJ7d5r1O3lPK6HQ71ybugcEuMxGgKIe5sR0yrF4OTOQMZjDJUiZcfYbadbbfJ9jMYljtzmuuTOJRdlIBmHwuEe+0kjCM/EjANseyavz4Zj6rjyEzOEE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KH7sGcM5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KH7sGcM5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FD24C19421
	for <ddprobe@lists.linux.dev>; Mon, 16 Mar 2026 23:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773702893;
	bh=Ev42KDg9/H5FuaJuyBakhBVScX6/A5btwstkGIkpNTo=;
	h=To:Subject:From:Date:From;
	b=KH7sGcM58tlhU4opMloLizbty+70SrX3CO8saQ5IktAeP5lO0wCmNTD4VAY1YN+kt
	 5ypMWVBM0vK5BDnorCBMNOZ7jjVcf1fxJ3uOU221U/KlyudwtF5pydTJ3yV0xG+8rE
	 PKdxy4LjS9xhIwWfxzUHr5rWAh+p2fBiOC/XHsKii4SQo2Zv4klf9C0b2rg4wI3Pk/
	 CRVtQIkJKD3z/P4A5q7OqvMgJxcxSE233sUMmONeAOYyMbnAISoedqZHR77JpweSj1
	 SI58Hf7wU4TMlwrAcxvqHRdf2LT611g1Ja9mr1SEg4kHNutZzeZVm2jII+UeQZnGSs
	 fdVcO99dB5q3Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91D99FB5E88
	for <ddprobe@lists.linux.dev>; Mon, 16 Mar 2026 23:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177370289357.4565.6653470316886584402.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c12e61f613a08562d62f75b59d3dcb7e3eb8ab60a2b69fdd429b4c953f0ea9e1
Date: Mon, 16 Mar 2026 23:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773702893
