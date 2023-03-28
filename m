Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3EE4C7E6
	for <ddprobe@lists.linux.dev>; Tue, 28 Mar 2023 01:53:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E6824C433AA
	for <ddprobe@lists.linux.dev>; Tue, 28 Mar 2023 01:53:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1679968385;
	bh=TXi0NnTHoiHXrxvDnrO8AgCxXuzUdetfNxZMpN0a7e8=;
	h=To:Subject:From:Date:From;
	b=GITgGi5zlsvUJv3xONW/RFItjH6z3F3azAhH1CKCXOrpGnQXQ3scbyI/RCzmNI71E
	 r82azFF5vYDASN/HFtCVpdIvdLkeMNo51mLbx8S0hQKPpp1f/Sl3+Ik0mLieUJps6m
	 apuK0LzAqGwNrpcqr+yDvgJDAaW749gAM63gGRoAI6NsXy1I4tTBdEjzZ9uEgJX0Ul
	 7+guRR6C6DjT5f56njGG2V3EPQ2ExiszkdXSKKbTSYrWVchpLKLMi+d1naaFRxZjAs
	 nydGDzOF70JREwZxrvOAF+mli0Lx0aaXFE5tzvfpU6IXb3NH28RkqTkV4YgTLuqUTa
	 978mgev+KAO9Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C025FC6FD1D
	for <ddprobe@lists.linux.dev>; Tue, 28 Mar 2023 01:53:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167996838577.18379.17534771773427301547.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8d9781bfbd104f155f6822448b751c99b6d890fc5b5064fadea0c37692724e90
Date: Tue, 28 Mar 2023 01:53:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1679968385
