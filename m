Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BF4F738D
	for <ddprobe@lists.linux.dev>; Tue, 30 Aug 2022 12:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6F43CC433D7
	for <ddprobe@lists.linux.dev>; Tue, 30 Aug 2022 12:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661862653;
	bh=tbqm+7z+3oLrGeUK4G6868LeRcASPC4sVBF1MLfBLOg=;
	h=To:Subject:From:Date:From;
	b=DssFqS8/dz0hTTHsOxnKITUqNEmyJShUdAj6Ij3gkc4A6IDN7QUke7j6gw0JNPMVA
	 bLC+ruX4e13z5c6fbB1KYQmTskv2/bm+zbIwvxqs1vBvCrsdB7WlzDSWuxelh/72TV
	 1OdQsTnnte4MvAZaMksZnBdM70gxsRaesFg8RrKbtp/fLUbtiLqxDo6ZjyBuWDKfjB
	 ZRl6Zguc4MG63oo2sddiRWxAWNDgruqYzQrhkQss+2XhfCyP4VqxEF46h7IlvwsWuc
	 OrXRs3AjBbF35fZyEw3eMQmVrjzqJZPXraOrpWCZFf0hRhNwsmAfag8LLpD4YWlKCA
	 W8bi0YsG5dS+g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 534B5ECAAD4
	for <ddprobe@lists.linux.dev>; Tue, 30 Aug 2022 12:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166186265333.31826.4420591627081647899.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8e9a512fa52895d48e40636a15cafbe05e670d8ba8e86195397778b447b051c7
Date: Tue, 30 Aug 2022 12:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661862653
