Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C6F93546DB
	for <ddprobe@lists.linux.dev>; Tue, 19 May 2026 15:00:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779202834; cv=none; b=hyNaHEHpHVCHog/B5Xox9+C0PUVdoN3at3ghuO4kzupRui0EgRBcoKcvVvpNKUHFpIB8JtIgeJeOgb29jbdW7aqj1r86B1BKx7aW8Bkg8BXAwGsdYWb/jVYdqxMrk+irKETcy6zvJsxrMMqiHXHTh0xO9B6QLc/Euat1V49ky6M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779202834; c=relaxed/simple;
	bh=8EG2u7lKpJYlA6fxm9Zk/+Phh+gEN1co1q7ezC02D9c=;
	h=To:Subject:From:Message-Id:Date; b=CZYpgwXwXoCahpQmuDpcKW7LW2D3FiJ/5G9k9SPu+zy8KW6QxiYXAGY76XLhCWxCbKIbFSWcIWO1vs3pTTj70jGkZ7BX/icgqYzn84bN73Fe91Pt09AC+VuKNJFV76W/aPJ4p1C+QfyI2nTfd1b4jU01NI9zORMbZLZhyPCvHzU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mIfNACe4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mIfNACe4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B5C8CC2BCB3
	for <ddprobe@lists.linux.dev>; Tue, 19 May 2026 15:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779202833;
	bh=8EG2u7lKpJYlA6fxm9Zk/+Phh+gEN1co1q7ezC02D9c=;
	h=To:Subject:From:Date:From;
	b=mIfNACe4Rz7WVo11siueTqkO39WKOOdg1xhEdx/YUH2n+5HMICBWY2RSWQ7w3a5vR
	 x2VEKlJY8ZrYi+0GV4gfOofjALDPt4YcVeR214lX3OfILcTn0XFtm3sJeIgEv4Oscx
	 DV1L9AUmC8wlkMC6eVDNNd6f/QeQ79PefhdaCL8d9maojIjzDOLLcevdBJM+O9wJZa
	 8ht894l971oUXWhtEIfcWhyvlPsPZBmQDcEQU3usENDAiqhw+ye/cC5z0w9Xd86rTj
	 dW4HnrUmvO/1mK1Ak2rXwpL0g/uDgrivdt8Cuzu/qUmTjUoEJ6/IODU3xLQP9Vkrjc
	 z42ZTYmKBGxkQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB912CD4F5B
	for <ddprobe@lists.linux.dev>; Tue, 19 May 2026 15:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177920283369.29082.3480198849354162032.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b3077fbd750e7ce085c7524748182012e91720194322fc87c97ba36b94f54c2d
Date: Tue, 19 May 2026 15:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779202833
