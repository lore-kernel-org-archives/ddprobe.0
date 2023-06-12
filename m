Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7EF3A17CE
	for <ddprobe@lists.linux.dev>; Mon, 12 Jun 2023 04:13:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 0AF3EC433EF
	for <ddprobe@lists.linux.dev>; Mon, 12 Jun 2023 04:13:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1686543186;
	bh=TlZRU7Eza0+rKVBLotCIkrdEpLERbBKX1RubeaRwJ+E=;
	h=To:Subject:From:Date:From;
	b=X5jQf2k7e6Lx9B+JuipKwBYarvuQDiBQ9FgvGHyj1jtI8G2C7gnbHeL8JEx8O2lLW
	 /K1WYbhdpYohhnbL4GA0wKWT+032FNrc4pKhW+5QN7SerFMX6YLD8v/Spb3fDdo7mo
	 bAi1mv9quNYXkzM/fYRKrdNw2JVEQ/hzfYxAcALJnxuBhLX5XljJ8+1fPqocs46CVY
	 Pcajc3YnB/PKP8hZdFSL7ORkbIG7M3nEj3fknflp5h2wzFkM8OMLfulSEVAqae4tc9
	 Z0im/oWZfJxG4j0Hb6R1ot5hjFIkfToywDxx6J93sRJsj8tbt/obhkpR04qAaAugRr
	 wYMoZjVZILnbw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BDD36C7EE25
	for <ddprobe@lists.linux.dev>; Mon, 12 Jun 2023 04:13:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168654318575.12744.7477399829370885284.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 95b8b3f95c9fb65295f3005a58e0c04c78f1f0db3acf973cd5d51caf2ac8b840
Date: Mon, 12 Jun 2023 04:13:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1686543185
