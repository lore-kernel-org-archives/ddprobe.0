Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B35C928F4
	for <ddprobe@lists.linux.dev>; Mon, 10 Oct 2022 12:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 67232C43145
	for <ddprobe@lists.linux.dev>; Mon, 10 Oct 2022 12:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665404453;
	bh=YAaLCKRCGBFUdOE2jvZbh1TIrCPFoWRWpvkcEJ6YdTo=;
	h=To:Subject:From:Date:From;
	b=chkMvkW0imQa6d3N6o/+DKFQQ9HHSTQaRbrOJMS81xkoTPS495jrv+VhNA8xBF2s+
	 sE5tb57uSRoH1wdpS1UPQJJT7IKeDn3cYPkz9sJTcCPvKeNYPPUlpm6Sk/6VEPciyg
	 xHMT3n0Q0jDQXfP9LAQLBucmYZruoIahusWD9Pr3AhcKT2dCOYYUHAMYUR90yyOBgY
	 XF1vMCTikavhZ2uhTb3l8itpY85xq6RXCsn6qYAcYCWq0J+7oJ/D/7ELf6gC+peY2b
	 wYmztJ+YQCpz2Zoh00NO464wKpvTfEwPJ4n7n+8DmRj3bpfa99GM8c7M18Oh4T/A9j
	 UMqwviRzwy6QA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4EA0EC433F5
	for <ddprobe@lists.linux.dev>; Mon, 10 Oct 2022 12:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166540445331.21948.2468228727790062787.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a993f919e469d27c67277afe95cebabfea526b51f0a264fea5c7625f562db1d4
Date: Mon, 10 Oct 2022 12:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665404453
