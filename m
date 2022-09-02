Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BA39366E3
	for <ddprobe@lists.linux.dev>; Fri,  2 Sep 2022 11:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 73765C433D6
	for <ddprobe@lists.linux.dev>; Fri,  2 Sep 2022 11:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662119453;
	bh=mJ+KN3c6QD01zsfVGSMhdvub4z5FCBp7fMaZ7ZkDRQw=;
	h=To:Subject:From:Date:From;
	b=akqw48cgL3m6mdJyQ8m04elyvcfMlT9sp+dLuwbENtqzuCFF+X2B1yMA6DW0Y7cVG
	 DZBAlaiwW+u6lwwLqsdg7BQ8t1z7GI0dvj63/yXuPF8FlzxN2T/pSh7Ms6bUXp1aZZ
	 ZvolD64EC46SajhlN3TRwriLZumSx4MCaQyy+fHilxyCHY9Tr+q08idSYixIs6wDR9
	 LMRCEEpPeMajwJJiw9WrQEFT7QiGXzOa6KBx0QmODurNlBBB2lu4ycV86n4GD1inr2
	 udqUNWUhZTrAgLEKpzf2LAXdZxelfuOqQNhwJPI1uCNnCDtazqbCOjKxxNpWs9jgd3
	 WpUqCFJ5gTgvg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 57858ECAAD5
	for <ddprobe@lists.linux.dev>; Fri,  2 Sep 2022 11:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166211945334.7043.12354941535891192059.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c622ed3f8270b8459094fc5153b198822b91f28f766f1534fe6be78daaf70bc4
Date: Fri, 02 Sep 2022 11:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662119453
