Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5DF5FA923
	for <ddprobe@lists.linux.dev>; Wed, 28 Jun 2023 18:43:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0193C433C0
	for <ddprobe@lists.linux.dev>; Wed, 28 Jun 2023 18:43:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687977788;
	bh=jXUqjXRgxtw6elUsqNEmnm613ma1E7uVpKtBHhnjkOo=;
	h=To:Subject:From:Date:From;
	b=qQqtdjr1UxYkI1Dk4DmTiewq7aSE4g531CT2prR3QbtImW8Y+3l54p8rmLPR+YRHV
	 eXv51rLOJ9ckp+DJUmDeyyR2idT4BiYuPj9mkHVlFi8OYzgTBKB1W5LkFGMFab/nW+
	 3LSCPXls0onKPvQflwXUG7EPaBeIrAweTAfN+Ji4iBwpIfvI+kO1xUhcccqq+3eTUL
	 fEhrQzywzWZP74ttL6Ilp5H2/Rkt41r9SPZKCUr8oqliKzDsSC8gx+WBtlcTeQW8KV
	 4LAMqwi3eq+p660ApcuuDl4CQSAl7c2WXbVUkIIM+iWnsVZfGodLguJ3Ht5u4TeLFH
	 TEHP8HHbK6WCA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B490FEB64DA
	for <ddprobe@lists.linux.dev>; Wed, 28 Jun 2023 18:43:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168797778873.5245.1321190043477123636.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 60df1093c796910ec53df67e68ba50d0ee03aa2c2a5e68ce136b6b12c3f5d8b0
Date: Wed, 28 Jun 2023 18:43:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687977788
