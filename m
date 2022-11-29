Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D2CE97E0
	for <ddprobe@lists.linux.dev>; Tue, 29 Nov 2022 09:40:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 79231C433D6
	for <ddprobe@lists.linux.dev>; Tue, 29 Nov 2022 09:40:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669714854;
	bh=/YnKBfJ+qdOZK9KONtfx1uqiFcpPgtCu3D+7eExPaWs=;
	h=To:Subject:From:Date:From;
	b=iDWnf5A6qk6gyz6f7TUoMFuBAsvenVYgZsITkl0RQ9rlICPg4os8kGO3iJk8fWEK4
	 SHa+Suvl439nwfkeQXq+MWvII54+YTDrbzEdzqW5Wpra3A7fOIPcUSw0B6rbn+MIy2
	 coZcyUegpPk61040vdjNg8Pg49PWhNErY9PtHX3IEZjyuyFxgUKk/ktysGE14Sm4R8
	 M+ESNdlEOKw8ZCg7YyvPbesj7SVEpdVU3/4EGy0DtI09vMULOT24JqdZFRVSLGcvBl
	 d27JAyuT5jM3fwf/EuRrLxEOScmykBNT4xu8/dDn9lVkNqWZSbKvZyorMnQFa6ByZg
	 cGdVMAlaCJ6vQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 59F52C4332F
	for <ddprobe@lists.linux.dev>; Tue, 29 Nov 2022 09:40:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166971485435.17591.14803053060408070599.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ab0e9e90acbbefc229b1ffaa02c3cc409b26d1dc2dd3c0a6deaf14ed79b28bef
Date: Tue, 29 Nov 2022 09:40:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669714854
