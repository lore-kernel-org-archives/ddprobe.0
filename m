Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 697F14C8F
	for <ddprobe@lists.linux.dev>; Wed,  5 Jul 2023 10:06:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DF448C433C7
	for <ddprobe@lists.linux.dev>; Wed,  5 Jul 2023 10:06:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688551568;
	bh=MNwEDVhxBBmW5EjMvUKKMXhdcrr9IqeezRS785PPOKA=;
	h=To:Subject:From:Date:From;
	b=CuwNabAxOUAI9PYrukq1PxkVKg7HmVsHlkiv448Pt2w1JHxmD6S3VPYfnwxOGjhAL
	 mgiRqnox8w98RMwRpo4qV5QCzQ5tjKCb3FhvPL9cVDVSk6zhUxiOmNH3mqWNFHbmdY
	 zDrevlHcg+3pFO/zRRW8g+9dVsF/erDEjRzyrzOvTnf8EQ7X0sIRHrnJBEANlkBGtx
	 k2csOth85Nnc//n52wS7wKA1W8DpB9EOvd3SzYWFmyATmz8DUIp91I+M9L6UHEWuGA
	 BIR45E/Be7F1Jw1isHmu+LvxMet2EXp8X7r4cS5T5BnT9bu+J7Ye/fvgoeYCZTTlVn
	 sDjVEVQqOL4EQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BCCF0EB64DA
	for <ddprobe@lists.linux.dev>; Wed,  5 Jul 2023 10:06:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168855156876.6560.8194902906138839402.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4e4adfc47ec3c5979357bcd88075b486bc8129b9b1f3190f51229117db567390
Date: Wed, 05 Jul 2023 10:06:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688551568
