Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C562175A76
	for <ddprobe@lists.linux.dev>; Mon, 25 May 2026 05:12:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779685954; cv=none; b=vFuH0gUa/fLPJLMfK/XtrIu7iGxI6eS0xpIJc5O94IZIkGe+QXSUA9Xj3BaDgSdXmPDuHuq77yj9xH8HhKEMjBu1GX6FCrdpE2Z6WujWvE+pMLt6l03DtZIU5f1UmZUXoCBQikTQF5XJzAlLQCU5qdnwa1DfP+IzPp4heb4z3Q0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779685954; c=relaxed/simple;
	bh=9yAsAA8MPXJu4EvMC0dAyh5DNQrQ+67e19mclUjK3Qo=;
	h=To:Subject:From:Message-Id:Date; b=YfL41h95BtIFZ9vp5uM0frvTfoWhz2gbcwFuCCSzR3lVUYedLxSeY25rhqKwEJBxauu/akoYEuYS03vmFd+lqsFG6mgXUos40DSyFFwDI6W/9ifGWr2zIHwHj7Rme/FdkNXM9gt4s6CIy8v2GbLgQzzjAl/Nc649S7mVLm0kPR8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AzXLbzqj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AzXLbzqj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C226BC2BCB3
	for <ddprobe@lists.linux.dev>; Mon, 25 May 2026 05:12:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779685953;
	bh=9yAsAA8MPXJu4EvMC0dAyh5DNQrQ+67e19mclUjK3Qo=;
	h=To:Subject:From:Date:From;
	b=AzXLbzqjiqsa8vhRE1FAuAg+JkAJT1nvwey0HisA4sizxzjLSYI9BVw8SS6Nnbp0Q
	 mImtgHoMNyQIR3QUdDl4fVZS5CTDVHQd5EwFvpEYCFhHzPlChncNMQahExBZgtQ6Oe
	 lmNLUplYKMGIuyJ9alk+EemwUum94EQHwCFN3iG6/EMt6/O3rEuA7aGhZV6Xs6l01F
	 tv4EHpDNB17dmdf+Oe8FgQ4hONCjCE65hBMCKU3vpcO6VwvDwXsdLvGfudnh/vfrfq
	 SqUP6dGrtVwJiV0OJDDbsxejpPDgL1rEyqYYCcKc8HAlXO283YkbFqaUVbNHjiq/wY
	 Fc5gMb3CeHzWA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8F33CD5BC0
	for <ddprobe@lists.linux.dev>; Mon, 25 May 2026 05:12:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177968595368.18075.13780416375651800619.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 56bae724bfea21eef350cdfabe3293867c14971e60e3e50f6641df6fe8eab748
Date: Mon, 25 May 2026 05:12:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779685953
