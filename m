Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C34657F
	for <ddprobe@lists.linux.dev>; Sun, 11 Sep 2022 19:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 691DBC433D7
	for <ddprobe@lists.linux.dev>; Sun, 11 Sep 2022 19:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662925253;
	bh=74F1/LM0X01mQFKq8PFkdlYA7Z5+rfP8O+c0JOupqrs=;
	h=To:Subject:From:Date:From;
	b=IrCVQj9HGzWHb6bHmFx9lyaBJ4NZV3SJjKPBbwfeJ0x5k6YPH0Oa0F3o+tBB91mzt
	 ctRSWriMllOt9IGdLb9tcad8LLhYDwUY8AXeNmvzAc9rWp/m2YPppFT/AMCHdvwARz
	 +IXi+NklC/DT1CatDLGnmcQlaAOc7ofysuOmCVZDZYII6sU1/f7an9AaKFTXfEmbPw
	 VXczJTK1Em6c4GuLZ7cC5z9rhGYU0RK+IXLqgLHLfCH6UpP30DrtdC+Lm7ycD2DcAn
	 teUMc9vLODSyXOHFY7JjJWZ+ls2o6Wa0QExCD4fSVjpCaRetqVgjfGdXrzsFAv0M2f
	 II8SYoOvbv0YQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4E572C6FA83
	for <ddprobe@lists.linux.dev>; Sun, 11 Sep 2022 19:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166292525331.26715.12433766263986077630.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d3ede973d9751a24677500c55e28078ac171e7924050cf7a85e967cdcd48955b
Date: Sun, 11 Sep 2022 19:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662925253
