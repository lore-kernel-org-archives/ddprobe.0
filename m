Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CC6722C80
	for <ddprobe@lists.linux.dev>; Sat, 22 Oct 2022 19:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7A977C433D6
	for <ddprobe@lists.linux.dev>; Sat, 22 Oct 2022 19:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666465853;
	bh=2hQHI+zsYnfoMpN2raJ2jUUyRpWDkdYeXsJwCeU4FM8=;
	h=To:Subject:From:Date:From;
	b=UY697XA0L2V6Y5XdM2POSYX4/NeY3Nz70yzYVbyM2T3fyRJgF91Ha0avg81YXZ4Np
	 RJZ/OaXC4DjNA7vz3xoHZ3VxVROhWVXDOHcew/uTc+aZifd6i4SpyVWwhgeewsJ6BN
	 Doi5fRkn8dFiWIjkKnTfMbDuYoSblIkyOytopy2r/2EPROp/KSlSW1HyTjsgqTXG6m
	 FC54ONV9rDwH41PRltMsBavP+3YRq/PoiylO80xhKBiblHaSsT5ZlqLWu5UxqmkAOt
	 dXPF+aLsQHNzzrmn8MuWVQPsQkJTVLiOUr0R9YuEeHD7rPqmFVsWqnlu0AOh1tsQsr
	 1nNSdy1PmGlPQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5BDD0C04A95
	for <ddprobe@lists.linux.dev>; Sat, 22 Oct 2022 19:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166646585335.26512.12580142921321434291.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 824d5c34c6c539cc7a7bf4d288ea41fdcd8c06184674ce5e71c71c71ffab8263
Date: Sat, 22 Oct 2022 19:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666465853
