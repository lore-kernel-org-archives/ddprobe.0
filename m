Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C3A78D50F
	for <ddprobe@lists.linux.dev>; Wed, 30 Nov 2022 23:00:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 72A6FC433D6
	for <ddprobe@lists.linux.dev>; Wed, 30 Nov 2022 23:00:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669849254;
	bh=1TxAennNwib+ib50a/mqKVc1m8n+MCjalgG2SYmd2Tk=;
	h=To:Subject:From:Date:From;
	b=itskc2eYVRKJSRvjdnvZdQTyudncmv73jXqdM0ATenxZm35FBBI6ECwr9KHSX47TX
	 z7KwD1153AcwlLS4frBlz5JdAL47PUjKvm/jWJV3Tjoz5VX6ecWmMjbNXoA2Hoy5nX
	 RrZ9KypPJkqwxEEdcwG/pduPi+sCETfPD4Lrjl+E4x+CV1mDxAhSqZTQmOqw/c/pQ6
	 3q5/vnPcMlbWK5WHf7twk1LnHtS+RLAC+en39mShznlJmy0iSQlhiwn/wu8cvn5ViK
	 KBeIhpV3A56GAStMqP0BG1WT/XJnPR7BWUqZLbIrYIBuoqa8h1YG+bQdrNu/X6Ke8f
	 Tit/nACa4a1oQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 57FCFC4321E
	for <ddprobe@lists.linux.dev>; Wed, 30 Nov 2022 23:00:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166984925435.311.12879297793241577363.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9928e715b94c1e38c1ca0bf5134caf8ce6bbce98aa301e382257900194ca32c3
Date: Wed, 30 Nov 2022 23:00:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669849254
