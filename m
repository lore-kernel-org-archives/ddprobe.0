Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 227E127A103
	for <ddprobe@lists.linux.dev>; Wed, 24 Dec 2025 13:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766583234; cv=none; b=QKayXzNyEOOJe1hVd4wVcb7JfyXhumJsmWY+C0IHLEbr/gqc5XBkB9ZMdRWzstJPt/ksFq1iQyh6StWVtg8KgXKISsTCJd3B3dZkfJjXWE2hO21RQhDSFeWEM3lEmQRWy16ecCrpLepo+4N/yRAj8kOA2u/SDIooupMG6m9/a2Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766583234; c=relaxed/simple;
	bh=PLA/QxlpsJUsEOyee4tq7i9Qu1e/y7wM5wc7+2+wgNY=;
	h=To:Subject:From:Message-Id:Date; b=UNM9IhBxXx0BcZbyKIkKXIe8EMTVv8hJwqNnxFMByaHD2W9Es2n5jGD8u9zfK2EOUsSieCVNpkZ2dGWJwSITjyDzrCEREeUf0QecN9nt3d8DcOuugMIGJib7tRTd6QPb/5IyDAN4/6LZnViR7jUwOOPOJk3CuBSRfkUWgWW24uQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IPLU9MQF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IPLU9MQF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0F4BC4CEFB
	for <ddprobe@lists.linux.dev>; Wed, 24 Dec 2025 13:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766583233;
	bh=PLA/QxlpsJUsEOyee4tq7i9Qu1e/y7wM5wc7+2+wgNY=;
	h=To:Subject:From:Date:From;
	b=IPLU9MQFKzVm2Nsqa738ncLjn5I/QPVT3zRsaj4KKY7G87kXaZviaxsNjxDH0jpV8
	 CX6bTmoVS6gMmJhwxtxTFSV914PyNTzM943ulBoslasECZtuZ41Gbl+Gy4x6G267Hm
	 +0YADm2yyWZoQcY+B0XlpQvhgq9QoJYrPqIxyZfjhadCp3IWU40t25fj+af41RhFo8
	 2lWMBx0GDzVh3nhH415c6t6qxM1h38CD3tMFwMErZfxKnY0s5Kgj9ct4pUNZE6xhj0
	 ErqFBVTRuU8ib7mgF2vn9IL+YgoKUKEDPuDZqfQJGnEqzd4EPNMjG9cjqAD4qPnQuw
	 o1bs4YKtQrH+w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FDE1E75453
	for <ddprobe@lists.linux.dev>; Wed, 24 Dec 2025 13:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176658323358.25148.18392186426901760577.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ac594746a8551da1ae1bc685f3d8815bbe49b0978e56cbff4ece63068cfd7749
Date: Wed, 24 Dec 2025 13:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766583233
