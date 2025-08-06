Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34C5121FF53
	for <ddprobe@lists.linux.dev>; Wed,  6 Aug 2025 20:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754512794; cv=none; b=nC6E1+pUV81unN4t5ipaT/KZ3/5CNmP355KCK17bVJoh7e2SlbSHpDvEoGo5DjZgPRMN5b+IYITRi+HwYCCIZttRHh+dhSB3GWPeYxfyTnM+MgMAOvkqOQwM2kwTK7Sdi3pOBu7AFAk9HnAN3yuQiLExt1nLd4L7yGWZ7SYDK+c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754512794; c=relaxed/simple;
	bh=UQM1tDV3atiy0HGGVO9K6Y0sDoiHkHOGVDJ4XuhgyyU=;
	h=To:Subject:From:Message-Id:Date; b=JH7RGTYv5DxZW2Maxs+z9LNRT4GVlzJIBK07p6XBhVwkjuA5hG5yFzwjueJh0GO/cYLhpZ3h18Wp/dj9av4jJteEqkLMMEMIVPECYyPAKnhg6tlMWwIOydhF99GzQgnBzSn1RD573l7jqc6ydMVAB0tsOeWxEwMVD0/QZHq5lO8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=g0DrbFkK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="g0DrbFkK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D751C4CEE7
	for <ddprobe@lists.linux.dev>; Wed,  6 Aug 2025 20:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754512793;
	bh=UQM1tDV3atiy0HGGVO9K6Y0sDoiHkHOGVDJ4XuhgyyU=;
	h=To:Subject:From:Date:From;
	b=g0DrbFkKpDe3nEIAY0JM+QU/Dmv4VZqjTsAvIepGtnfn1OZbYbzZ2K6z5S2mQuoZs
	 4NsE8JOb4Df4HFLdS8z9Qo6szIi0QCyUsuzOU+3iZhUAzr2roxQv+RgqAK7L2m9q2B
	 QihZMedpOF1n+6caE3G/P50WhITAeduHekLXfFny/GAyBPM5ihaISxxnGU1QCoSX6T
	 wsR1f5/2V+r1Qmo3bZ9NedE13cyH1SLbvWt6f1IK3IPXP76OE0yE8VYWea93cH31oj
	 ARoFUpFSX2zOmxnC8uK/gZ0eloGR50kD8aoFFQ//sKouIms3lz15t3PRG/BCzHzqCK
	 ueuQUbxMZNsig==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EDDEC87FCB
	for <ddprobe@lists.linux.dev>; Wed,  6 Aug 2025 20:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175451279357.8988.8957635060035297706.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6aed9381951da19a22a48ccb307e7940c84d79818f6b296275efa23b20311128
Date: Wed, 06 Aug 2025 20:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754512793
