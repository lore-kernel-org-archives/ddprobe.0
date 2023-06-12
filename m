Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 75BA58BF8
	for <ddprobe@lists.linux.dev>; Mon, 12 Jun 2023 19:45:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E9B61C4339E
	for <ddprobe@lists.linux.dev>; Mon, 12 Jun 2023 19:45:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1686599105;
	bh=+rVWuKuufhq+T2vaWHbzMHSeE/zQgZ3tpCvICNrqGZE=;
	h=To:Subject:From:Date:From;
	b=UYyEa0HT8ymT1uYz9WQoXmumFYXmE7Fv4zxUTmWRiQrsCjdISGRSZ+Bd076xYyW+a
	 NRsaZjOxZuRVyAsmQx4INsWo6HmyJCusgv4nKTH6cnb9SlZ571L67vNjEopInJuXYe
	 MFh3RV61p0aQpYVUSTa5kP/lf4peILKCjgeZivgdUCx9J8S5wX8AfFQmzYCNvHqdS8
	 6I/2y3R8vrQdJZXMiHqZ4KR0v5Ai3gl07FjScF7J7xdxQzFUuE1mouTlln5Pt2RVqf
	 JjD+Zw5rH6JfGe07z7FZJw2VASei/DaPUPmSKAP/WtxT7k6ndX3Vyy0uEQRBW/3Vhk
	 gqhloePkZdczQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CC65BC88CB2
	for <ddprobe@lists.linux.dev>; Mon, 12 Jun 2023 19:45:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168659910581.20630.18087739828081149073.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f24bace9d36840028167c1a9f7cc6e7cda29b9fdf6f90af62f37da8c503dc5fb
Date: Mon, 12 Jun 2023 19:45:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1686599105
