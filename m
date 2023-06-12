Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 83B4CEC3
	for <ddprobe@lists.linux.dev>; Mon, 12 Jun 2023 02:53:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 00F9DC433EF
	for <ddprobe@lists.linux.dev>; Mon, 12 Jun 2023 02:53:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1686538386;
	bh=g86r60u1gC3AiNJbkOEQeBFl5t8ctY34Du/9xGJrXuM=;
	h=To:Subject:From:Date:From;
	b=ucmS2psqHlioEkJX+EwI70JgELAwnoF/c0TsuKc7PQFftUKkOiIg89+QRnYJPAW4z
	 I9NlpWvnijzRGgqdTS8XZZcJKT21GCn77h4Wg7QYvwjD85KrmhQhjID7CuHnneMqQ7
	 YjVSFT0PRXzs/pbudJoktHg7IdSeHLz/CVHDvYcoAV9DqP6YZsyPR9LIkSmwCk239k
	 Cyr7/9lUr+mnrvUfoQuCJzKEic80+hlj3xHV2Y2p+y+O2QJQVi8D9kzP8hZc5WyDCP
	 82vRMzkS4EaPJ6SC4ahdN/ikltxw5zjRfPg77uUij0LbtuTfYKUQhBaDvMfPP/5aPK
	 K6dywhdfvItnw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D4CEDC7EE23
	for <ddprobe@lists.linux.dev>; Mon, 12 Jun 2023 02:53:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168653838586.7419.6216760945010190769.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1d3000795bc16d2ba53a36031d7e1057df8efa0e15a26325f963f16779771a01
Date: Mon, 12 Jun 2023 02:53:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1686538385
