Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C767C1867
	for <ddprobe@lists.linux.dev>; Wed, 19 Oct 2022 00:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7A85EC433D6
	for <ddprobe@lists.linux.dev>; Wed, 19 Oct 2022 00:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666140653;
	bh=P+nqY1v2ma0wbZfR9ej7RiFpDeSUYUq+skU5PFlH6v0=;
	h=To:Subject:From:Date:From;
	b=GEbwsCnYPY2KCLITkMjGLrQ6w67Ls9mj0n7jbajPStZNVT+JLVYCBBg1DlT89B7iI
	 iq0ynRTe/8pXxLLoBOk0NqNky9M57935qxcRFlQV0S89I34svmBQ0skrfEoUutR93v
	 944xKotAqlhMSMRr+gnOeMaj73N2v6CSVCDN0e09KDKJTHXiEf0gAAW0+MTy3/zztW
	 qdXdh1QOLkk/iMgQ/QmOt3MPHknghSiRCSQfKvRN3QA/QLrdUTgm6flEbVdts642qD
	 y+vEhhYoWDd3eLU7TjS97aBhXs4DZy57fJxP54L/IDWZnGKrMgaXCR31b+mUZsDM7N
	 G2sEzAzDdK5Ow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5DD70C433FE
	for <ddprobe@lists.linux.dev>; Wed, 19 Oct 2022 00:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166614065336.17801.683080365246921868.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2e4e3cf1508002f127a873055aa2bc0aea23923cda9666972bb5173767442ee0
Date: Wed, 19 Oct 2022 00:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666140653
