Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24F9C2EBDEE
	for <ddprobe@lists.linux.dev>; Fri, 22 Aug 2025 09:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755854394; cv=none; b=X8lVmMexYVotWOmLDJ///YyvbW2/AAdOVG0C2VDt+KTnentwnd/R1S1krLpAXmpJ7ZzktSDFYn4cAF+LPHRsZWZD+ZPjBZdnqN18suo3YtAOYyvs9nA4Tm8swwiNnM0U6K9fmbs3Am4liwHOC0fJEVs1E/mj4cQbVRY1XRANAbI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755854394; c=relaxed/simple;
	bh=CxCKq7aDcSxzjRaKGVk/aXsj40ZEmYSnIxr/q41rUtw=;
	h=To:Subject:From:Message-Id:Date; b=LC87xIg9AYsdWhjNIXmQ1Vpj0ltfdpBsaWufYRXNhQqLNDdkQPqkzM8ptzAcLlvt0cQ0tb8hk6QzTWiz0RnRM1lkUV0GN2N+f3PVyi8WWAKNB2daXNvno/rADE+9LoAB4D1/8pDyj0lJipeqmAcoN8MLgkwAP4hPE60wJOQDGP4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gYeIZtmW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gYeIZtmW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2B2BC4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 22 Aug 2025 09:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755854393;
	bh=CxCKq7aDcSxzjRaKGVk/aXsj40ZEmYSnIxr/q41rUtw=;
	h=To:Subject:From:Date:From;
	b=gYeIZtmWfmDUg7Uv3MARy1JURLNpqRY2hNOZc9Lu+ndI5Sjxcs0uaOLHrJxvZaAs0
	 FpNjOuUpfAD0yQjUZKF/V3fMPytcU8PKI/Z7QcXFDpM1SH/XB7SZd4v6AEtmyXvfuU
	 8PDAyrqkiY+uiErrGD6Yi1xvwL56OxuvuxR2iHoOxogZD06rLWjG9jwnH9QZ1NW0PR
	 yfB/IH+FQNpGej7/gKnxFMYqbNT9R8kNEJPKEIyQIsE8Z5S22GPaqQs+k9CxAWdLOC
	 zCNWEdBU5ag+1yeLwtTzi8B+t5H3GSKPHCe1VOZN8YCjb33JwEKsjEoCLE2KR9CPrB
	 JEdzUbNqmKgxw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90337CA0FE1
	for <ddprobe@lists.linux.dev>; Fri, 22 Aug 2025 09:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175585439358.23645.2564999033638528823.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ffadadf3ee713248ab916eada757aeab552e8d212197f84b033c7baaed4f7eab
Date: Fri, 22 Aug 2025 09:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755854393
