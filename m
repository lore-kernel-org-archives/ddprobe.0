Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CB881DA2B
	for <ddprobe@lists.linux.dev>; Thu,  2 Nov 2023 17:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="schYOQp/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 90865C433CD
	for <ddprobe@lists.linux.dev>; Thu,  2 Nov 2023 17:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1698944896;
	bh=fsyFpx+RRApy9sV/mtZzuM9bzC3vndq8pGQUzpbFugs=;
	h=To:Subject:From:Date:From;
	b=schYOQp/YYeDAUn19HtlFFFQXxJxyWqPKoJMNiSGbESZkoSVZleEZSasCOmjSWYJc
	 RgQ1fjD2EDGIKqKknV5eEHQqsYIGdZB/kNVDy4kjXkZ4ViQCy9X5zBYL8VDtt2sTEA
	 UHpOJNm79ZqpxTxKrdbBB/Fl6XFbzpuIPgM5kW1rrZS8Xqn9YG6IewForySiTNZYr8
	 gj+/p0toMe/MDK887KO3qTT/ST3Y7GITSIw9cGM9xw+wGJVKaANH3Yov6hRLOEUiVN
	 2OX5gxUja1OGPidHfX8y+XQhUJCX5fsapT193u8TTzbtELOJZaGUSdC4fmEkQkDVO2
	 lF2qEBeXOP0gg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 670BDC4167B
	for <ddprobe@lists.linux.dev>; Thu,  2 Nov 2023 17:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169894489641.28322.12480707184909122363.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 379a0c85ede6eda6b36ad47ff8fd646ebeec5e1a4adee37dc635a08927fdaf18
Date: Thu, 02 Nov 2023 17:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1698944896
