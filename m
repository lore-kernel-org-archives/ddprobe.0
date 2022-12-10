Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F0D697E0
	for <ddprobe@lists.linux.dev>; Sat, 10 Dec 2022 06:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8D705C433D2
	for <ddprobe@lists.linux.dev>; Sat, 10 Dec 2022 06:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670654487;
	bh=0QWd6PF5ejrqmiaKAcAg+zg+0eSZQQFMn9FaLHqIYto=;
	h=To:Subject:From:Date:From;
	b=ACdEnzS5IEDgxVaO5lcmzfetLsGO8S8BILrukAI6hmZ5UXUSpVfMzs7vxQgvqAxo+
	 l6ETSFUsk8fCZs7o4lYTRGVoHPwyrvZnfMC/TOeTsvChGdH75/t6FG+J3vq5gj8rn6
	 KH4LGeV0KxYEkLVYewJf7+SBYp1EXVj+ZSleOVWDeA5bXe3JC7xZ/pNOpknB0D9OCv
	 DLsQSDT2DVWQBxPMAKEICBCp/aHQUO31ipJLjD+Q5PqreEr0mJ6fN3/IJQhre524kC
	 y+Sgb2aNv5HuOfiT178CwVpCBqIA6bp1JJVSm6PxeHdCKTvSoUtMFkXYrJxo6dsq9A
	 P/WcEWf5u8cfA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6FB4DC4332F
	for <ddprobe@lists.linux.dev>; Sat, 10 Dec 2022 06:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167065448743.12326.12472193935482301545.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: be69bea133d95e3fe555793e18a71a80156ce005dea6d6c6f1abcc006faef206
Date: Sat, 10 Dec 2022 06:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670654487
