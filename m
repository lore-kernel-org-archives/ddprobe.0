Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1294920E0
	for <ddprobe@lists.linux.dev>; Thu, 15 Jun 2023 11:29:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E08B6C433C0
	for <ddprobe@lists.linux.dev>; Thu, 15 Jun 2023 11:29:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1686828548;
	bh=Gg+CEmLozFngsi/pJJpehIjt5bYf/zF+HLY6ylENjwg=;
	h=To:Subject:From:Date:From;
	b=mYO3UiwS9O09vlKuHWSNZBeaDk0cJJQ9JRkMtyeASsi13LUDmX45Z8FtZUpiXUooS
	 4nNUN+VEsB5viHLILhj80vGgZgzVXUo1tECCFE6KU36nE+uHdE6sVKMlhEPCufL2Ok
	 Gzxx/Ox+FdZCCJXNfXg5jr2tmrh+mycEirtUM7PGopcRU52u0TwLi6Cb9+bMqIS9HA
	 4GY3MJqPeo99GWw2dtEjUdO48y+f24VRVGFzddj75uXajAAJKR3Q28IySnUTFDgcVU
	 KVmlpBzjpSM1GWTLWMR5lhF+bbxeUO7yBoI6d3Oyn6gFJ7IofpNQaBGRlQq0HpOkS/
	 mrvzpNXuLPz2Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B91D8EB64D9
	for <ddprobe@lists.linux.dev>; Thu, 15 Jun 2023 11:29:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168682854874.26015.7057761334566283665.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d9ccc4c4b7d5630077643195710f5ad528b7a3c636648d1d26e6dc14cb40c180
Date: Thu, 15 Jun 2023 11:29:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1686828548
