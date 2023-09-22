Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6F943EB8
	for <ddprobe@lists.linux.dev>; Fri, 22 Sep 2023 04:05:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C4BCEC433C7
	for <ddprobe@lists.linux.dev>; Fri, 22 Sep 2023 04:05:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695355508;
	bh=7DrWz564SXOhb2TsVfJmnM20X3cCrBo1CGO0iab4Bcc=;
	h=To:Subject:From:Date:From;
	b=UrZ9gsk9dDjVGhPVmFAnzFq2qW9Eyc5MEsqLhW3UYtMX9YM1RrC/9KO/MziU83WZ1
	 i26VrJG4OFqSfnCCVlxGu+soMKzlJ9kdmIutpPGIww7uOlS6izx9vI8WG0rUylsCds
	 gtWXR5v8yJJqyOcRwfVSLpNkqWUz2/9Sljk1DHNF4kRhiEWcXONDQ1qVWHvo3Wmz8R
	 Mc/+JtlKVNlJi9AMMspju3hVRdoGkux2Rdl+lWk+97/2NB+7PrmsiB/Oe4miQ5l4ra
	 Xu7gVZ+WcP60B4r7i6gVPUl+FUP2tgbOD+yLBiAMSV6Ep563hHMxQ+s9+OVuw9XXjg
	 W09zjYgw3s5EA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A32D1E7D0C9
	for <ddprobe@lists.linux.dev>; Fri, 22 Sep 2023 04:05:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169535550866.1243.18228156745006098533.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 051d272d761e5e17783463511e6aa9d02c6b066e56ee853bf77bd89b0797bc1a
Date: Fri, 22 Sep 2023 04:05:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1695355508
