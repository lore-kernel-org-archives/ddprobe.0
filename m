Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1FDBE6F2E6
	for <ddprobe@lists.linux.dev>; Mon, 30 Sep 2024 04:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727669754; cv=none; b=QCElzvmXjqaS4ZBE2Ko7YbrJ/4KE6u3Bz+gv6a3ShRvcVIW4LGe22bThQy061FEbJ2jvGzpgOGZSNlw5LltuHjBuoLBtBSdCnGAa9SVUY10BTOjM05w6S6/Gf7wH48NjgATqYa9thnOMnOshLuXEdsG/9pCtX+xAb7oh6ECdR2g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727669754; c=relaxed/simple;
	bh=jV90+k8p8OKPvlrYdscs7HA8obyU1pIdysqDLjc3d5M=;
	h=To:Subject:From:Message-Id:Date; b=jK3xNHRpchkwi5rhoLdT0gcj5S//OVXfQzDH3Py5OYY8B+Bit0uW6+/4w8sDf02hW7nWJPONwmyg5i/EUNK7e5d2r2HLdI6A3NflHQrcZis/MX7kx2Kt8j+y7n+ieRoqL8M0Doel9sAyE5LhsuNuX1c1XpwDRScWoFrK39dWq/g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=W9JwuiYB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="W9JwuiYB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9D00C4CECF
	for <ddprobe@lists.linux.dev>; Mon, 30 Sep 2024 04:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727669753;
	bh=jV90+k8p8OKPvlrYdscs7HA8obyU1pIdysqDLjc3d5M=;
	h=To:Subject:From:Date:From;
	b=W9JwuiYBkdSRrOU7oa8MWU3mYu1GfZ5RsN3uvuaIUhRd/RKAGjt271sUCV7vzFSAj
	 hQisdKIDNM+K3ws4xYLp2e8i02Fy7ScGr8/nJuKAI9LVV2ow8Wzd1WizNBFOgc3ccf
	 2BLcoNj/x2B6e4zB2F4ak9nLT3aaWM5SnCwst1BAjP2RXQAFUnGKeToA1l69lCq6Qy
	 EQ8Hgrt7pSZg99k714ZgdiclrlLcwLGhGxB+U9yTT/vv2GLrnXyRqeyAFlOQUzuajD
	 RmWDKX0FbU/qS5fr0Sm/8wqVVMXFri/V+JioHpgZoz0SV2phmw/Cmrjmxr9FlYK6oP
	 s4e+iaXiWxL6g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92ABBCF6491
	for <ddprobe@lists.linux.dev>; Mon, 30 Sep 2024 04:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172766975358.11962.4563566228523863139.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eb4711dc3940abf195b164353b3f64df335f8b835ba47bd167ac97360567411a
Date: Mon, 30 Sep 2024 04:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727669753
