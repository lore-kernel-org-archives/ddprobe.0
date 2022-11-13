Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C2C7A6FDF
	for <ddprobe@lists.linux.dev>; Sun, 13 Nov 2022 22:20:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 68978C433C1
	for <ddprobe@lists.linux.dev>; Sun, 13 Nov 2022 22:20:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668378054;
	bh=y+Zk9d3ABDEzPbdzGAlgo9gA+c3gpN7sw1aD1CcbmxU=;
	h=To:Subject:From:Date:From;
	b=jHLZg7FsyGcM9y94OdlwJC6/9esp1hCn7UW2S8cQcppiDLxdTb82cNlB7W6JKFgZg
	 W5p5RVHZDUdBlmdQ/J+SCdqgCjyDDVtV01/B6RO04LwEEgSyD4LTbdndm7MgTM0Wnk
	 Psmke/I4LivKzPIRfbERR+YcGcMlA/HCFG8787P85ZpDWzSMnSqNwl61cdj0rLrK+1
	 8kq3xA/ao/twSja75vWKRFHWU0PNNyCGqO+ghkUe09PplsfDNgovAyq9PF134EYgO6
	 noUMLT+OPQzdPEJdkQ2BxU48svwUXszXvIMGQqaYGT4AlSEZ1t5Uv5uYwpCwZJYu0v
	 sK8PFrxqB1SmA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4F149C433FE
	for <ddprobe@lists.linux.dev>; Sun, 13 Nov 2022 22:20:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166837805431.17357.16047799146143262941.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c32a55a6412c003e901c5ee3e344fc24608d2f12b26ff6b1cc816e00d5c662f0
Date: Sun, 13 Nov 2022 22:20:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668378054
