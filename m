Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FCC422B594
	for <ddprobe@lists.linux.dev>; Thu, 17 Apr 2025 11:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744890594; cv=none; b=mT+1i3odh3O2uY8tzWHfIfYN0vFKfREV0V0QjqKXP3cV5ijrvCtsQYNQjklCiyfuaYiLibJBiKqNA7eigNclhg1hxHjtJWGoy+y88x2q7FUw2v3cC0XDQAmK8xShwqUmHA/XZWv8z62COceT52VQYDV9gDqU1esV9UuOK9Q9NjE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744890594; c=relaxed/simple;
	bh=iHV2GZZhodmxEPXx08aeYEvffOADooXSl8zMDeGu7pg=;
	h=To:Subject:From:Message-Id:Date; b=Et9VObBb4FYo1gbqHqhVA2bkx9nvaL8hR8FxsEv+H7zdS6bJ9hUxyug5ybkNy3rTsN5b0PALOx+4bmeN898JUYovZT7r+LCbz8+HCDVc6Z53QX7z6LeQY4V/cT2nSBoFTerozYnJN/XQNuyA10bQGLy7T/jB0VA7yncRm+RAsaE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lPZNuS4l; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lPZNuS4l"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0B66C4CEE4
	for <ddprobe@lists.linux.dev>; Thu, 17 Apr 2025 11:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744890593;
	bh=iHV2GZZhodmxEPXx08aeYEvffOADooXSl8zMDeGu7pg=;
	h=To:Subject:From:Date:From;
	b=lPZNuS4lPKIQLWEf1tLkL3MUIh6p2UuNxNVRUAW0SEon68hSMMOwTQRG91lJegNSy
	 29EtgaVr2h4VHG4YWEDHISUgCiaTvw4AqmQY1qYthLKSVPw2nxkwltK6zLKgNGtC1A
	 WKZyKs0ivFJmQiuHuWTGs4dK7+Sph2AaBJDSUEdCcZ7n4rDukCUgvcj9aR7LdNO8tl
	 8nh00dB8pfsr3LmkSxzQ/6gxpPTWiKYCglw/oN+5CHxUuziOCfdF3Aekd5G89N3WTH
	 M0T2CkCJ9wWQFYZ/L6TSgxA8VB6G9pPQAYORRVIBGCJgIgeVIUWtvlJhr4UVL+ZKym
	 z3CZi4g1qdVSg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98FF5C369C2
	for <ddprobe@lists.linux.dev>; Thu, 17 Apr 2025 11:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174489059361.11894.7261656316581013247.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e10bffb95574608527179a6daa83604356fadf81ee7db79136da3a95f6e9c291
Date: Thu, 17 Apr 2025 11:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744890593
