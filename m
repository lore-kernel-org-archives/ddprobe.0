Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0DF2427735
	for <ddprobe@lists.linux.dev>; Thu, 28 Aug 2025 15:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756394394; cv=none; b=QGjcRdz4sJb6FTd4fCr9kYvM3r8y3kO/RKd36zhD0Fyl0iQ5dVa7uj1G9CfpPeH748vak2+zxSyZnXy8WpQ1YjmikQeMgbIOlA0Y1iz7bPid1yZ8oJ+eZDiU4VjeLuWL9fzHGP1N2RysSCvfgFvobN4/zrVNRFbh3JBNXQcWBxk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756394394; c=relaxed/simple;
	bh=zDHTBKxyOFSyuG3rr8XNe/El0DgfmrjJ/nENrmh+yN0=;
	h=To:Subject:From:Message-Id:Date; b=XCid+PgXRuX9K5/99Do8vlswx7umSdYwOgxb/mN6pDUtibI/Pgh/4X9hIBViW+69gLk5p7KUvkxqzhkHnIjB9vQNLcBGiIqIXjqz+a3dRXGlAqkD/bQl1XpCkkKg8jO/K3KVctaqfF9r/yR/2TXxM4BJP2WJqHCaf15yJSV2bRc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GMZgCXRe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GMZgCXRe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1365C4CEEB
	for <ddprobe@lists.linux.dev>; Thu, 28 Aug 2025 15:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756394393;
	bh=zDHTBKxyOFSyuG3rr8XNe/El0DgfmrjJ/nENrmh+yN0=;
	h=To:Subject:From:Date:From;
	b=GMZgCXReXi0vG4JnYHZgQUuxALomYRTBvirh0JDjPPqCfKthrHlwidpWvAkxJox3f
	 uWMk8OldjrjskvlzU1P4Ih8MTGGx0eJnXT6XxQ1fRwZl58N4YMjh7gGf1mCMn9Lp/+
	 02tb1X5jVE4M6xdje63aHzeFEfp1GO7KJsGV7Hd11TUexe0FcfSA50M4HMugsqUo0B
	 92KNkqNcHR+C3aMHPJXXcemPd0SqBGDIk51hHC+EGR4pWuGArSw+xQ4xKoPxoYf03W
	 EtsHsCCSRBhkFt+mEF4S5OB2/wWJ2r+ib8C6WENljIVfb6Mj/fF+8a3XNHsK7iQMtW
	 wu3BSPbt/GWTg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FAD8C8303F
	for <ddprobe@lists.linux.dev>; Thu, 28 Aug 2025 15:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175639439357.10776.8910270116290043880.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 22492a159ea99b0a38ccd4835ff080b949ed4a974007a740b9d5401576feb033
Date: Thu, 28 Aug 2025 15:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756394393
