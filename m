Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EE9957B
	for <ddprobe@lists.linux.dev>; Mon, 16 Jan 2023 21:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9B201C433EF
	for <ddprobe@lists.linux.dev>; Mon, 16 Jan 2023 21:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673902887;
	bh=waE7ckr7eXhOsxy+WKr8VA9uzToFaVeWN54nxsgIhAk=;
	h=To:Subject:From:Date:From;
	b=q9CUgxwrqCBr6uXLkH2gw/RaxW8He59iPMkxEekSnttx5EVkTcvgK3zWMfNh60DXQ
	 x9Wcp/EJuTUeee9xLyvOnsypWG37yl1plzLM/nj1a0y6BK+GZ1R1emo2z/yyVvv2eT
	 E3TNNaYNErLCOZxNAQ49DjRPyK4lsi/j5g4U9Bj7Uwafr6BNWYu5XLYLKU4TK/k1fC
	 KIdWCh87/UE6I7NHl5oieeKaElTxCPFZXo5MhIBWAyg/2xzJvolABLPsZO+gUP4maQ
	 egqLC7j5f0ibKWBEbGkdM0hOT+ObSF8kAeqjs5E2CQlHsn1VL4OLSE7FejxEhyt7sx
	 +kXwwlYMunzQQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 77E4FC677F1
	for <ddprobe@lists.linux.dev>; Mon, 16 Jan 2023 21:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167390288746.432.10395214472287280304.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9e4e8e1889ceceac279dd51a188f4cc9f52deba8afc6c2e661b1ca3c253158d0
Date: Mon, 16 Jan 2023 21:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673902887
