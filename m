Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7D2C41377
	for <ddprobe@lists.linux.dev>; Sun, 26 Mar 2023 19:52:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 1C497C433EF
	for <ddprobe@lists.linux.dev>; Sun, 26 Mar 2023 19:52:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1679860326;
	bh=UovDDgtbMr9AfCNaz1a7SYFzjohbUN89IAH32+ttf+Y=;
	h=To:Subject:From:Date:From;
	b=cpQ59kkNEKDSw5Z6BjhVmgymF1OnqN0xJiO9IBEqmV3xJqGmbnPuzt4/52HAMYkhc
	 A5kf9c0iCjZc2vaMboGcvec84dxf9URaMgJVBsvlrr6kcnIuLqmNI/M0rmrWe+59vh
	 b0DjZA2LGWPzohOxgN9j2CdHL8Cxgam7n9Dc/Ty0O7VN0/5UorBfYLXNOWaMxZ+g3D
	 AQdvzDgWKdKgpR5bMMHRd6NIJ4/mPMB7XFvcbSzSB0ZU+2S5C7U9qaic8JedFcquew
	 9dbAmUtDphIESCM/3rVHVpwTmy6kRJkUm77ReJis6g3g5gf1vwWYDwBnGOH8/4Ow1I
	 YlXlkl/9+4tiw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id EB85EC74A5B
	for <ddprobe@lists.linux.dev>; Sun, 26 Mar 2023 19:52:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167986032595.21878.2002590287191400815.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e3c017e5f71f0a97b3281446426c1748e2360928d376b3c663ef12c4765fbcd3
Date: Sun, 26 Mar 2023 19:52:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1679860325
