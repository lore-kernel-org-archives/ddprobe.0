Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42BCE641
	for <ddprobe@lists.linux.dev>; Tue, 23 Apr 2024 13:40:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713879623; cv=none; b=oahPqqo6x84+vAr8Ym2nD6yoLDhESUL9dioE+PX+Vie57hLhdTQ+niG18G7MQDTz4lBOfOVexerTPkNjhfaeeIY2Fj04GdWQnGGEOb7pNP3yiXBwg6S+F05GT9fP80FjSL/WCfBP/6ukBrv5A1j+/2rXV85geqBhlxI/Br2A/+c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713879623; c=relaxed/simple;
	bh=2y+4ygwEV0YXLA6WOJlsVBm8e9dcbPz/V+KIOCh/0nI=;
	h=To:Subject:From:Message-Id:Date; b=KCmwskqpTOZ/oTzWmZYc7wLkqiDQpNwylcUB+wU0saRfaVN1ECUhao5XkB5SxSeX1aaeKy3j+hI7fi8cV3FbDFPo/pNSvfG8+aNPO1QE6QhJls47OlqTPOkzZAndLHPqhaHLbglqYiN6JRUryTptXvdd5JXdlX183IkZUHkhyyE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kL3AdwfB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kL3AdwfB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4E6FC3277B
	for <ddprobe@lists.linux.dev>; Tue, 23 Apr 2024 13:40:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713879622;
	bh=2y+4ygwEV0YXLA6WOJlsVBm8e9dcbPz/V+KIOCh/0nI=;
	h=To:Subject:From:Date:From;
	b=kL3AdwfBYQD/7/39PdArkEsLGZmPKf0PNAP7izhFK4KEPQV/+KBeUeZO8unzRtKHl
	 mxV2afORzDVN27vndoBvUJdIbdZL0oHCBA+WkEUcwimVdGnoZCsHpIO+EIchjiCjff
	 DwIaaXHMj0cDcp5mf0VxsVskLLduiaYVJwOEuIXW1rZI9WzTHMRu7ORfD9J1D3H7Xh
	 NlAUcxNbYkJ3R5et8hg+hGUHla70OSrfhE0IwgyPG7ShUyFrF+E3KqhLMaejkE5xdY
	 3vb/1odQPGerqDYSJ6SsTHPu/3aOcEeJJ917l33et4sisBSXoKCmBDbPbSTIe1LRGy
	 a0gdRDc8+rtIQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C41D2C4345F
	for <ddprobe@lists.linux.dev>; Tue, 23 Apr 2024 13:40:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171387962279.13301.16351268942715558134.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b76e158504cd8d0b6cd43089f783b9931bc7677a24f5f0710d3d735b85aafa8d
Date: Tue, 23 Apr 2024 13:40:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713879622
