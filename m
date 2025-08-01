Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 278B92253EC
	for <ddprobe@lists.linux.dev>; Fri,  1 Aug 2025 09:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754040594; cv=none; b=EL6P+Bx5dqwfn/n2a2yQ7NGD6sUvA8lkaj6qmzhlNSoWTZtF/t6D++v+w7D4yxOymjGyKQlsB9jdGkVmTMtc0DHSUAeLHLX/zxXcNitjFk5IVuVSOV+KE+rbbs6qG+qNrp2nfZ1CFSo1hrMI5HZGgpzBz0akVGfRMKxHYvJkecI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754040594; c=relaxed/simple;
	bh=KxGVtut3lG111Yz+eP9VWBOHUwykUjjXWFdSmri88bo=;
	h=To:Subject:From:Message-Id:Date; b=Jn5WkMTkyMiIYPB8jVKJdCwXDZJh44h8shO+H9b0CM1BfZE4zAk5jsUw1D+1peSA2OxT/or1n6wesxZA9EWScI0D5fZPt4nEJ2imSKRXeOWmrbvtOdKCqJ9w+NJdFpsAXuGTq0dbIXWAq5sxDfYSTASka5aMW3E5yAg9PpZIi/I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jw+jWzq2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jw+jWzq2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F098C4CEE7
	for <ddprobe@lists.linux.dev>; Fri,  1 Aug 2025 09:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754040593;
	bh=KxGVtut3lG111Yz+eP9VWBOHUwykUjjXWFdSmri88bo=;
	h=To:Subject:From:Date:From;
	b=jw+jWzq2CdNq4/qHeEBnTiR4uyWebTclbrxPJJP2CGpiWL0r1GHfMXRZvNREGtIro
	 3Gu2DmV26wFw4tfkH2mSI3/Rg2L7SWqJx39xcbt8k+C5feGiz3tbPH52NPOrLd17wC
	 SIWsiZM7+8MZtG7nbGi6mWG2Gt0O1DE6PUdAdBQhbJOGxXlHdCN0St/SvBGCNwlXKe
	 JB6l5hv8BF8tXK86UoEYHbpJCp+5lwFOI6FdpAPRadt2G5eb7NEiG5nJ2SGU9wLgNW
	 +rwEYRoZokejxJZ2CWsgC9xsT8bqqBkdl9TcS4IaDUPjOQ2BttI/oDNMi2ITMOz6oV
	 s7dYyHamp4Pvg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90365C87FCA
	for <ddprobe@lists.linux.dev>; Fri,  1 Aug 2025 09:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175404059358.12686.13890207069477525759.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c69baff836c47005bc0cb60fb1916ac5ac56ee835a970e6be11f4153d8abbb11
Date: Fri, 01 Aug 2025 09:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754040593
