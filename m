Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BD36A46A6
	for <ddprobe@lists.linux.dev>; Thu, 27 Oct 2022 16:10:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 68902C433C1
	for <ddprobe@lists.linux.dev>; Thu, 27 Oct 2022 16:10:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666887054;
	bh=d+pQyKpAx74UBtliJRa1Lj8nZWr7q6X78sK1LvFl30w=;
	h=To:Subject:From:Date:From;
	b=EAS2cYv3tSjQ0xWXxWhwghlsO6x1fGUJpc+xxvrir4UwSkHbM/CEatbWYpkmKVTd7
	 /ZzbirDKcSXFa1f4fA+uyXimZXk0zXch3ZDg4vY1lPsbrpmxWqwBZHiaCRjVICn5DN
	 IRVONLzSwHf9v+v4QB5pN9TPsQRpZYhXp0zYweM/0lSD2zPVxR92KjDBgF1/hUDvEi
	 LSP1Rbbr+0FzillgyzR34yBZYwSKxuVyaJIyGd149qUFfsWDHZGrCqKjysKvPQ7/+l
	 yhAdA7rP4ZcnXRiRfq4QcvjQZ+FqBd2qhmU03DrTS7NMTQyDDQzqNXHMYTn8OD4VMH
	 Y/hsdhFHLwMlQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 51718ECAAA1
	for <ddprobe@lists.linux.dev>; Thu, 27 Oct 2022 16:10:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166688705432.27793.6953742418301742736.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 131180c60e7fa96d40d0a85e6c2a05312d33cd024768636d74f3a31f1432ab1c
Date: Thu, 27 Oct 2022 16:10:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666887054
