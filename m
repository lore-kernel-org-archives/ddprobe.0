Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1250819453
	for <ddprobe@lists.linux.dev>; Sun,  5 Nov 2023 23:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VF7LQW0k"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9A23DC433C8
	for <ddprobe@lists.linux.dev>; Sun,  5 Nov 2023 23:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1699226296;
	bh=MtvB78aBxU8QCFa3LOzbYyKtXGkNHg+n8b3S69nnA+c=;
	h=To:Subject:From:Date:From;
	b=VF7LQW0kVCBJ7d0TiMOQ09bprVnVL2R4wLeahkhz3tHVTXJLQZEMdyJbb1T4GrVnP
	 /RNQxNrBTIFMAQkKN4VkxQBIgQNf0UQsuhPeb26ep+HXBLZ6okbqO7UmxoOrlZkjVs
	 Dllylmi1RNyfmf6rI3K3mX7DUyirUIQO/zO2pVfhbDBBIQ7dVHk9rJoQl8k2K/ZUSK
	 cwJlbD9i2h2+84igfPJTYKz7hhesHvE3j0NFJEe3qqECg3vsjNk8d2y+/m0Yp3TG8r
	 cAYt781vpSu5xnhvYd5HXOD07Dq/CbRddtkpHIbdIb5Udv+LISg7miW5KSrHCTWb5q
	 u8X4SMiMdEevg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 72E48C4332F
	for <ddprobe@lists.linux.dev>; Sun,  5 Nov 2023 23:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169922629643.31213.8392017309743080342.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5086ee96f9ed81f077b91de4a5e016360f5d38035f1e4f3aa4ec7de898712350
Date: Sun, 05 Nov 2023 23:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1699226296
