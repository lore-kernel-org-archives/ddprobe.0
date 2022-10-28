Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B67A77B
	for <ddprobe@lists.linux.dev>; Fri, 28 Oct 2022 05:20:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 71416C433D6
	for <ddprobe@lists.linux.dev>; Fri, 28 Oct 2022 05:20:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666934454;
	bh=aGK57hVpL1SfS/I4CnyI+ZbR9KdXVC2NEU5BzKyWxd4=;
	h=To:Subject:From:Date:From;
	b=l56VDvHvkOPkLlnCfEiJuo4m0bmcv9YNdLxSLzMC7wCpLWg9ieko5d5pDid0oSf4v
	 7m9NqTn37fQOIhXMOT+uCUbk9MGRi4mQftqODcQfxX5vnxwU4m7fWRdLCijliLlxWR
	 Wu/6UncH8O0Md5PU8hG1y+8E9XxiY7EhxcSP18LbVDG4WkOlywosvQM8RpGc3o3t2v
	 J4iPDvbSBPSF78tiKW0zgpu4TRFeqivuQXZLelvG7aVlFDipAQXeajTHUxO8Tv4bPn
	 NOsXcNdCxUqqiJlznFziNnkNUPQDcrxzr0SrUw58JTXBwUrzQ84ZToEB42iZ8ZBiDm
	 4lsT2oZLir/IA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 583DEECAAA1
	for <ddprobe@lists.linux.dev>; Fri, 28 Oct 2022 05:20:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166693445435.5438.10929978813344208823.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9d9196b76ef4bdd2fd8e5bd58a6a290b8de4f03224b1c84ca14349d0020fc75a
Date: Fri, 28 Oct 2022 05:20:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666934454
