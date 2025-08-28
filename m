Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20EA32C2341
	for <ddprobe@lists.linux.dev>; Thu, 28 Aug 2025 23:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756422595; cv=none; b=QW+ixdM54TKmFDs39DHj8Y7JfXOFMfFUmu7SrUi7/TjQjM8imjgmKKDUWLIhXZ6bKGL8pdhBKYdtqK7fYUgD/uhLZgMKTXT0KwjgxLJrXx3n6uqvFeWVRPP2BXGp8oQFQjAZsbEM07+dwqQX8JApp24SWgacSzH4jcSgZBGfP14=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756422595; c=relaxed/simple;
	bh=cEkvGJAp2tPA8FKRaaelZnFNOmxKs02BiVXnvdzNgC8=;
	h=To:Subject:From:Message-Id:Date; b=JFG/71Cf8OITB1GhmGaL1A0zHVF2y8ie2UhB1QNUS/+Bkrii2Hwr1Wf+Ni081jY/JYx7A6I6oGLBcqwQ00GJjGhLa64lyvv8yo4OSN7Y2cuoJIhZI5EFRzA50hUJpQyGgZJC7cBB85FGgN8slwyjY0iCZEgON+5qN9BkwNe/b8g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XH3WWDOi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XH3WWDOi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DEB5C4CEEB
	for <ddprobe@lists.linux.dev>; Thu, 28 Aug 2025 23:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756422593;
	bh=cEkvGJAp2tPA8FKRaaelZnFNOmxKs02BiVXnvdzNgC8=;
	h=To:Subject:From:Date:From;
	b=XH3WWDOiPlZ6UXeG6FU2DqeDsibVYKAxUWW7dGXbhRJc9i0w7s1Eu3IeOUJOdX1oh
	 Kq9Kk+l+xQ4fUn2lBTvVulgA+/VQDRrSVgaTa0e7EoKxGxLTSuC6Vpo7aeP5GLoGIg
	 eE2O0z06WwDMoh/Nssnjs6OBafEymfaHJ7t3r5w1KJwkULKZflbXG2sttGmjS4SVyH
	 g4LH+6q9vrKiUAyElFRpca/c6eWLy6qjswCkypPfk3MrdZdn2rJolWzOrP8gczk1cp
	 OJVB7RpdxN/83E7sbWvK61EMECbzAnwYRSceeTZurI1z4xg58PQlA4NrEDUUI+xVQP
	 Wc5MqVGLoaoNg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F9F3CA0EED
	for <ddprobe@lists.linux.dev>; Thu, 28 Aug 2025 23:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175642259358.2853.9659294542563400164.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: df5729798e1efebe2b94eaa7969a4afa399735da2014c7e80a2891c05061b320
Date: Thu, 28 Aug 2025 23:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756422593
