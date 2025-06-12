Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CD981EB3D
	for <ddprobe@lists.linux.dev>; Thu, 12 Jun 2025 01:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749691194; cv=none; b=juE6Hwh6FZtiEStzI1QOfQk6FdmzfWj/qEabZSkjWn4A/RGpdmCNX81xwBGKM0YidVlOyFUWl/n1UFfPAST2jcnG+QaOxjcM47XrmShvakCHGC1hLxg0EegIqypgV9lwO5B7JkpRN6h5N1tTf5Gg8zQl3qzywPlbiL14YXcjwrI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749691194; c=relaxed/simple;
	bh=GVuABYBqpyyk/jmj/gYIcaSQTNJfayU/7PA/2Z8r7jg=;
	h=To:Subject:From:Message-Id:Date; b=lUFdC/c+Cxt6HdNTA3eMiIyAcB9Qi2T/WzuiWKXp5heuN+Guq/r+hsjz8h6+LcR540Rx6XsXIj+6Fa4n/hMQhiUijJBEyz3yweMabBkpC810N5uMRHhY59n0F3oZNXr1sePz9mHKLbly5CeG6WtZYuLwNRbapA3NiE1PEb82M3g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VHzZjro2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VHzZjro2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AFE59C4CEE3
	for <ddprobe@lists.linux.dev>; Thu, 12 Jun 2025 01:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749691193;
	bh=GVuABYBqpyyk/jmj/gYIcaSQTNJfayU/7PA/2Z8r7jg=;
	h=To:Subject:From:Date:From;
	b=VHzZjro2UPN6Z/YUhfJa9nvPvL4dVFNvORSPcwb//7mY4Ez8IQJJxzBXr21XXRzAd
	 xvirq+LK00NO4ZRmWvUs6q/LXeeyeLR1ATvWqvCOULB0CQ20kIPIuUOxeb3b8h79dM
	 XuPxeGiVS4ghwtqenjwEhavr1m2e3pxL7ZlUQeXnCyRHOYrs/REJhYcEo0zQyKlreN
	 s3zFr4gkLVRGV054FNI2fJBzcYmtsUPsPESiEJC+oy6IJrev2I+rTeXMrGr8RI/SwQ
	 TXXBXT18ADYJ6Z9BZEy/Z4Ne7KmBr+I/gRqmUYV3fI62DrRZjZo3Zp3fCoQ8j70+rK
	 AkJL6wwijXhsg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A3D5C71135
	for <ddprobe@lists.linux.dev>; Thu, 12 Jun 2025 01:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174969119361.21111.14012328242887768013.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d0705b976b654f8fcb756fc234991b3c795cef988140cf8b4ab733ebcc223d30
Date: Thu, 12 Jun 2025 01:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749691193
