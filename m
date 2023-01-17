Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0B3E8D532
	for <ddprobe@lists.linux.dev>; Tue, 17 Jan 2023 19:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id A09D9C43398
	for <ddprobe@lists.linux.dev>; Tue, 17 Jan 2023 19:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673982087;
	bh=l93n/riTdp0BCArRuC1eSyiZyvyBkdCJ5OsWeJT0fks=;
	h=To:Subject:From:Date:From;
	b=Dt4Nw4fZ6yIUTwUW8KVU+MsxaGDLITeYcaGbQOA0HJPoXQStpk1L+f/adbpo29PHY
	 jWdrmugs7Ec4etjhnNlbgyCM3grsFat5U0eDQW71sNiQZ4XwwqY5Ogw56b6ujdmXPN
	 aXQDtyMdpZ9nwBbtoB7l6e24ljkITU6aJacMu6JCiwgxFtCxtMhxd4CCkLZnblIBm2
	 itm0b4NGW8gF+s7juh5Aq8zDQ5ySzLVwrPHQN+agAvnDNSZGzgXpUKEU0GvjlAOSpi
	 vOi49xPx1SNjGV9cLPQ/pfkeAbI9JsQ3AIYixUZUMd+sBM3548A87w+AZ97K8F2KIa
	 L2xPVVqUklhuQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7E0B7C54E76
	for <ddprobe@lists.linux.dev>; Tue, 17 Jan 2023 19:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167398208749.21949.15395831798350740644.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9ffa772d1deea3b901bfecd66f21037fd480d0aafb8be22d410560022d01cdb3
Date: Tue, 17 Jan 2023 19:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673982087
