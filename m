Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F058A3E95AB
	for <ddprobe@lists.linux.dev>; Fri, 27 Feb 2026 06:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772172894; cv=none; b=fS8mrFI28t5kXsJYH0Wrl4ixG2gtqomSdUd0OW0Pl74sVowIv/vknDK+ftoCi/ntQd3Fb/8qAEfHF+yFZAbo/acXj8EmrWFBF0jpYTTg6k9gYiHwr9BZo1TK2laUAHFcEJFpyrMdMBDP0CRpTdeI7bnveOIk+l4feeYChs2EDpE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772172894; c=relaxed/simple;
	bh=2yC1H0xl4Vsg2z0Av0XJj43DYWjLHuMl2yAFweo/vJA=;
	h=To:Subject:From:Message-Id:Date; b=jpwbGL0S332bA5byskK5C1O4HBqU7obefvp0E03yXcsyBv9r84T/1gLr6QV2CN6c8KMZSffPr3TFPR3uDXgyQo+LTG8CsCLik5+zDmZLRWoUE/ilqexGyuO1/va1iTH+h2ep/OvFr5LBlrLxn1xcvrdj2y8ZOE6hAV/jd9w8Sps=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=StzTIUIr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="StzTIUIr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5FBAC19421
	for <ddprobe@lists.linux.dev>; Fri, 27 Feb 2026 06:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772172893;
	bh=2yC1H0xl4Vsg2z0Av0XJj43DYWjLHuMl2yAFweo/vJA=;
	h=To:Subject:From:Date:From;
	b=StzTIUIr8k5gYLdyhLLT7fCryssuydY4o4wKGtDreRe3d+i0j2lX7NwKgZwN98xSI
	 scYRAPSV9unYrmIQ+KZwaOroxuVaqhriiSXuDZ+4WZzqrQ1AuPOYVIlh1Hv+WU22yO
	 AkiHSK9duBd8Cnos4AmmhIa7scel+eBe4tEcZxbxt1HXDyIB6KswcXX5z48xpd79KK
	 Jl7uH9x2N8QvnPnD32ZAkXnsHNUyqocg4BUvpesMcrMCqA4HsLJM/MweL5tQnTaX4g
	 jUR3gn/Q1+Ns4SieBsO4pOZz3rO+SOHZBTkB46dgmz7j5DFWJlJIc8wop5AMmcTa8k
	 eciQAfgvgwAHQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9146CFD9E34
	for <ddprobe@lists.linux.dev>; Fri, 27 Feb 2026 06:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177217289358.23867.17216856599975667114.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 575d15ea01e4a0e99ee9656587156961939c989ec76e7158ae8f7111b98c1165
Date: Fri, 27 Feb 2026 06:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772172893
