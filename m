Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 77839EC2
	for <ddprobe@lists.linux.dev>; Mon, 28 Aug 2023 07:24:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C686EC433CA
	for <ddprobe@lists.linux.dev>; Mon, 28 Aug 2023 07:24:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1693207448;
	bh=T+I/tV1WFlYSbUF6kEedPzljZCUu3O4/YlaRyYaS7rA=;
	h=To:Subject:From:Date:From;
	b=fLEI2cZJUIAjPCqihm9MdlXNE1kZ4N+/HEBzWEOKkWPY1kKl0avk+7soHy2Lvmjf3
	 PK3Xki1ah6g/HJMkexVGj481dzeRhi5BS/psoBT1OBW1qA4oPNWYedZf8ziikyoaie
	 St0VdG7ED5JMradoxAyNEWSbbPaMc/QgTmrZ18GpKpIWV8B16O7sFIYpeydGtebnZY
	 8bAnaWtszEqyJERrzsf5okBdHGt/nu5+JmVY5S/Crk9c/du3hruZARdzDU2Pxy2JFY
	 bvJ0yv9rC8EOniyOf9YH6Znh9DtpZZhSyEB82HOZk6pPVd8kf8r3dd02niqfJBKiPQ
	 QDkXnwoGZkQ5g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA066C83F11
	for <ddprobe@lists.linux.dev>; Mon, 28 Aug 2023 07:24:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169320744868.13050.7489476629598467876.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3fc090ca9c088aa4062584328a196945472bca78cff80905536bb1fa09494c57
Date: Mon, 28 Aug 2023 07:24:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1693207448
