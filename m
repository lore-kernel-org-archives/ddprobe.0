Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A17020299B
	for <ddprobe@lists.linux.dev>; Sun,  8 Jun 2025 10:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749378594; cv=none; b=NFUTu7UNS9VWF4e1jWnq+uThSyRn3bhwIbzNZJd9ehyc/jt792tzI6b9b7oWekdehFdcX3tifwAkvC51H8/BUJSXQyT9qe07ErSz+JK4ekc8Ez1mxf48qo9/SdCtfRZiAtbhByZgbu1HVWZQSbRSqZ+wCD8dg2odp0gCk5nbhmM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749378594; c=relaxed/simple;
	bh=Xs7UMj+CMGTp/TPMcmYXcfFkfkCXCmNWgSNz4H+l7vw=;
	h=To:Subject:From:Message-Id:Date; b=LTN0kRFrsMhQaCw6U/ePPuIeUBH0Se4YAF4v1KTv3GVhxwXbtc1pjU4kWXXKkAFLZ2CehqiY5Ski7nvjT6TKIsdoq1Zltr7uJDFEhfkqXAhlPN4M6pifGGSqXL1u7Bszs+t9CDFKOHtaV7BKyKprx2quV1LGGGK1XyIqYeQtXtk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TY6aUa7Z; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TY6aUa7Z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F934C4CEEE
	for <ddprobe@lists.linux.dev>; Sun,  8 Jun 2025 10:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749378593;
	bh=Xs7UMj+CMGTp/TPMcmYXcfFkfkCXCmNWgSNz4H+l7vw=;
	h=To:Subject:From:Date:From;
	b=TY6aUa7ZUwSRb3A8OneB2JUv6BBRsWA/IatzloeLnDEibJf3ZzUS5jP9xPi/2yEC1
	 1LiJUksncnV4B/mWpH0cgBYlL6eR2uhyWGIkqtjylBdKKHRhuu7augSxj8tLd8CGCk
	 h3+9+zMIjVxSXM0m7EftUmU3iB5KW/5ZUWqVoBUNxrEuwLrc2QxR+trMlPnW26bMHo
	 9uVUJb1hJwOlGDMV9ftXGHj69sPTG+9p8I/A/eK/YgZrQ9TVLgK3d0UikMlNPQ1sSI
	 VHCXbIgIiaERQuLUFcjGS1h5xR7nj7/lc8OtzetSn6yMs8p/iga5Kj/gPfuk2g0LQa
	 m3bWAxyifVC8w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8DDCCC5B552
	for <ddprobe@lists.linux.dev>; Sun,  8 Jun 2025 10:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174937859357.9626.8161263703810720897.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6ca5981bb1daea2873444436f380df5e25337257f2c79819964a53a07a886a12
Date: Sun, 08 Jun 2025 10:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749378593
