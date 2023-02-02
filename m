Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33B32AD3A
	for <ddprobe@lists.linux.dev>; Thu,  2 Feb 2023 23:56:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DE381C433EF
	for <ddprobe@lists.linux.dev>; Thu,  2 Feb 2023 23:56:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1675382165;
	bh=VGlViGi4ppQZC5vyzUqWjlzDmJ3iNj7msglxPr/+arg=;
	h=To:Subject:From:Date:From;
	b=SfJrrkC320aG5UBbRo0zxEUD/auXYUXog6t1Eol05/nKlYmJMudLLCv+/WQZuEY2E
	 gjUP1PRVfw6nQUYd3GuyaNivs4/nC7ca9f3EPhd2p/+fMXfzCkTINEvXHalQgs7Ouy
	 718WRz+s8X1e3P/aDb54H1/q1WykTxrtvj5QB7UsZDGe0lad/6YunPvueHBPUfzJzG
	 60KK6KCyoFCdQoEd5HCiF4Qyxh/kkmQD/rqGY6y/ma/4IJ+PGZ/UfD1xCTcEQY9vjb
	 dEwwLXqBEX5KNcKZMJJtvNUuFg7AG6z0xq1JSJD8cPvwaTpZX81Qe51Pk05m7nxo73
	 VPGBvVeGAlcpA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B65D9C6379F
	for <ddprobe@lists.linux.dev>; Thu,  2 Feb 2023 23:56:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167538216573.29166.3132165066470437650.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2af367b14baf8d480eb96e0fd31b1d1e1391f41d0cfe4a9c3378f97da574a544
Date: Thu, 02 Feb 2023 23:56:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1675382165
