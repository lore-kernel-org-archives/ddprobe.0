Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C8BA06ABD
	for <ddprobe@lists.linux.dev>; Sat, 24 Dec 2022 21:21:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7EFDEC433EF
	for <ddprobe@lists.linux.dev>; Sat, 24 Dec 2022 21:21:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671916887;
	bh=1a2lhEYiGuw9R9buPIZqPVIl30qvrIgWn6vKUQpGCC8=;
	h=To:Subject:From:Date:From;
	b=Nj9Jzi1jvn4VLRqkTSq1cQnUEbMyFaYykmF+ZjrJ3jcmv+oerB6xX7S/0cgfQYmtv
	 df/j1x9XUTG6zBDDeCXHqRByj+qbpowm8OGIAD71K5Fbl3B+I5TQu44WQ9hNkjobkT
	 1g78Pp6XmrVPaFc5UVVuMKFesp+lL0xOKh0mwrHRVWIUY06p/bac9sGm0zy3Zvwqtd
	 xguwQZVhJLzGQolULqI/6tIW0W8hLBF10obQFpDs5CVI1dIzQkdNQnnmKlrAi15S+N
	 bHMQynDA6HQTUwySwmyAkp8Hsd5RSi5zWoq790MfCNgifp1/nvgwn3AXhv9HbqRCbd
	 c/IU0bBF3vSbw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5EA62C4332F
	for <ddprobe@lists.linux.dev>; Sat, 24 Dec 2022 21:21:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167191688738.18890.6157533001045226656.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 80a74654234aed24f0d42811a4ac888ff1a93bd0a2b5a2463d03f51f33312b83
Date: Sat, 24 Dec 2022 21:21:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671916887
