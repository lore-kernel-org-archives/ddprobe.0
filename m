Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5FBF73C465
	for <ddprobe@lists.linux.dev>; Wed,  5 Aug 2026 01:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785891634; cv=none; b=F+q4SEAhQoAMkQoFJ5QC7iY3Xm0+IDkN0NifU1uQp+Uxz4+FX+AGEbNhaeWcgiGLsYOw+Ouby7gBsGulz+z7ftvjYqUZj5STKmPYsj67uae9dgeAwLMv1LsclE+9aYUcJEaBJHp1kanmX0528e7zGp9gVxMSiZTsBKZJFYB63Xw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785891634; c=relaxed/simple;
	bh=ecaPS5l+3xJSvDFHytzxiVJHv0CTAuYcP57zArOjh2U=;
	h=To:Subject:From:Message-Id:Date; b=htXQNM0TiQq+OSDWDauQ5YctGjOJJRkOUDGIqap2jjegmitFO96CeOswWP/10YCMBt8xQWU2wh1pJhBzKpZwg1RDxTZtlSD4DFxT7dHXlClXLHcqvGiNYrJj/J2HLjjgLLG3ZZAfKH3oMkyqFyIdDWnhIEjJL9y3lNh0TVbRXaI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MSJNHDaN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MSJNHDaN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D973CC2BCF4
	for <ddprobe@lists.linux.dev>; Wed,  5 Aug 2026 01:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785891633;
	bh=ecaPS5l+3xJSvDFHytzxiVJHv0CTAuYcP57zArOjh2U=;
	h=To:Subject:From:Date:From;
	b=MSJNHDaNpWnyFnP65XIl1I8sv91uuq3eBfFtkaDS10ym4Tzj1Hky5Yalnuh0hl7rt
	 A+Va2HxHcIYoEwZYL4H89UoXz8p8EhjkdA3GwL+xRIUf55Tn45zt8tBs7hOW1K+FjF
	 JCRK+m5gPCJih+TLkLyAogwdf78N7fm3Mq050URuxCwVXEKgLd0y6YUzG+BgumDzcj
	 Dme0dDAKcrGXg9cq+F0PnzMj7V+dJM4JtZXunqtKiioE2vTQUcRLrrHgsn/XvmR7Q1
	 aEpKaA+V/6M+mBb3kPLDpSFAMtJVaroAcv7B6XfNRYh6v0pfFiyRiJSBKJbMbztBko
	 ISWH9idH1SH5A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B3715C55838
	for <ddprobe@lists.linux.dev>; Wed,  5 Aug 2026 01:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178589163372.2347.13764921970972886598.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 377789bed22dbb2e0428b6e36f806082d6e197080ea56b7afc152882169261ca
Date: Wed, 05 Aug 2026 01:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785891633
