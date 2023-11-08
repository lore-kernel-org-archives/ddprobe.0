Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 02281D305
	for <ddprobe@lists.linux.dev>; Wed,  8 Nov 2023 07:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DYjL09Ti"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 80F25C433C8
	for <ddprobe@lists.linux.dev>; Wed,  8 Nov 2023 07:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1699429096;
	bh=mHO7YufVQgRow0VnZLwiDBvtRPTYzWWeTbQEJ9eNfqM=;
	h=To:Subject:From:Date:From;
	b=DYjL09Ti17PVEruHGGh/pucJcCAwHoeqGC2DCK/7DWfgfZ2fuwNko/s4ilkHShSB7
	 UvvxEWmZvP4Kax26cQF7IDEfv8297b7QqmPeBUndDZw+TQGR6CyFzs2mp1e6eXgZnT
	 MlA4whUfr/9sHnWcwaKNf53xYoS7zmyTgHVJedVMbwY2s7UQKVyRQu7NDHl3IA+Dwe
	 K9gN1hzUYfyYfCeShh1uH0r+5fjATeqzu17lCBnx03H7JJN5fZuNynO6HCcNbZ2/ft
	 P3ELCTfMhS766e7uYhm98YmzB+fUnl6NrH10qaSybSm7Sn2nFTP1nBSrl8kyK7SvIE
	 Ve8laIr+3LYjw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6CE34C4167D
	for <ddprobe@lists.linux.dev>; Wed,  8 Nov 2023 07:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169942909642.13696.6314427111588442703.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 492899265ccd900d190eca904dd9058a1630a41fcedca4074b30b62255c2b763
Date: Wed, 08 Nov 2023 07:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1699429096
