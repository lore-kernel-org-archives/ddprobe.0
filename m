Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 923BB79C1
	for <ddprobe@lists.linux.dev>; Wed, 30 Nov 2022 18:50:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 60D09C433C1
	for <ddprobe@lists.linux.dev>; Wed, 30 Nov 2022 18:50:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669834254;
	bh=9nEi2Hn4HBKWjLGi3ptcoqY757cBooDXy85Lh7U5q6s=;
	h=To:Subject:From:Date:From;
	b=tFUZnt971FtQR2mpOI6eqpqD3zrgs+L7krYfZ7+hugaa7ibH1tUfcjZ2/VT0iCJqb
	 woCwxv3M7T+WC+gxVOsv6ZiUkZUALy07GuU8R8ZZx4f1LiQZE9sJ/S+L89ApzteYhr
	 gWcvUMyrHjhGHF9meaaiY2WfEQwN7gwrSe0+PHSPLmthkpmKKOaug+vSi/xEIgxT5m
	 DcfQiFzX65pT1z43fDiNxK2hKsJkcdVjehLOioQKU/Ua+jABxrOpTvrxpgjHFuI3AH
	 kbnv9R7iN9ilY/+sFg1EyxXrcH8+6ayHyCf3NBQjXpp+Y9z6R6JRVkPuRDXCTQMM7f
	 wMvM/hlxc5yow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4F67CC433FE
	for <ddprobe@lists.linux.dev>; Wed, 30 Nov 2022 18:50:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166983425431.31006.14758941348210560705.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: face3b9df5630631ff2b1dd3a38edcee54fff738314e433d1ebbdd2d5ece28bd
Date: Wed, 30 Nov 2022 18:50:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669834254
