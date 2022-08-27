Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C0D5D15CE
	for <ddprobe@lists.linux.dev>; Sat, 27 Aug 2022 23:20:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6DD7BC433C1
	for <ddprobe@lists.linux.dev>; Sat, 27 Aug 2022 23:20:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661642452;
	bh=lGL+AIt2nCwvdhIfQ3GWTuzjzNR51Dt+2lggw3k3k0o=;
	h=To:Subject:From:Date:From;
	b=pjM04OWiqqwt5N6kbYMWAh7YGUVVndXa7bMGepkUxc5EScNLLxAKT1+5IwIwux9Rs
	 0EJeJVke+kV91lpJnN2hgSrTL/WMA/uCR4SmbnRQHe5Kx6d/NIHI+Jc1L9Da7fPp/o
	 WONGWSLLuOx0BbJfs2d516hU93yzkyaYxJ7jijdhWG5JX5COlHdqSIuQsjbRmtjnNL
	 OErWd7+RHrp71Zim7mNogrwW3tH8+AGfl3t2BNnHxp6h3ab5dhbpGarG6erw0MG5d9
	 pcjIalxMJKVzN02f+8jVYpIvoUWOuf6MYbIfkgoFumZtPD6L71pDXidRnoOYw6U4Eq
	 ZA3d0TJz8TrlA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 541A6C0502A
	for <ddprobe@lists.linux.dev>; Sat, 27 Aug 2022 23:20:52 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166164245233.31425.17164040802571341923.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c8290ac5a7a16ee478ee8a1e958bd1af11728b9f305a89f360b0b5e80a1cfe95
Date: Sat, 27 Aug 2022 23:20:52 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661642452
