Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6A447B64E
	for <ddprobe@lists.linux.dev>; Wed, 27 Sep 2023 05:35:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD3BCC433C7
	for <ddprobe@lists.linux.dev>; Wed, 27 Sep 2023 05:35:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695792908;
	bh=E6Mqi69I85HCOOJh/RjUU2Pew2awbgdf70cP9ar3Q2s=;
	h=To:Subject:From:Date:From;
	b=aoDJO0neN9gS6/nGepiVldbuhJUF/eY9YhLJkhwwsZMLKuu8XyWuPByriXACOIV9y
	 /jV4kc9BRzngOboPFFsTZPFoVEApSPObqbCh9BYtrl7KemISg/daVPJGzy0WOzoJQj
	 u58zvw1m7gVNEm2EifsemmyFX42zcjFpKRJ8pKKr5bH7rSdmjmBKCqmTEiR2Ry7nss
	 W5R49IbJMXZqPUAtYFzgJXGAQ9YF2+DGbniSRXbuQw6VvDyuT9m82zg4erAfEe/Hu6
	 b0MrRgJ/5f8bcpY08P6LTQKgfw1apgM0pofONW3KbhbmNLccaxWNBmABdmvFGpJBuk
	 jN96SBfJKyGOA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAC51E80A8B
	for <ddprobe@lists.linux.dev>; Wed, 27 Sep 2023 05:35:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169579290869.10966.16133627606890140469.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6df727dbb52e4df16a4bce5fb1c30874a6ef3f287119804a6cdd01529240aaca
Date: Wed, 27 Sep 2023 05:35:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1695792908
