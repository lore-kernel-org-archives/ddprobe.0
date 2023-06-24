Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 641C7378
	for <ddprobe@lists.linux.dev>; Sat, 24 Jun 2023 01:23:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D947EC433C8
	for <ddprobe@lists.linux.dev>; Sat, 24 Jun 2023 01:23:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687569788;
	bh=O2me7Mmkb88ZwNKKTPh6DNGz0la/d3gw7Ecq6ahaQ78=;
	h=To:Subject:From:Date:From;
	b=buiNzVEgNceJbvQeQdCxLxx51gHOnXeUCyMOkxOL8k+H1yyCLk7g3MhSxb64ygz4k
	 TKfWoS/jIt3rV/kadYcKEMWUKX3//RM14/zUQT4HemANtn//ZXeP7H5dPEKeBz7KHi
	 /2rQtD6XnwpRF9oBFJxN9u52CxHpFvPAM6I7m6klwdgLj6w/TuYILlqNEfWJ/+3cQU
	 ghaYvuPUwiXe7U1pcMH6eb+oYAkAJeqAwIavadx6zPpwRLRkW12Se8uB7skqFqkEVf
	 3ZqvkvGnBwQrrMpmctQFXkbAD5Ety/CzfJY9uXRC16O+KYE3Sq+X3Mwkz8p86/BwEX
	 wCB1md2ugIzGA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B9405EB64D7
	for <ddprobe@lists.linux.dev>; Sat, 24 Jun 2023 01:23:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168756978871.23082.2033680975041804802.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5ea3374309ba1ed42ecfd26ad3586d0e30f33e727cccf1464dfaf018fb3ef001
Date: Sat, 24 Jun 2023 01:23:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687569788
