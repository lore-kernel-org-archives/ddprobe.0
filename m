Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CA2B54C74
	for <ddprobe@lists.linux.dev>; Fri, 26 Aug 2022 20:00:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 70442C433D6
	for <ddprobe@lists.linux.dev>; Fri, 26 Aug 2022 20:00:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661544052;
	bh=HH9YH/0fg7bogkOcA4VT7lmgubB+06cCKVt6r2CaMIk=;
	h=To:Subject:From:Date:From;
	b=Bz9qHOn+Cix0Sy2n6wD0UKvlaooSpR3xZHrrxX3+UZqItX+dVyp7dexznysPm/Tfv
	 SL7cDnHkc8oBpI7q2DRzZ6Hbi2x0cwUPLVlmUhI+udwyzypbYBkle/oCUp/VTbnSzS
	 Jn3hPnaO/RcnMwK9SkEe4UqlOBIWRvICTlUj04QTGRkzetAB2plxRnCjZPZn+vSSJ2
	 AZTisoj0fcIT5IBvs7qZIuD9bbp4g9Koj1wp2ybYO2Vi2R2coxHIKLGyj/BVmcOjNO
	 fhhE8Qm4csakmTXq6UgAhknRdAW1Edd4Kqb1RqdYZ+3rhE5fwr/bYZPp3m3VBQL8kZ
	 bUBdZlekkC8gQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 523C5ECAAD6
	for <ddprobe@lists.linux.dev>; Fri, 26 Aug 2022 20:00:52 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166154405232.21879.9483746273813309775.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c5db1d7eea282620e0fb4db4e7ee96256e3de3319342c82e7e0e90a64e9cc004
Date: Fri, 26 Aug 2022 20:00:52 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661544052
