Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 323BEA954
	for <ddprobe@lists.linux.dev>; Mon,  3 Apr 2023 23:07:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DE7A9C433EF
	for <ddprobe@lists.linux.dev>; Mon,  3 Apr 2023 23:07:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1680563225;
	bh=FXYQkMI+GkFyCQDEyMotqo6JLuR4yk+b9TQTB6eFGJg=;
	h=To:Subject:From:Date:From;
	b=b8QzkEw5c9DHMfiKUjmtJWiyzhbfjN/bnnxIVVec0zsNTF1pFBvuXhH71klGpLplR
	 MNDDMfqKXWtVjW+DOgzlZoGrEj9og5rCw2xGz8RWvDIdUSktuIIuBGSn4+axIqzwlK
	 JPVwQXEXYK2o/o6nhN0gJViEak2jlSHGUriZFxi4VAZv1UQzw3ouF3mDebvl9Hc0PW
	 PHuKp5jwRnseo5NdBlEQreShd/pHs1ioNarSjqOQUs1DXJ9YcMMa+SGzhb+K42dEdk
	 1ECKtovwaQ1r/oFjNOXjHb8WTpagAlnCw5EWYkihTmh4o8lNGpaB8DMZt0NnHG6ull
	 78HzcMyYRRJRA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C3CD3C76188
	for <ddprobe@lists.linux.dev>; Mon,  3 Apr 2023 23:07:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168056322578.16891.15813353275017444214.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ec6bad48fdcffee91ddab386b4c7e6f81e0af8a5f92d48ed4d73c30c4378e445
Date: Mon, 03 Apr 2023 23:07:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1680563225
