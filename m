Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 242D61E8324
	for <ddprobe@lists.linux.dev>; Fri, 25 Jul 2025 22:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753483794; cv=none; b=LLJL4hKGnTlBs6iOeqBSRiIPU68EU2gZTuGZbXRplUdN3dhI40eH+/hqwSoFFv9PF78EXBPOvlZjkbUYsS565kl8ro0Ue9MuFwmLo4B1HBZwtMP8zJpaMR0otoIrhVrH9BHVc0zlb56wn+gcUC/mkL7a8e7lKCR09jCUOYBRVwc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753483794; c=relaxed/simple;
	bh=/jVVzcxmz7X0+kuo5yvQYW+B84q1Kd3upih6o6GPx+w=;
	h=To:Subject:From:Message-Id:Date; b=KJbMwOwDVRIRdEPyhghFX/NQqh6KIDd/HsQVIPnM9HyPzqdmLhze7zshQaM+/vlj4vTEotXSzw6rGI04OCI4IC0zlR/7+c5H3Owe896TSAt+PE+/6x3YXGpk0RA1UMwcShVrER8u82rAq3s4vUz3NIIxVm+T3HAnkaqvcfGxWCw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UFRN+A1Y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UFRN+A1Y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A525BC4CEE7
	for <ddprobe@lists.linux.dev>; Fri, 25 Jul 2025 22:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753483793;
	bh=/jVVzcxmz7X0+kuo5yvQYW+B84q1Kd3upih6o6GPx+w=;
	h=To:Subject:From:Date:From;
	b=UFRN+A1YaWyXtPxMrjzLiZtLw8AI3xi8Gj8BFqCH52vgi4v/8luefwLw9d3o/D4rz
	 Hr/Bu4p2zRvGT4H+BdFNz4Bflm+YA8Tb1H4Nwb1DLLytEv5JxEre7KWlYovH3gfVYY
	 rmUNw01rFQnI8qHx3qhqpMLkSVQvWMz2N1+rZMNFYO++BdlwKB6jqRlXdCve+fyzUb
	 xa/SEBxcGjPaSXs4pdiRAyHkaiIVvf3hc/yu6BIUTVYO/ycqdMz1q/o+Kk2Tywx6u4
	 Lzhu9GsuNqDGJMQPkYThRL4SnLP921GhQW0rOPq5pMNOmhiNoYgyiBk2TCl9PoT4SR
	 loWdrF8QmM8sw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91E91C87FCE
	for <ddprobe@lists.linux.dev>; Fri, 25 Jul 2025 22:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175348379358.20574.16011850315797194573.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 18fc34f1427ed19c8930cc20632bd4baa21d2d0c1255728c7e0de8ac313edcef
Date: Fri, 25 Jul 2025 22:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753483793
