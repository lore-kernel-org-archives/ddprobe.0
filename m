Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 64F1639E6D4
	for <ddprobe@lists.linux.dev>; Thu, 16 Apr 2026 11:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776340654; cv=none; b=OdcttVE/K03VjuUC2NmMblOcQCLLu/BmYkDU5JWlFExyT/IDqgXk8odx5SCrwri4o0heH8Ey7b/9ye7/I71LzHTx85sjVwmdeP/aY3HG3ihmBTFsa8i8739c58Xf1y49ykew333hu59fDs+XJTTX9hGWjAiizDvMaRw3fzqo5yw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776340654; c=relaxed/simple;
	bh=mSSHLsw3xbj7u9XMcwrKowfJ9JYTmHCdMXFl/E0J3oE=;
	h=To:Subject:From:Message-Id:Date; b=FSsa1dW00+QmyGMNYW6NSQbWM1g9QQUbn2CmZc1gmlNnTP2RElNNljTVWpW3Bd98murY2NGmFP/7QHWdZNU7hJRcX8J9xWzkuXlL3CvvQt4f6l/RJw6ZCmpDWHg6CRPNvPtx0fZ42qyvYcg97drg9o925M5sQ62bdmvyEsX51Uc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Mw5zEYmF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Mw5zEYmF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B968BC2BCAF
	for <ddprobe@lists.linux.dev>; Thu, 16 Apr 2026 11:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776340653;
	bh=mSSHLsw3xbj7u9XMcwrKowfJ9JYTmHCdMXFl/E0J3oE=;
	h=To:Subject:From:Date:From;
	b=Mw5zEYmFDUdahRad94gP2vvh2aKqvuOQu08jyEt3Noy6VmnHYzWrGvIZdvPU8HoDA
	 sYDYvlzueA6ZtadonYtGFQj80LTS8XSl1BC5wlAFM+3QgRtb0AlCp+SXpBqsxbf1Hl
	 RHSE8hFl0lqv13FTfrAQZ6ilX1tp8OS91LrcEzZOABi2T8Tl/LXBF9h4GW+vsSOD3w
	 FlQ/CvWlXxPMpTEZRh0dXIg/Z19XAXFL0Rbz0SU6SWhP/GIaJ6BqWoRJs9HnzCSgCh
	 DWm0lEB5QjPtGMDynpq2firkRv569Y4lyHpHg9PYz2oetnvWekR4WLMgJvkzJbl1tE
	 bbxU9OkbsvRZA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB035F8A160
	for <ddprobe@lists.linux.dev>; Thu, 16 Apr 2026 11:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177634065369.28984.262586355353609419.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7fa8cc342575cf2fecc48daaa3f144a2b0c181703e412f080f8c5984060ed93f
Date: Thu, 16 Apr 2026 11:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776340653
