Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5AE6A1C39
	for <ddprobe@lists.linux.dev>; Wed, 30 Aug 2023 08:04:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E016EC433C7
	for <ddprobe@lists.linux.dev>; Wed, 30 Aug 2023 08:04:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1693382648;
	bh=gjIzF2ZNqFkBKkjUyL6huDXKEYJqSp4kee739hO/B6o=;
	h=To:Subject:From:Date:From;
	b=ujSMuKKZSl8HyTXxA8WsiWucW6F+WsSflRZKuUY2dCXwJxw1aCGAndQc5jsSPjXn6
	 yEGOvh1wOh8AIEgFtdZH+60EFiCabi/F/VQR0BLPHNB3Vraz9EWJpYbXD6stiISD8D
	 ehFkTgkAVIsn8tsLYeM6zOaf4kB8/TbX2ZvzH5FlMgaGI1gqZGJ5QgylpchZQByz7N
	 nyrIpqlLybBzk2O3WLURcYz3uzV2sSjO/VIQfPpc2tJfiVOTlsIts/qHT9i8EmnwaI
	 rMggPKBMjdVPjNI7VOQQyah3yr/pIQiovFH6jMe7U+mpXveyao8wpsMnScosTTiRcK
	 /+zaIITU6s5Hw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B48D6C6FA8F
	for <ddprobe@lists.linux.dev>; Wed, 30 Aug 2023 08:04:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169338264872.5560.10358428483064623972.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 22273433ac4c007d4f5bfc34eb728e4b9dbb0148c238004b7e1b5058e7bf449b
Date: Wed, 30 Aug 2023 08:04:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1693382648
