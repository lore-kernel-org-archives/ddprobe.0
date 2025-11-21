Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 13B202957B6
	for <ddprobe@lists.linux.dev>; Fri, 21 Nov 2025 17:01:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763744514; cv=none; b=T1tX3Gnx+/TONBlXD3EBZIqS44xiFreva6PatNXzsbNsm0hpeZHVqzpzJPAhavToCJUBlDe0KE0/w0wcA5x349nUBM9MJg+UyUSoxTb8MnSJvFcZqfvcMfcifZjXbAQWxibkBt0G+z3KsVa8Neaj2QobNVztSHS+8hMP2bFzpVo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763744514; c=relaxed/simple;
	bh=khDDWBcbQLL7+FZsfm2DxWhUEq4VQzksggueIJ7ZR38=;
	h=To:Subject:From:Message-Id:Date; b=ryFipKLatAYKUr0g2HRzl7ZmdQUEVbOWs8u/pc+A0ZqmANp6Dh2c8cf2vE896yK4m7Fyrprce1NjxcorEV/n5M/JJBOAOJxgD7OKa6iM5EK0qe+pO7ofYn6W4NcWgwYYex4LxOne7IiB5K/Wd+IBKsuO1/ByCJNTiQ2hVEJQ90M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fj8BQebj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fj8BQebj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0B22C4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 21 Nov 2025 17:01:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763744513;
	bh=khDDWBcbQLL7+FZsfm2DxWhUEq4VQzksggueIJ7ZR38=;
	h=To:Subject:From:Date:From;
	b=fj8BQebjqPMMi1CAq/uPuzP3NWaW3WuncYZEiXt/rdJaTrGnCZKemHn0c3vt18Fij
	 yfKeBoZvTv6ZOex36xb+iFXh8mqu3/xap8IVN4jh0WQLLVKj9mCZ9SsSYpsegrm8zt
	 jFGZQ50g0lp0l2L18+lRGU0MG6CxU6Z8MFb/7+95ZfNUGkgUqC8mK/k5XsPONAMddY
	 FCzjW/GuS2TWxoDFrr5438i0COrRcvlalO+Zh3HYm0yfSE2/UQCX4CKUpKgunXoM/B
	 qwCBvRdHffORFCrDwBtiD+MEnFz69/2BHtqWKv5C9Z9oOg/3msVQfC28oMXbvsvqY/
	 CBBvwDW1w9uZA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90C24CFC28C
	for <ddprobe@lists.linux.dev>; Fri, 21 Nov 2025 17:01:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176374451358.23234.14578026034426083673.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eaa47d64bb8bae9a85f38e35618ace855c54ac4f2c4cfab6bdb5648f742dc4f3
Date: Fri, 21 Nov 2025 17:01:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763744513
