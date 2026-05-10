Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35D8817B418
	for <ddprobe@lists.linux.dev>; Sun, 10 May 2026 10:40:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778409634; cv=none; b=thSA9dQ5gRxmk6Q1P/3CkGeo8jeCTFiQ+6unm6umx+8WP0TAEUhjRkXjMQO8AHHLCAm/vjW7hcxaewFkakJnQzPIk6yNzOHGg2XXiHs5OzoBU+OHgsEsutTWJC4F4q1l4XTl0nTKgcbYZghUEIZCkUq14yeswc1dfaAXe5hs7C8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778409634; c=relaxed/simple;
	bh=0UmSWd5aDR9DccqfbIZlIahrxm+TpFXIm+CoXXFDc/4=;
	h=To:Subject:From:Message-Id:Date; b=q1T2+urjACQFHaFQUArE5Lbf7GY1bp8+/rqVZhkHfyE1JwK9UNF5b76yOgwHG4Td88Hryo5K+PEEp6NJJgyzH+nb3jH/r1LAK6+5coAKFodDS8xNtPglxlQX0d/AA9YZARfnnAWwY9QGEDG/IwHsZHWH8IWOEAlLxkmD8Gi8GwQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tUdy9Sio; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tUdy9Sio"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D032CC2BCB8
	for <ddprobe@lists.linux.dev>; Sun, 10 May 2026 10:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778409633;
	bh=0UmSWd5aDR9DccqfbIZlIahrxm+TpFXIm+CoXXFDc/4=;
	h=To:Subject:From:Date:From;
	b=tUdy9SiocpFIOW2JnkUlbCaoIWiXeopLDABHlTvoDDWE5+ZL4L5I1zO77y7wz7ORd
	 m80YZCnkE4hfU2OtwsgQeyoUdoBZ2oi0XUbrZmkUutJQULn1RUPPlKip9gX46PO2LH
	 h4Yu85a5iXIP/AEbx1NoB+n51mQ4emQ01wsF5I9RyPIcmUAIVhT4wxvYYn95JFA+Yz
	 TV/CowQqVxBvJtTnZBpITkrYDBBQMud0VvIVZdPEmymSwW+a08uLCa5/nFiNHCzOSl
	 znEO4sVwvf3qA4maCfpMAxkSKt2f4xGqFmL8rG4axpqwXAPiLmEhB34Zk+B9tmneBW
	 2FNCXtW9IXJMw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BDB72CD3427
	for <ddprobe@lists.linux.dev>; Sun, 10 May 2026 10:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177840963374.5992.7012396156005513418.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 54b684839dc1f3b57c23250fdf9523a3ac7700df30cc0952c122985ed320d231
Date: Sun, 10 May 2026 10:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778409633
