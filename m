Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37E3528E609
	for <ddprobe@lists.linux.dev>; Wed,  4 Jun 2025 13:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749043794; cv=none; b=Fx6TYNnGuj4+JXzXMP4sGkWpPfBdNGiPTLNhkxJBBhwJQrZHVRFUs3uk03BMZdcodRPKDSDxuse+zTpmDkvUeTRQ9SeKzWI59I9v8KwHt8iCl5z7OJRqJgYZauwoR3mxREZMz5h2EzYrzR1JLgRE9xCGo5l9A5vENeT6+B+TK/g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749043794; c=relaxed/simple;
	bh=/JbHcHXOyhnPB3TUwPfj/MCdMMiJJOuJy/z2+0nxIT0=;
	h=To:Subject:From:Message-Id:Date; b=gexnVLtYvcn+WvifB/zOHMkEuAHcDhmlE5bALvTjag80NGfPc1pSsUk0rXZbvFCg0J38xhdSXkUjj2v8oFGEeEeUKJJwjhyJM0TWBOfvi6Z+55sjqHXY5k7rzycIoXPb1ZRPkAfxGgSwJsXUBlyWfYmL+LhGVlJJwpyMntpzyGE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TP70UK8Z; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TP70UK8Z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0B2CC4CEF0
	for <ddprobe@lists.linux.dev>; Wed,  4 Jun 2025 13:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749043793;
	bh=/JbHcHXOyhnPB3TUwPfj/MCdMMiJJOuJy/z2+0nxIT0=;
	h=To:Subject:From:Date:From;
	b=TP70UK8ZGWr+lnIcNOXgQZBNJDZRudUkloR3GbLrScWgf3MxtBLmQb/EUJpqxzZl7
	 P3nTvc7LwygURF1NFmw0BnA0zDnEnXsHNEzGaesnr+3NXcjkYR2ZcpCCajF3XYPv1I
	 Jq0GtCmF8y9ZpvVlQgmT9Xj60HJ/DI9SU9anOfHop0OChsqlr38O44s5gqFmYuJvwZ
	 O+LbnS842WHYaanX0dyi0ghS4CFKVC7JdOCN13QWRqEZSQ/utFSgCDdGMpsCpbCb8q
	 0xHSXvjBR4toMfUKICAEQUqm3iR8cE19B52OjY6FWfZtzpFXREjhE6FMdMT3xgRlqH
	 5bOpXDdtDAPWg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 912BBC5B549
	for <ddprobe@lists.linux.dev>; Wed,  4 Jun 2025 13:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174904379358.3535.18435407232165847748.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b2bc0db5e805d587ce14804d612cfdbf7c778131ba18ce59d0deaafb070ec7db
Date: Wed, 04 Jun 2025 13:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749043793
