Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BDC6039E
	for <ddprobe@lists.linux.dev>; Mon, 28 Nov 2022 08:30:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 786D1C433C1
	for <ddprobe@lists.linux.dev>; Mon, 28 Nov 2022 08:30:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669624254;
	bh=BudJ9WHN8BpeXDqDnqG7/CfYXVeionjmtA1iB2aMIIk=;
	h=To:Subject:From:Date:From;
	b=NcX5rCAHUE3/Cjm/WoYaSe6OKwcG3XzMaRerglfglQXGCd519jnlh5zY7ni/jGAq0
	 QBy7mWqkyLQUXdH22z/oOKD28pCqiVkwA3LeZqOWuyoTX38sQ+ICsf1Q5KGt+y/sOG
	 NJmR2IOzRFjf2vLYotc4ioorNjAGcoINuaSjXvXdDOT9buTiOh20OdQBfpCPo8jzze
	 crW3SmYeQvJPv0zzKDjcqkKvdcvHTC9S54qHgPwspNBYeolov3vJ7kHM0G3giAva3l
	 hybH6tAzymzSK8lXYAjUQbKly37Jr8mXK0IKkXpE/yCFavRsx86uhDvAndb0Xjcu83
	 wZ+OMXVpXMfhA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5D7D3C433FE
	for <ddprobe@lists.linux.dev>; Mon, 28 Nov 2022 08:30:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166962425437.12661.15486950716402429933.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e7fa96ba08bcbf7b6a4f78039f75018f41d3fd968885dda3db5ec3368513597c
Date: Mon, 28 Nov 2022 08:30:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669624254
