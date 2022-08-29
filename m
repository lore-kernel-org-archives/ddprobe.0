Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B6B757C
	for <ddprobe@lists.linux.dev>; Mon, 29 Aug 2022 11:40:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6F172C433C1
	for <ddprobe@lists.linux.dev>; Mon, 29 Aug 2022 11:40:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661773252;
	bh=l0w1N58gFDeggxyyqgURkoksqwoT+gDDhgxlDv8N2wU=;
	h=To:Subject:From:Date:From;
	b=dfe9hXOv0+RXPBCbXtDJ0A7RWsgQJ7fj/O82hbiOT36s/jUK3z8Y36VQq+qwxVyXq
	 QIVtPnfWmJiK7uqSar5zG8zJ45c6q4iaJMHOJND5bAB5LhQl89WNGWo717Nf80JJVU
	 3y7MCfTIGVSKnCVdZRuEeI99LT903i0fTbyjamQC7HspE8v2xd1vYeKE+x09lv1Gn/
	 R+24SRiloEtzYMD+Qgo2O8sVGNo5unJKmKWBp3H0EZh5PHrwNZoBFC1qpOnLAlZyxq
	 TDObvcAgn9xYrR4deLyyKKo3wug3Y4eSHz/m81/E+uYkKckeMoF6Y708MB6nRxpvKS
	 yiBpx46wOzDAw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5792AECAAD2
	for <ddprobe@lists.linux.dev>; Mon, 29 Aug 2022 11:40:52 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166177325235.19848.8803828720330369774.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b2ae5d7f64a6a1ee06862e06ab73936f0fe227059f9c547278608820b57df000
Date: Mon, 29 Aug 2022 11:40:52 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661773252
