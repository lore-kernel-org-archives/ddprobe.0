Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F8301E834B
	for <ddprobe@lists.linux.dev>; Thu, 23 Apr 2026 12:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776947854; cv=none; b=UZYNPa3ubjHNPxj+ex/X9WnEITs7lfelmRiM2YtzIc/X0xxMtr2IBO02hA/2jrYZgLzFbdJZmwLQ7VRk0Ta3k7t89Oseik9RrGKjnq7s3pOFYlVEHjLYyfQJWDMZ9+8Wy9o+/KiPFXXi4z/OpSM54YxbzmKCQ8oqSTVHFUqmiXU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776947854; c=relaxed/simple;
	bh=poMnRpQ5vfe5S6oRmT0nTmJ/OrckxEac905TqxqW+g4=;
	h=To:Subject:From:Message-Id:Date; b=Slte+7rjCeCUg9VpUwe9KbrsJ2325FmqisxA5EiWWvRtJ+Y6BDLjQ6AH0GHKnfOQPQyL23bq0qTa0B/w5mwp//QpE0YErGEP14THnSkw+mtN/ljmSRKDURPEOVITdXbB6AGUDqJHtXB5yDwqYEbCsJjqMhsXutZF13NZ26QLQMg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XyYqhl+u; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XyYqhl+u"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7CF9C2BCAF
	for <ddprobe@lists.linux.dev>; Thu, 23 Apr 2026 12:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776947853;
	bh=poMnRpQ5vfe5S6oRmT0nTmJ/OrckxEac905TqxqW+g4=;
	h=To:Subject:From:Date:From;
	b=XyYqhl+uszWwdGI3V8C+6E6TtLcShsOJkA8iGC4X4a+HVKBMX1c3JMAlVrh/p3OjU
	 B77Rh+kGzkTqpc/Gbs70kTNC4Z0/9w1pSugkIo+HAUA3bqX6tdjxyDYe5DzNkMWoPg
	 CheHC4BVVceZC8jHqZrm4xr+Nac0VqMEnKGxpBBWRdT17peeBDWL2Hv2sTH5KTwTEW
	 1/qOyzvMuXS7zNYTyTeYXdVv5J2Ga+fMMfa59xwr/3iG4bvFR3nEqmizkP8vXXBah2
	 Hw21lSMrszfiWeeqqjt0qGp5ZhBkOUdJ59hNITmp2Ur1/3zFkcxasiK7tQwIivtIjM
	 06A8f9CvDyBNw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA9F2F589AE
	for <ddprobe@lists.linux.dev>; Thu, 23 Apr 2026 12:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177694785369.8056.2935185128733946309.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e6d35167f74a73e2000fd16aab8d42173d7fbe77d3c02c30f9edf750cd63f706
Date: Thu, 23 Apr 2026 12:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776947853
