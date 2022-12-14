Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CF8ED610D
	for <ddprobe@lists.linux.dev>; Wed, 14 Dec 2022 10:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 745A8C433D2
	for <ddprobe@lists.linux.dev>; Wed, 14 Dec 2022 10:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671012687;
	bh=cd2+lJTCRewKsHowbVCtt+bK+N5Z5WjnWxvTEXDZFU0=;
	h=To:Subject:From:Date:From;
	b=l5eN9Z+K/c/gMvODqmJPp78xwm3Zc5V/fkhko5B7fuoyNOJcWGyBRVg70B/i8znBZ
	 pKUoaXQbI4eMwx9EBXGjdGjekMVw/0yqrd8cQczaWGz0aPQEcRUOYAonASXHI+FsXJ
	 lXSmmCAC3eUYTj9Nv2CYGUpYSibRy9WKVuuxoqVONOP9MPoebd1SdSaYKoH4QDTXoO
	 TEni0CLh8kfvIOyI58RpXILFpbFNENGkWVCf3wvK/URmbFQ9EYKjd+IzUlla5mY2Ah
	 sMyXvSBVX9SQv/bdAuyq4W8cEb7lrpLFJAjHmsDZLs5R2j6k3O8+sPGj2aq5dHEPry
	 xDhn0luvIXkZA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5F3DDC4332F
	for <ddprobe@lists.linux.dev>; Wed, 14 Dec 2022 10:11:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167101268737.20903.12986810513073205969.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cd6dc874609a3934494d51d8e438ca8291b7c39ea7a40c968a298fad7950b2f5
Date: Wed, 14 Dec 2022 10:11:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671012687
