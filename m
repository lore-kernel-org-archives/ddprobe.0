Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D42A344C82
	for <ddprobe@lists.linux.dev>; Thu,  7 Dec 2023 15:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Odwad81A"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 787DEC433C7
	for <ddprobe@lists.linux.dev>; Thu,  7 Dec 2023 15:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1701964696;
	bh=BMCKZS5nxxeuHJBFU4t2dYreQRzqUFjGujwmkmXzUnk=;
	h=To:Subject:From:Date:From;
	b=Odwad81AXYTkom/CnkEpZRJozHgUwlfK8v1M0oEfLdlJyPEy4bR3UY3YaLOzXUlZB
	 SXhppWJuUu7bjk2UEriGCGTgLspdQgb59Ec6fY8Db3sQgqTJ5o1o+3UXCfiU8C/5sX
	 0TpJgmHSjVsTbvhCiXDn3owDjaa4IBAIgSYRnWkSelqycAGjkIcSw73UpbyzTTSGs4
	 dHz9eAY/Z9m0KjDOKY7kd4dx37lNG7mPcaxm5EW+E6B7zAuLAAd+oBoWWbOotViEga
	 eHvCYGb61tGMh8Aw+0I7jhlc65P0SmQ4RccZN561BJySv9nr8CqjAaSXGLxCGaxWa4
	 yXUDqc/DZTrWw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5D4D9C4167B
	for <ddprobe@lists.linux.dev>; Thu,  7 Dec 2023 15:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170196469637.24962.13615784430196538232.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6cb8b3a482bc18f308d9f5951505213057ce7ccc94590ff026877602e33571c9
Date: Thu, 07 Dec 2023 15:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1701964696
