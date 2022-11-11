Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B88E02582
	for <ddprobe@lists.linux.dev>; Fri, 11 Nov 2022 11:30:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 71895C433D6
	for <ddprobe@lists.linux.dev>; Fri, 11 Nov 2022 11:30:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668166254;
	bh=H/0f2aUX3t07+TfvDYJbN8a3LojIIoOwvENCTzQ2iew=;
	h=To:Subject:From:Date:From;
	b=ZGNUd2oyP4+QufwsRr+wuhr7JZtTpiqyO6sahTGjcjUGAnZVmcQw6JBwRMvmg9o0G
	 oNDX89oEBpvYiW8TTxn0Pb31xJoRY7uRmSmT3ta0HLN+bVnzHcu10TTrN78AVpY3Rk
	 WRr5KqLDhQqc/ZkOEUhxc6XLMRQd1nfN3NJAeFsFywSgh7pfV63JiscDMAq4cF+FPH
	 ThZbCuhCYQEh5QxPS+dghi9n6XJrM05pEgLvBL7tq+mF4LcCQ1yRUDHv7QUuT0Hiy0
	 2ZID/A3hlz9ZxBYapyPUt8FFQsF8lti/JsEnIk/TLFsGFX5YGoTyNDHLU49WoIZ135
	 lEHVZKplriVsA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5A9E6C433FE
	for <ddprobe@lists.linux.dev>; Fri, 11 Nov 2022 11:30:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166816625436.26903.465935469615715587.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e183e6c40fa5a5df1e076679c6cfa1ef7bf347897c9f9f6eb797ab64e7562812
Date: Fri, 11 Nov 2022 11:30:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668166254
