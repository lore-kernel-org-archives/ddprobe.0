Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31FF26F06A
	for <ddprobe@lists.linux.dev>; Fri,  8 Aug 2025 01:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754616594; cv=none; b=t7s0rVjHfrn+qjEUB2nECM1UwbOLhEFmNglamXQ94U9FOVLf/j9a0drmwaiF7jsiR+z9F+2R/RSkzSdP9vs7Qyr+kOJHWBRHmCr1O6gVhrt7l7wZGJ0xFJB5tAsU5TYWTJnJ5Ho+DIERfXW11nfqNnExRMIcp5sCI6L72KEv/S4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754616594; c=relaxed/simple;
	bh=lvRkjimzRck7AMWTv5I91O6xzP/Cq48avLQZyGDHKSs=;
	h=To:Subject:From:Message-Id:Date; b=nHwE5BykEgo/1n8iWYDXMiWpXZdL4skDTFw33Wq/0Yr//ru+2jGwdjWnTAst5MnvmWEEy6SVzCtGDj4bNnqvJCS3SvLlijuKJ/9sMH6hzDtmnWiwSK8f2gcJqrGuoxCXz6Ylk09PgsZaKyrPAOesVz0e1m3JJgheAlVkVqCZmRA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qSu6EiO8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qSu6EiO8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2CD2C4CEEB
	for <ddprobe@lists.linux.dev>; Fri,  8 Aug 2025 01:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754616593;
	bh=lvRkjimzRck7AMWTv5I91O6xzP/Cq48avLQZyGDHKSs=;
	h=To:Subject:From:Date:From;
	b=qSu6EiO85UmCK+uAFfQVVP5DzVHnRpunIErtvZznwjC1BCHAyok7SU2EN1qkXklOv
	 pdeOyEyoRGMmsO0ShZAd7mbCwHPDaY7pC8TGRDl7tPtmH6o4jdqQHmG/U/+FW0U37W
	 wdKA1jz0A59uHqZrQhBi/10O0OZT+tNrerbEx63rw+fFXNSynVPXj1VQWgmtQuIw+C
	 lHzSanYiizIQh/BoW37CzSos6aEjdm/o+YWvH01hkMbmj4rs03aK2tkCWQsdoH9pHB
	 qSuwQGg+G5MkYlMR0cLb3bNIiVeU6XhlGIL06z1F7oF/neIc4vfdrqRd/aSanNLf+d
	 N4uJhm2CXQl1w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90C0FC87FCF
	for <ddprobe@lists.linux.dev>; Fri,  8 Aug 2025 01:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175461659358.6126.10457821080543691090.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 64928202375e723960d7bafe0afb9ad11b12d115517aa90ca22f7845bafa6b79
Date: Fri, 08 Aug 2025 01:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754616593
