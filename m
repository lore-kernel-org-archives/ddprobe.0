Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2ABD929B216
	for <ddprobe@lists.linux.dev>; Sun, 18 Jan 2026 21:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768773234; cv=none; b=XHOFJge76sPmi+njcwhZKDB4kye0DMEWcoJp0KK/lHFRKLKI3vVla+Jv3t8Z+aChrAo1O8z4WJ7Lb11VBCjp3sRwHarW3LGbCZqTVx/kk9duXvPUL76mgezeYQDU0Rf9dXwLoO6FaM8zjGsiJ5NyALxJDkwxlxCiw+mLuApz690=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768773234; c=relaxed/simple;
	bh=kCgGTfecQBQZyvKAJLuvS7Z9SwY+GpAMY/dXg8x+xiw=;
	h=To:Subject:From:Message-Id:Date; b=J73SCAIjNDoqtzi7wNEXVSKNTiY6S5cSO4iUPtisP3tTTju/yzSGxB0zRZu02EaBSRFSyZW4PZ0rCbEegnCzVYZlecPcdPiyCjrrks39gOSREo+lserJhG+8U8mYd90haBhv0j56zqnUtoYfaJG1DhNTWvPbn+hNRBBrF+t380E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sxny/Fpz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sxny/Fpz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1515C116D0
	for <ddprobe@lists.linux.dev>; Sun, 18 Jan 2026 21:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768773233;
	bh=kCgGTfecQBQZyvKAJLuvS7Z9SwY+GpAMY/dXg8x+xiw=;
	h=To:Subject:From:Date:From;
	b=sxny/Fpz9y+vTrrRzms3TNqiWbyx9asb9DwfR8TE/FNulcLIChnprdJofq7ZLAHd8
	 hGUYIHKVPQyAiuAlmeju5HlFfOYGgVBNlILIoDJcnnm8LEYGRNe5E4K1/hi8hgcA+r
	 H+xpSi2K2OHkHFa+CP4i+DeFoR4jBVdPP8PtUYkAQv/1jmcmCI/npZuZOZJD1+mmdI
	 XE3fZF8Wl5Y/J2P/mH7SxAiiSs498Qw8YLk6aFb1Bfcu+P8U1JqnYWv/p1mVWTCW9s
	 AJa6TGUi0oATUlZVxc4a/LXE5NWGBRgtqURv7w/T2QAl4GAsIqFXllgEPpViW8UxER
	 NUwodKiJE95/A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F114C9830C
	for <ddprobe@lists.linux.dev>; Sun, 18 Jan 2026 21:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176877323357.4659.425124902793221410.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b2f43c6a14cb0342c209179586ae42edd895957630631575b81d2ab40bcb402c
Date: Sun, 18 Jan 2026 21:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768773233
