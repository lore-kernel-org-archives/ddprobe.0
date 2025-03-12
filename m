Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B7091DD0F2
	for <ddprobe@lists.linux.dev>; Wed, 12 Mar 2025 04:58:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741755534; cv=none; b=jK7tyxjKHtcL9i/8TAWmphPg42BY9pJnPFzfMzHj3RiWDbz8vzGt8n7enVtYj8n9QGS+cX+o7OALWJIe9ULqL5QbUQtYZwC1PJgrAoO9S8O0M94+459EOVwihntpo4Oj6wf3iHIXB+USEOgZwuTsBjrEcqFOUCZpHeLtw34sCQQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741755534; c=relaxed/simple;
	bh=XsJ5rUbh+FQVCcHs4BXSBIi0JHfvMXYwv4NhFRm4R0U=;
	h=To:Subject:From:Message-Id:Date; b=VjczIPvLcI3IkxJaENFnB7oFTtBA+SM+YESjyrBfymovDrcwYi9pm1R55UK0CHen1bHnMePzgY1pFoNLjkKwaM/uyFzMBC225jPZwqAeOulig3xM89Y11HnGmnPqnmqo6QMR2AULwqy/v4CMdQdi79z80Wl3Vawl3k7FtF8iCpM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hliRBvjU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hliRBvjU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA00AC4CEE3
	for <ddprobe@lists.linux.dev>; Wed, 12 Mar 2025 04:58:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741755533;
	bh=XsJ5rUbh+FQVCcHs4BXSBIi0JHfvMXYwv4NhFRm4R0U=;
	h=To:Subject:From:Date:From;
	b=hliRBvjUNpyw+wuYndpG1BEBBJinPpVQjWRzGt/kdtfIwlbxyQquFldHrU870ENWY
	 wVtl9OwIMU9L5wIkUSFleVnmDCKtAqP/THiZf8zhwYwrKRAI2bK+eHR0QtFQaSpRVl
	 UTIDxzfzwG7BY1SWhIZ9EUIMSKbIShyYzTdwO1oHREyvpXwvjQ6PYzhnA30F2Eo6kM
	 JmynIG0MaZHs7VJjkZVS9r2F0f3WiZWg/27/QJMdnXDBtxN9Zp2D4qTU5URQEm2jrX
	 IKPfLC56zmZW1zVXKwk5+r+EAOs4PxPmahRbqA5yoiL/Q5D+v/3Jc3nhcOmGN4U6Ye
	 RebALBaY4f9iw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93959C28B28
	for <ddprobe@lists.linux.dev>; Wed, 12 Mar 2025 04:58:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174175553359.3157.8900187842142129081.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f24cdfd66359b0e725c43cd6a29576b48694d9b570ea36cb170200f3cd152860
Date: Wed, 12 Mar 2025 04:58:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741755533
