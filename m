Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 44AA525F995
	for <ddprobe@lists.linux.dev>; Sun,  7 Dec 2025 21:52:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765144374; cv=none; b=GOBYRpsCWfQcW2emlxGt0LwNGQVww2JigkZX19GZwzFx9I3c/sU74sPW5Vfb4xYu1TJXEaQD8WiyuzdNuPxxDDFCcKSRxRVtXbqsUzAGtDDzBSD+oxGvV3tMUQ3392Lu3KATnttKLYufVYJD/yQeNpDm7bNC55n2h4YCHU7YUp0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765144374; c=relaxed/simple;
	bh=R9lit3hAdaZmsrliez7qVOXk0lWi9JevlpmDu2AGV1g=;
	h=To:Subject:From:Message-Id:Date; b=Y5D8Rbulx7ueo9s3Ttj4hLasaAXa3l7cixDW4R+aWlsySfnmP6rXoY194EBfyRBNrgHqdAqVs4+5RkO1utp9n6/M/ryqR/mO8+JSC84hu7sVTl3EbXG0OqZOBfMaSQ3O5NzztxYzUlKXpyF1+lfp/2RFAwf/8PNuiArp95h3NzI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=spxVzI03; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="spxVzI03"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACF33C4CEFB
	for <ddprobe@lists.linux.dev>; Sun,  7 Dec 2025 21:52:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765144373;
	bh=R9lit3hAdaZmsrliez7qVOXk0lWi9JevlpmDu2AGV1g=;
	h=To:Subject:From:Date:From;
	b=spxVzI03Yk1bykrD+F22bP9UXSi7Jfv1nYYnA+nIsh1xoUaIjAXZpN1K1k0nx1Yex
	 XM8d7GJSY184GtWQZb6HVmREHYboWVPFPx/nzO+g67M4GvpxQq7P/wILEUlPQJtGjM
	 7+HT6BZKgezwd9Wc7MqjzygqMk9wxT6JWQfMZrRHLFMUJFRJRcPOBt5SqTeISWYQZ5
	 TgnLHeI4s7DM33N4V1tlX+Vo4sq+DUd+vooVDnzSLjryMHe5EB9l0jMHvBRkQ5q01+
	 bkaBZw47/N5zoBTQylwBF+kjQu34EyI68QbMnv8qQRoSOEG+7CqHkngkxcTAVZgyUB
	 hMzCDkB6VwI/Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94A96D2CE17
	for <ddprobe@lists.linux.dev>; Sun,  7 Dec 2025 21:52:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176514437358.3827.5026385067266680247.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3e3708c4f69a07db05dcc447b84732094b3527123b095833a33958502f10ac56
Date: Sun, 07 Dec 2025 21:52:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765144373
