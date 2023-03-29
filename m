Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3FB2863D2
	for <ddprobe@lists.linux.dev>; Wed, 29 Mar 2023 18:17:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5329C433EF
	for <ddprobe@lists.linux.dev>; Wed, 29 Mar 2023 18:17:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1680113825;
	bh=4i7fstb7UVy1ma2I+dBDT/F+DquFf1QSLKVs9e02m/w=;
	h=To:Subject:From:Date:From;
	b=Hx0zvZAkf5LS2jVvlwOLJ6MuVZ3Tgtkg7UkrzwKBxRF/ffC19ylrHP8GTQElv1G8z
	 Qd83DMn2Q39UwPklezgKz7aTDKR6KdBvShhO0Xhd66Sdd0O29nsu9444Hwd3IRxhha
	 /xnWFSEPN5IPV0e4ryS6ICAUPL7faC8IRe2vqNr/xQP+wf4nNKzIsemnnnZ3Q23hxX
	 2sx9Bh9gBjf5tikRFXjkKNuU3b03SsnqcDK7eIZrHVPB50wGZuSfbXUjlZHS+5dMvy
	 2GyV/7OSe9Bl1Q68QMTaggOmHtK6/bxZuGFFLWlZZZ+44UHPfYjVxOp/6ZK7jmSTUd
	 Itzsv8F7qndNQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B5C80C6FD18
	for <ddprobe@lists.linux.dev>; Wed, 29 Mar 2023 18:17:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168011382573.8478.448338869388509814.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: da7c52dd4c730403f01d7fda6e4f9f0c951cbf59693e484786d429be8d0c82ce
Date: Wed, 29 Mar 2023 18:17:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1680113825
