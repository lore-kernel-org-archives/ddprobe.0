Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E57091FAF
	for <ddprobe@lists.linux.dev>; Sun,  8 Jan 2023 09:51:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 91714C433EF
	for <ddprobe@lists.linux.dev>; Sun,  8 Jan 2023 09:51:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673171487;
	bh=obzOcgpi8ivQ5jY2It/i4jIjr799Q4ytKv+109CiLX4=;
	h=To:Subject:From:Date:From;
	b=VVW8AFK888eO1IzB6lesxXZfRbhUcIEkpC99zoxWeNzunSbG7kdFrHkikaV1BwojF
	 /V+48hdII9eHFrAunTX5e0EF2JsZdXXXJ/4eRjWQzqpxTJcCR9QYp5Ue0M1LhElUCv
	 MWc9/SOkWE1Qic4ilNlW+TZovleTx4KCsIkF3SNEg5TVmdBnVJnlZMoXGV1Vi32k9N
	 /aWBQrTz6BajKKYPkY/gWBTg9vvABfPOYj2gWCubb22K5kcdmkPFRvG1N9V9Lv2al8
	 v3IwnqS1HY847TcCqiEtXqRmfEZNBmSIPBXV14vojH6GiimXx0ihuei8l7A3M/M53e
	 Y4m+P6UBObnlQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 72B46C53210
	for <ddprobe@lists.linux.dev>; Sun,  8 Jan 2023 09:51:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167317148746.4155.17926080781921042721.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 31b2d7fdb756a0d0d63a1103dfd939e7498bd2339ff66b491b3f9b3ae61d4c92
Date: Sun, 08 Jan 2023 09:51:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673171487
