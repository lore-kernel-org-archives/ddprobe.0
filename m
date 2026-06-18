Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 492CD2D0605
	for <ddprobe@lists.linux.dev>; Thu, 18 Jun 2026 19:56:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781812594; cv=none; b=s4/LF+imSUkQSE5WI9I6F2V1PXS1jqk0SWP4sc9YJKxrGYXTo5DP2dZkiPSEIN/y3YMqVgyUGbOgxBuALdiW+5poHNKrgepLbQJHiR7LBc3CMFoe1sT66OzggwEA19yXOO3w/E24HLAfKr2C4U60SvH65eQSi42M6z38K+/i3Iw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781812594; c=relaxed/simple;
	bh=TnImK16Zc72JxYP1Jio+SQ0aU2/rOId7hyVvaAzuQsA=;
	h=To:Subject:From:Message-Id:Date; b=q0yt8PpvCESytXg9diUJQgFsL3C9DfAuPyE8xmCnBVVDFqngzCUm9XEe75c5HImtQ28CrIFHFdK4u8W2kl1IxdlMfiQCBIRIdpTHPSX7nhxiUx7VcghzQRX3s/ZKymqCbKhGTR6wLskyt/vXEh8/KztqBQYqOreywLgeg8UrOMY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fLiVyHbM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fLiVyHbM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CEF2EC2BCB0
	for <ddprobe@lists.linux.dev>; Thu, 18 Jun 2026 19:56:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781812593;
	bh=TnImK16Zc72JxYP1Jio+SQ0aU2/rOId7hyVvaAzuQsA=;
	h=To:Subject:From:Date:From;
	b=fLiVyHbMRimgdGPLD6KrRf2UYLllRqHe4OMGvtj5px6YciWjExwAEJTLmZ0rHrTBi
	 CCAf1ZZCqMaAAyVsdJ4qv+3XQbaWmVk4vu8Ec7FfBqk1FqXT0Bg1Ju4ap9DjU76eql
	 8RQEu4vD8zf/S2JfOxivSykg6YwDaBUFyVWbRQCopgdR4GLc/FppZHPk7uNa7McoOO
	 cygL+BZPB9Y12+cehEVDaqRASXAGXhtF0ODTQzFK06BgCHNBKmSZL36BKZ7L5EjflF
	 HYep4Jo0iXPfFwbSjmHN8CtmGnLGCd1OAGNNd18VuXCo18s11x5+YpcrY7CjrFXJo0
	 9t1NcF1F8iblg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEA9CCD98F2
	for <ddprobe@lists.linux.dev>; Thu, 18 Jun 2026 19:56:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178181259369.4227.48238557873455277.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 068ec51f12df9e95a331c5ea952409082e8dbe58c6a932be740d2f0195b7a76f
Date: Thu, 18 Jun 2026 19:56:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781812593
