Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D1333451C8
	for <ddprobe@lists.linux.dev>; Tue, 23 Jun 2026 19:26:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782242794; cv=none; b=m2KpjWJGKKv5/dAu/cl15RxP31NjgXz82nJCT6Nrpm2++c+U6YjXVsSZVJPSpJnAiheFYqIiAoF8SXnJEIRXQ779i30fYhnWbw96KJ1fTGaAjs4pvacI7QI022jHQvOpAjc8XT0/1xckvLNLoliUK1/aHB/T7O3Mz1l50aUwIhE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782242794; c=relaxed/simple;
	bh=5WdqMKxbNFQ7vEW5H+sWjTvWoTEXjabgg1n7NXFNdF0=;
	h=To:Subject:From:Message-Id:Date; b=axTmAo738MooXxhdiGyCF80tTKKLthR6Hdzxz745Gc7XIjQRp84Gdxu0YyGcnH59fOPTAycxfZK+xBhEMq1Cy2iiWJBtlC0GlrlZpho+R442kYHlLi3gmVbkwhwPz9TcNDtD/ucfmP9FpW3qjfBbuLhxErY4AWzeKjE8x/z7KaA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FAxQcOEc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FAxQcOEc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DAB4CC2BCB8
	for <ddprobe@lists.linux.dev>; Tue, 23 Jun 2026 19:26:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782242793;
	bh=5WdqMKxbNFQ7vEW5H+sWjTvWoTEXjabgg1n7NXFNdF0=;
	h=To:Subject:From:Date:From;
	b=FAxQcOEcTCnPPHGy0ddBKi3+ptwyVRq8OGwlx97rpUHwAsFjfBv5jZ9EsmQoMfiun
	 L+tNL/8QZ5AHE3QvFhAK0xWp9TAeuUws9ERcP/zQl6Oea1JUgIIJtjFCUWV7vZdD6s
	 v8OIJ4xn4dVqU7CM0BnoP5m8F1NMM/nbJV/hMWmjsl6RbQR6aJINfum99mV+b+uYig
	 iWwZnwy9jAF7clDOaKghEF0Lg9qT5v6h+2g8QyIFOEL6YWmhFKLiPeviEqf8QuM7w1
	 WOEiAyQBUvZDOi5klGnzxxsgjRFV1wAFtNfDWNNwriqyo0vtR2duvrqiI7ScAjZlnL
	 ZkwkX+GEAmzYQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B702BCDB471
	for <ddprobe@lists.linux.dev>; Tue, 23 Jun 2026 19:26:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178224279371.14529.6239616588910455722.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b91a746cdfb6f7ebee3561f26014f0ca9d20ea70128646484c5701c0551f3155
Date: Tue, 23 Jun 2026 19:26:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782242793
