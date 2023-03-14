Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D20F23A0
	for <ddprobe@lists.linux.dev>; Tue, 14 Mar 2023 05:07:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id F1130C433D2
	for <ddprobe@lists.linux.dev>; Tue, 14 Mar 2023 05:07:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1678770426;
	bh=g40f70NZxq1P96SOMuAtAdDjEMqTTvo7V49t5pxZ16A=;
	h=To:Subject:From:Date:From;
	b=oMBkB3JVF9f1RHd5Dn3/8b1nrXrcPAVvteLBZaKWdtzyL33sNK9PW7bnGS79Dgh/7
	 zPrRpgbVzfImvu//yCxOrIrx0k957AB3mnYAk+S8IkC23FhSzaGWI1p5yeCJ6G6VTs
	 aKFqP8q7OnbiaWJPrIqp8z9xqs49G0PVrove9t/yaLzaBOu1rLqUXQrQtS6HFlQMRA
	 T9t/saki3dU3U3c7FOnNLMEUAhdjTGywx5PfIU8lcVU8b04ZslsBB+3gX07H55QaAy
	 OUceAIhco1OAJlrpRYC1lCmyISJZBZlVwsaVmqivnH/Tcv3FxdWsUIg9rpZ1PWHZYZ
	 N0PpU+2O0SRcQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D32C5C6FD1F
	for <ddprobe@lists.linux.dev>; Tue, 14 Mar 2023 05:07:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167877042584.32491.10679317416940332593.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 24acbffa53a0c30997a6cc01e335a6a7f1e303027b65647e8713b4fa3e652048
Date: Tue, 14 Mar 2023 05:07:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1678770425
