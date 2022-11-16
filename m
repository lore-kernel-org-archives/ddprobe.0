Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D13017C
	for <ddprobe@lists.linux.dev>; Wed, 16 Nov 2022 10:40:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 79EB1C433C1
	for <ddprobe@lists.linux.dev>; Wed, 16 Nov 2022 10:40:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668595254;
	bh=PVrfyx8EPdNZvnJV/M/bJF/fK3wV6pkUffJpqfP/iUI=;
	h=To:Subject:From:Date:From;
	b=hDZXaWqRjCi3sWFD55k4sJ6WJKMyvptnBCmcpkjJ6cs8tYSsFygz0CueNXvHnfw3L
	 qV1EVeVfq88FMMi5YdLWWvNC0bQXLs1FgAf5C+gVD/UBISBQ48BD7rnCAObNUvdm6y
	 Xzqh9oZb6nyIYjRNSzFvwfeTh/nl878eAH8elR/G/X50ykG0wphi+X4mRhpvCT04BQ
	 YUZCRDK7haXyPmXrWBWzFq8oR5mKcb+A8oD8uPkDVI90DDVNoRXprdgtGm6C/4xqgw
	 L5zuLLCGUjhbsK9LwPNgz8A3P7z4gF0Ggm/dMgyQ+tjin8Hc4C9xtn//9sRo/AjwX7
	 t2BAPXMHp3trA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 58A85C43217
	for <ddprobe@lists.linux.dev>; Wed, 16 Nov 2022 10:40:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166859525435.6196.11729928121353965592.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 75997d06523391e221284517e3c8c2934c089b87c4da222036446ecf547fa33d
Date: Wed, 16 Nov 2022 10:40:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668595254
