Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 04AB57E6
	for <ddprobe@lists.linux.dev>; Sun, 18 Dec 2022 12:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 82707C433EF
	for <ddprobe@lists.linux.dev>; Sun, 18 Dec 2022 12:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671367287;
	bh=Luv29JuEkhehRW9BVlrF4iWAqEf2/lHn5UneiiGCdT8=;
	h=To:Subject:From:Date:From;
	b=dWw0vf/8PQXtKRZNvX3zt0/frZDocu5xd3zOqksZ64v0AdyWRzc6/YIB+1Ejah21W
	 f4JZUat0DsbO5OyQVJ4bzLrySyRVEZqL11gxkxHH5yce7wiDniTMg5Hd5iy8YHWYEb
	 8FkVyzbGfQdwIv1aIAJlXYnTJKLJO6pVlMb8TMpeL9TXmK31lD5j5pEQwt0/wSLWrj
	 7yGTGFNULe2uvkO0Yf9/36LfIg5slQObcmw1p1QpedCysiTOVWnS5HqXBfbKM3ph9u
	 FSjqEOKiplMVcwJ/mIor759QjovA+fArSdD8YV3CnKrMnryZrFKvOecJNIjKLjCOX/
	 JV2Qd/Auy4eOg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6724BC4332F
	for <ddprobe@lists.linux.dev>; Sun, 18 Dec 2022 12:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167136728739.20524.13238440381492345386.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 233ca6f084e1678e45b8456c2d28fa57403503fdb1b0fa48cd62e31b07a75d01
Date: Sun, 18 Dec 2022 12:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671367287
