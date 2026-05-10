Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B1A981732
	for <ddprobe@lists.linux.dev>; Sun, 10 May 2026 01:28:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778376515; cv=none; b=e6B1vdc2ULLJatz3b/hJ7MlLgSk84r2G14H0moN0RjgBz/KlaCCuUFFY7+CgoRYA2w2GbFwgTzSHzJGrhKBCt7x/gOJlS7MtC+mBXlCy2FLuKxf4iBoNYXrcdkVwo2mOqRau/Zg1sgs2cHe5Al5fWJjx+V1gvYhH8sxtR6C1S5Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778376515; c=relaxed/simple;
	bh=TWOOUKH6ajnCRo7QelqRkTOeGyTxC+ozPkT83CxWv+8=;
	h=To:Subject:From:Message-Id:Date; b=arZ0u4pM3QcQiCHZQ/mxQTpRSgbUbZXB0n71ab88yeUtJpCVa+piiO8c5jW7vYqlO9pNrPovIcpsc/1vv3MFJubQpnqSYFaC9xwa8Ggnl+TQMqR5NKlSrD8yb6vV2lR65bK17LK2vQrMsASZnHc+MbHC/6EYljpTMHlWICaDYJY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Upd1Z+F8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Upd1Z+F8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 0B152C2BCB2
	for <ddprobe@lists.linux.dev>; Sun, 10 May 2026 01:28:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778376515;
	bh=TWOOUKH6ajnCRo7QelqRkTOeGyTxC+ozPkT83CxWv+8=;
	h=To:Subject:From:Date:From;
	b=Upd1Z+F8VluvBDlPC/vm/5iBdubh8rLjdySZSb68T/90EgOlmMclHAfqqRTLl6W3M
	 pgjr3Lwvi7GrfOvtk4MwnNLS06hTWzuE2ZH3KHzPAmhrkSP/aAgAhKGSvZ4jFv+Rqy
	 nZCWlWAzhfDYZfRlZcbLz5Hd09L6gtG4KncFCfA+x2tmY089apVy0EDnpH5JizdZ5e
	 NHcbWAIhk+m0iEjhNsA3PTV+iLNw5eogEj8Wu6gRwZYsqsUkLeKGw57+sXWGB1KwHv
	 0lSsWTFO9CMu11wrvdUfGtDdUl9janKy3EKIBjtSbmSLprUIHkvOfCz4zvfPGP50DP
	 282Qtzwyt9Z7g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8450ECD37AF
	for <ddprobe@lists.linux.dev>; Sun, 10 May 2026 01:28:34 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177837651445.28297.6057622417811324192.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8b70ef07c6e769a6133ed9fd25af8e69a3361fc7b0c2dbb28a43ebf5b7125187
Date: Sun, 10 May 2026 01:28:34 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778376514
