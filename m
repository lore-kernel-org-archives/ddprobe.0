Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 76F4E185D
	for <ddprobe@lists.linux.dev>; Fri, 30 Jun 2023 05:03:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DC13FC433C8
	for <ddprobe@lists.linux.dev>; Fri, 30 Jun 2023 05:03:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688101388;
	bh=yCzjFNCRNV9Q7ihYDYwaDbiLVY07IIezEc/PX2yHIwg=;
	h=To:Subject:From:Date:From;
	b=rnOnQ438vaYM9zATZUzyMff6WhXc0/gnexXrMu9gZP7SeeYM7aNJmZkznv8RYQpPF
	 hei0rF1vxt+lM/0muhDaHKiVUC+5np23dm2RTC4GEsAsObjJqmlAwjT7bRdVNtB7I+
	 rADdrPuTWV8CLh3Q6qlUySzrZbAfHujoPxbyJp7pddnJ4hittWZ5jvS/djSswSxjgy
	 BPXz2rJcNEC3qhm4jwNDFqZh++hEVYUBd5LXd1ZQfyWlZWyk6RcWIaOhrKY44RNjNT
	 fS1pxQFcyPmCOqA86liAtvePse0XxLy9fPWsjHj6YgwtuX8T/qw2fkSZpGDY5Cwj12
	 vGPB/DVftALGg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B6597EB64D7
	for <ddprobe@lists.linux.dev>; Fri, 30 Jun 2023 05:03:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168810138873.21878.4532114263315314205.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 44c8e0c14035dd1bafb4776fee590328bc3c5ea77bd3ea035512227ad2671120
Date: Fri, 30 Jun 2023 05:03:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688101388
