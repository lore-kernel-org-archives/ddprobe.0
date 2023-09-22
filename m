Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 64BA42770A
	for <ddprobe@lists.linux.dev>; Fri, 22 Sep 2023 13:15:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D059EC433C7
	for <ddprobe@lists.linux.dev>; Fri, 22 Sep 2023 13:15:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695388508;
	bh=cPnIy/80J07zVYMKy2BdnFLHuQtK6yFj1NvtUGy0vwI=;
	h=To:Subject:From:Date:From;
	b=bcnTho7HAUwwr5g4gTxZdZ3xXvpzuO1XEbTmnNoyXCEukg88ieIGFZouIXhLb97tZ
	 K4Z/yvKl6oSSaGz6lA1DaDbiChDhnFwtwp2qKVw3ujKbJlfipC2XMLshPatUCuoVVv
	 rOTYoVJit1CTrMeo6pF2adn510HfXAvwe5XTRwmpkkJRn92BZImFbdwukNXqpSSQcg
	 V+ZlqpZSYK71mbqY+HjsR2MyVss8Og8113t2pV3p1VRl2HA4zdpzaodG0QEV3h9FEV
	 HNvy0jlT9s03OyeObZzxhyxclNtXk2/PgCnNVReHR2wHeqoDjLZw3yKBpNM2NMytxh
	 MYzJ6IxH6l1yA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADF2DE6FE27
	for <ddprobe@lists.linux.dev>; Fri, 22 Sep 2023 13:15:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169538850869.8652.8589515412861186638.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5a01124bb9b3e176001f754d321e100c5c4b15e48796cd7ff120f13ef78fddd0
Date: Fri, 22 Sep 2023 13:15:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1695388508
