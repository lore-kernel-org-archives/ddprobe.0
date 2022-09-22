Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D21627B
	for <ddprobe@lists.linux.dev>; Thu, 22 Sep 2022 23:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7B053C433D6
	for <ddprobe@lists.linux.dev>; Thu, 22 Sep 2022 23:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663890653;
	bh=8274C+XMPpzRZs/qDTlkmtlgEm5ojtJ9KRxXEss3tzU=;
	h=To:Subject:From:Date:From;
	b=MW4jyL54Efjuf46DSsov67u+vrip3uVQQYhUTF8WDeZgyVgoLSIRyz9lRGn4tgLqF
	 iQlHSm0AfIwUiAFgyQX6ALLWgbcxld/0sY6Fzbvbuy9e+N8POjjzHjtrRfClZ4NI/5
	 xQ6G1kIcDaAKWbH+hIV5UU2LkOJn77fpXBNaYLIg+cFgO9+e005FS31yDcy6kcAXzo
	 sCjg8ZGlH1E4A99aJbsSJIXUtLJ62JuvmxVepq/J6aApXjDjr/jO5SIk7nqF+95wqi
	 yVlcgs4J4cIwlg3fgcWyG8bUMCoHkW8h8o6P6vXFYPiKWDmOpjad9hcxNW2b8c69V4
	 OJiQqP946C74A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5D341ECAAD8
	for <ddprobe@lists.linux.dev>; Thu, 22 Sep 2022 23:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166389065336.10139.17607809061859973768.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: facc9194dbd320c2810c3af40659d13acb20de592bf75dfdf5cefe18720726c0
Date: Thu, 22 Sep 2022 23:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663890653
