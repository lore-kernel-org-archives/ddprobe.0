Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5F9103C30
	for <ddprobe@lists.linux.dev>; Tue, 14 Mar 2023 17:58:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 18800C433D2
	for <ddprobe@lists.linux.dev>; Tue, 14 Mar 2023 17:58:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1678816686;
	bh=zsesf1KrU4ag2NGHTNuQRwC0xpZD9yT4SwCgArAzozw=;
	h=To:Subject:From:Date:From;
	b=G8HcLCscOZu/sH2Kh7u7b+DKg2lXeQL9nzdwzQmjBsARsV0d9UF9WoHnQtIip0jOu
	 YHydZWc12KFyRiMNIOTpYVQyf9/s2ENI4Y/ppGY+W/+UIy6yMCaLCU0v2FWaISYXkq
	 feM29+khEteNU36mPQLUQYqQRdkxdyvM/W7EXa0zYI0iR8lj9tRal5/mYToi7LkWR/
	 WzpISVKq7aWdqMWKwlazQZ8ByixTc5OjjCz3QQ+WD7RDiVV0MzNag+bkpBE7wC1K+W
	 Fdv8+UpUM26T0tcl6/tbT7KzkVyvcNhqLz9uzaScQPr1M/8BFC0JJFfD0FNoxVtyEp
	 MtlO2WpOe2iDg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E7BEEC6FD1F
	for <ddprobe@lists.linux.dev>; Tue, 14 Mar 2023 17:58:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167881668593.13264.5068264338790552019.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 232bc52696ed4b6b7beac637b415974d0acfc0f5bbd1016f1572d6fbfe77af13
Date: Tue, 14 Mar 2023 17:58:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1678816685
