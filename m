Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 50E4EDDD3
	for <ddprobe@lists.linux.dev>; Sun, 24 Sep 2023 19:05:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CBC67C433C7
	for <ddprobe@lists.linux.dev>; Sun, 24 Sep 2023 19:05:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695582308;
	bh=qFLJo+2Qiwe4B081f78j+UBtDG+IBhOVPxF9lXdsH1U=;
	h=To:Subject:From:Date:From;
	b=roH+5nfhp6YFh35+RIA1HIxJ71mTzxVuXPCW0Bj6o99Y24cNwo6zu2zmmmYI79Hce
	 WJyYHIJ8VStlyZbiP6Z2iLFEcvegkEkF7Xn6Vl+avld1VBqrCHKe0K+BZ2RQ3TCocz
	 gc2T3+JgHxwQxGwHjyWi8slfOL2RNeY2msVKNlLYqjr6I+DBoq+PTd5k1VRs1dq1Rw
	 WOBMpzgoeX98zSfCciBjXcqiYC1a1LgMOMl8gteZxqYuItcKVFXqTTJ7eEZYSIYLIF
	 5jwD+z/sjDtiugezR/G78AAJ54sePkpvdIfmM+phhxgJcOAFiKJebY6nuzbjBAls0V
	 /0N9Jg+UKs5Yg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACDAECE7A8A
	for <ddprobe@lists.linux.dev>; Sun, 24 Sep 2023 19:05:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169558230869.6443.3962672747351043875.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a503aa537d78c378a0ff3b9521fa0f2ccb9f53dbbdfd243771a40384de796d94
Date: Sun, 24 Sep 2023 19:05:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1695582308
