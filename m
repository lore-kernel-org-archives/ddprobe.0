Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 56B0C194AF1
	for <ddprobe@lists.linux.dev>; Thu,  6 Jun 2024 11:47:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717674443; cv=none; b=OmxLcczfTH/AAONAOZoP+g6Ouw1Up4MCyPsnIXNh5q5GiFTfVocrcTauKxnzgycxxPHKZN2s+Oe8UU93lW6J4NTnTTc25DsyPm97nT2IfUH43+WWtxFXrVBx7YBqmPGa8jMCQxqQ+Ed24RQHPFlWbvq8HmScydD6p7G9XLQAXuo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717674443; c=relaxed/simple;
	bh=uZpbkHKUmQgSbJQIfVF53eoaD+tz8E2iSWuaqMc12f8=;
	h=To:Subject:From:Message-Id:Date; b=W086oV/xGLyDfrHuiOt0iPGul2an+d7t3wcjdTN02QLdNknAsW2DdmR7i1q8v2UjkD5XvJhLXovEETi+1FRDMbP8Iqhyfbu50j2n7pmNhfMvxM5P0HpiDPX8Ubv1X/wPgspfF41WsSCKUX85TTUjgYN4myJatxWAQ5g7XF3fu5I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EIXSAAjw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EIXSAAjw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E79D1C4AF08
	for <ddprobe@lists.linux.dev>; Thu,  6 Jun 2024 11:47:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717674442;
	bh=uZpbkHKUmQgSbJQIfVF53eoaD+tz8E2iSWuaqMc12f8=;
	h=To:Subject:From:Date:From;
	b=EIXSAAjwPGvZh9d0u+RljXU3/i+Ut/RzCqB8vsXRVguhZTJE/A2XrA4ERU2/XgfZB
	 KirDY4U1Sqo6tr53xatVcNKiK9Niy3ZE5jHO9Vk9tK8ZS2aY7dyDxl9pYAMmEbfaE0
	 7xlexUThGb9jAaX7GTt40SbyDBbOENyORDxnEAUw+phBqsoGrVqjcWQCbYmzLDvQGy
	 wqt6WWwnpo2BbsMtpkkM2/br+y7uM/XHnrwiL52bCBXvV4cDVdmWJu2LmiQ7IggqWq
	 3YiEYyYN4fvI74zeieNVgcx6aGYSK7/NqqT8iKLR2B87QIpPYy0lbCC1MFwdnsDauK
	 ZQtIjaQXNOZeg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CDFF6C27C54
	for <ddprobe@lists.linux.dev>; Thu,  6 Jun 2024 11:47:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171767444283.9129.1296088751644035810.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9f6bb209057c3210e1a1e858c61e0c594316674c7b580647a41fac15f3d5c066
Date: Thu, 06 Jun 2024 11:47:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717674442
