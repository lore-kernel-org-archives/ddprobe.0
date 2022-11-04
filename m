Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D260F2F3C
	for <ddprobe@lists.linux.dev>; Fri,  4 Nov 2022 22:30:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6B7D5C433C1
	for <ddprobe@lists.linux.dev>; Fri,  4 Nov 2022 22:30:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667601054;
	bh=O8zCe90+J2j/XU2QtfhonRiyg+2BSMjA9CPQq+2GGJ8=;
	h=To:Subject:From:Date:From;
	b=GfUasetbco97ilYqBlK0A24VDA3xP+vkBlGEb/CpZRNY4k3ukOyCvJub33F2Poop6
	 OeGN9qQtjGSdX5Wmc5oYr0pHyixlz8yJkSLzdXbiNe9bO6QKYtyTODWzvkzMqZhggZ
	 EQn31jOZ0AM+IPhqeAfm7V82WOMfKJCt5A3aN8WpXjjXhdZvqzIB5ZOPrIXCWNCs7k
	 iFrJXuIhDodwpOfM5t1uR+QP5v4Ud8QCmatZbsZsr7GhgyjWrTBPTXr8IDIP+HLsTt
	 H6sujbUSOmfUixVhMh37SI67/i9x1nea+7gzHznokYXWYEm5g9ViCJs+f+wMfM1eCo
	 TSqyqXXxJFx7A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 50E7FC433FE
	for <ddprobe@lists.linux.dev>; Fri,  4 Nov 2022 22:30:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166760105432.29321.2017325066423854978.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2c04743e20bbdaa030d6f53aa18fed7639d8a68dcd9e83aa636a14d843ef20a3
Date: Fri, 04 Nov 2022 22:30:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667601054
