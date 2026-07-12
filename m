Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42013233923
	for <ddprobe@lists.linux.dev>; Sun, 12 Jul 2026 22:18:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783894714; cv=none; b=CEjN3vve4yiUqtKmZdTrU4EPpQ1Y1NgvT8x0MIrZYJ7n38rz3x/km+dC5pUJ+Dgv1sBrnlBhHVFmYZZHwFBmkx265HLzdpz83V9YgQMf/d4ODfSDahm6Au5/dDn/C1BZ0nXxgmyTQxTeGLvTp7dt+Nyzz2bGTo2RlWNYtGxWQGw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783894714; c=relaxed/simple;
	bh=WqMN61aIs8CKAbKWDFqQGD2a+tmfnAC71jwlz+v6pRY=;
	h=To:Subject:From:Message-Id:Date; b=kgFP5q/4l65nB1M5jZo1fK5Nqj6cMhE2DWsTdQ9NA0/YVTcGqmLX7uWdBTm/1TmaRxvJG7pMKCWO8iwcO3jCFv0m+LcJVay48ey2+1ebWcf1xFIoJWdYogEwrjnIajkPW98zicGL1laNcNtF4TZPS56MUaOu6ExsQq5f28fj+Qs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XllI+SjT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XllI+SjT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3BC8C2BCB7
	for <ddprobe@lists.linux.dev>; Sun, 12 Jul 2026 22:18:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783894713;
	bh=WqMN61aIs8CKAbKWDFqQGD2a+tmfnAC71jwlz+v6pRY=;
	h=To:Subject:From:Date:From;
	b=XllI+SjTxVXMH25neyOLVHgY684UwtZiVdpWuUHumEZ0Bc5xOITJeAl1wrbEXIABP
	 N4qxx5uewH8R4I5sbKHoUFJdnPHenUQ5Mlb4YvQMrRfEkJ52FNYOo74EIl58QwChEH
	 BFH69s4z0UU3xonqB9hqsdwxNM21RLDKGMJJgk6qgEe+6v1vgJqE6E4G2BwZ68pPqi
	 GzaLP9GRV8mLSzEek5GQnfwap5gwIGWUTfGaiNjShuZu18KfrwpcJM6oiDgzVmc1zA
	 0bIpAJPZ1BPl2aPUBjf4CtOJWfveA30rFNRfNzXgoEq7nx1G1l0DUIW7abYpC2dDZz
	 OjmvVgTSRiDGQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE98CC43458
	for <ddprobe@lists.linux.dev>; Sun, 12 Jul 2026 22:18:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178389471368.14780.17795287898359523873.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 21a6028e9af482db5794e88dec0446ce72d338a99a1ee011ecac05a066b868f3
Date: Sun, 12 Jul 2026 22:18:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783894713
