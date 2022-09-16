Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B97135C81
	for <ddprobe@lists.linux.dev>; Fri, 16 Sep 2022 15:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 70DA8C433D6
	for <ddprobe@lists.linux.dev>; Fri, 16 Sep 2022 15:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663340453;
	bh=QfcZPmu1E/3+GyyGpzqAgQvaZqau4Wn0SSl8Wux2rrM=;
	h=To:Subject:From:Date:From;
	b=Zl7kEDW5oT+nyqxBCFnfUNZDaJZX2rKjrcUvhXhZLJYsRLxBPD6mv2OnB5KTYTXpo
	 qjipu59tta/l8a24NC39ZUkLQRF9J4QzscqqYnojxGelaez/43CQz2e2HuzOFj3mDA
	 6bOFw92a1Bx+zTMzrSlBo4g5ByprcTeIiR6Nv3xi5veQF4IWm1gabCI/lwMuh0HfWs
	 BbT/Kqmc6DINL+kM0kDmwOcy7kSl25OKdT+3eqohz7ubq5kRp9liURlDxbwoIZ0qU3
	 yOG0Q18kQj48Q+JXyKgC6JkK4nObkHfExKMznAzKEHdu8GxIL1/G8IVrc9t/NBWEMg
	 oOqP7vItKpjFQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 57EE8ECAAD8
	for <ddprobe@lists.linux.dev>; Fri, 16 Sep 2022 15:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166334045335.9605.4004129417528817191.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8747596229d65d963abb579c4c470be72bc20fa2e4a4386a2ada2a71f3cdc6a2
Date: Fri, 16 Sep 2022 15:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663340453
