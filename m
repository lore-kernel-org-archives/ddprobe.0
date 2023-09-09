Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 77FDE370
	for <ddprobe@lists.linux.dev>; Sat,  9 Sep 2023 07:04:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D233AC433C8
	for <ddprobe@lists.linux.dev>; Sat,  9 Sep 2023 07:04:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1694243048;
	bh=AjggxfoN092xs2Ie9qQ7QA4qSzTZSL1uHK08cXGXFuc=;
	h=To:Subject:From:Date:From;
	b=oMAgoyAS+p4tReutkLONT4zuDd7CmgZ/RHimdbSwdeQJC5TGLfVaI3le6nkXsRWQf
	 OKm4NBRjHAvxbiXckK4ik0ZmPnzXxPJRT2b/CQ3sPlKVnQoXTElcqLybPllij7/6Mi
	 PAVu4P4B1I+9amwpAaWq7yHjObDOzysPFr/LJ6ycmD9Qlw5RGVzEQpJfR1PyyhCRYN
	 ABQA1Y7tzE2g8u+qx7sZTQcu1ZnIERUsoyWHncL6b40L/KoRkNHURFVQS7G2dCAZyR
	 EhBOX58fxiBTsxh8ZEhmlvRHiuBDeVotZHTekwduW0gC5Dwev5PHGqFhC95Us8R7/M
	 NN9PfW+pFiR0w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B3C3FEEB57F
	for <ddprobe@lists.linux.dev>; Sat,  9 Sep 2023 07:04:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169424304871.16992.5725789152723800048.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 342bece795a683f505ed71f8225ff9350698c123138057454305f0b31af7f566
Date: Sat, 09 Sep 2023 07:04:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1694243048
