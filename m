Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D4B211365
	for <ddprobe@lists.linux.dev>; Tue, 20 Dec 2022 23:31:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7BE9CC433D2
	for <ddprobe@lists.linux.dev>; Tue, 20 Dec 2022 23:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671579087;
	bh=J7oH5H2NLcBsFQUIiWvrPdKuMnRDZS4Z56FiyKX/yxw=;
	h=To:Subject:From:Date:From;
	b=Lg+ODH8WM7nQXRCKFK5FzMDDJclsv2VfMMZsQHEH0nsNKEHbqjOilPFzIi4qfmQFt
	 NyBj9t5Mp5aOp2D8sZVk0rg5uD8RFqe7jW48y0f4nzNRD5wq4yjnTFWGf4KCAVcvBW
	 HIIIi0UOqBxlmMVh4s5xHp/BavXFsXWkPhvrKJcopcafsMKXGhIwJFe9WR4ivU78SZ
	 6gleTmcxpdKlxO8pqTTCla3Mmkce5OOuVIBP/wan+bg0LWVNzfIAn/XOst6KniJlQB
	 Y7Occi6DFBZWmDmD7oxAIBOxld26HoBX12lJ1qu6djnl1DTu8LUbj+h3F9LsMi33Jh
	 YB3x8YgXMtmAw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5F628C4332F
	for <ddprobe@lists.linux.dev>; Tue, 20 Dec 2022 23:31:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167157908738.22727.4236958074117242091.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 08ee3b00c3ab0f4d707f50fa7f49a228c9c19b79a0f62c889fa1027a60b7fb14
Date: Tue, 20 Dec 2022 23:31:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671579087
