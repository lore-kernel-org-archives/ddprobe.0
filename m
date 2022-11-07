Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D77FF122AC
	for <ddprobe@lists.linux.dev>; Mon,  7 Nov 2022 20:00:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 73B9AC433D6
	for <ddprobe@lists.linux.dev>; Mon,  7 Nov 2022 20:00:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667851254;
	bh=KsrlCFQTTEGqkxowDPN1Olww77wgjQkxHWE02BmBmyM=;
	h=To:Subject:From:Date:From;
	b=TlXmnor7aNg6EXugTUJpu7/3HdCWobtoa3hQwILujNqFC+BsM8oNnlZ37QL1KXXQn
	 EcnS/EPq9NUMVjtpUlGc4QR8Xoo68dRD00AfI9+gIPgWYvgbesuiAKCeoeG5XezUzm
	 ZpV7JfogtJ2Wz51bkWs0TWLewZSbpyeqtMsgGyNzg3E/DkBs1xTOmisEbSL23sfTqN
	 Vgkwebiktf1fahrZGHbH4JV7isRLORLlhTLBqdHivUvTArdon5Pun4Nh9zJotVpgLe
	 Sih8NHlS536ci+6Z/VdCJA1+DnkC+KswPmPQ5D/PU9546i2+0ScCiwJWIRcbuW8nlQ
	 9x4YYdMtSZgfw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 584C8C4332F
	for <ddprobe@lists.linux.dev>; Mon,  7 Nov 2022 20:00:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166785125435.18540.1083284732009761298.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 72a6f13102a8332181c96f53f8ba0f8fd52c2cc1554d3bc4ec693a66e979ce42
Date: Mon, 07 Nov 2022 20:00:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667851254
