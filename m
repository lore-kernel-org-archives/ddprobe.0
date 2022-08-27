Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CD8C77C
	for <ddprobe@lists.linux.dev>; Sat, 27 Aug 2022 17:10:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 77D9CC433C1
	for <ddprobe@lists.linux.dev>; Sat, 27 Aug 2022 17:10:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661620252;
	bh=tMr6JBXqLdoZwVqIw/kpUt7rylgX6/KwUo5XIjI1yug=;
	h=To:Subject:From:Date:From;
	b=D8IXaJyXtkrxqXksm99VQNrvdEivpoE0tZ13JmsJ1S5HEtUUAGj6zJMmJ8iH5qn37
	 43anKLcaG61CXUI9vmiTD3LvkkctX/Gj57Nq6xZ32kASkdDqSh5IOjtNKmOD1VVgou
	 wZ301J3cd1lum07vTh9gDCED0W9Pj1zsilTIYEl6TI2MU9JMgHhqxD2kRyMBOKTGQ2
	 eh2V/gDvEgKIW0AL3cjGCTGzNppMAkPhzuBUX1CEt+95xoZCDamIp0vmh6/nlXZ8Be
	 4rft/D/MShkMlDgDbQnq9SQMp+bSvC4eNbCVw8pUprGUqWFxlCLo+PWTGR0n+QJ08C
	 5eGrwdNgHEBKA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5CB24ECAAD1
	for <ddprobe@lists.linux.dev>; Sat, 27 Aug 2022 17:10:52 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166162025234.10268.4445719461568752710.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bfbab61418c3e7235885ced57d792e915f94a6cfa4814d66b13740dbbe87ea89
Date: Sat, 27 Aug 2022 17:10:52 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661620252
