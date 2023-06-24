Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 69EF93C3C
	for <ddprobe@lists.linux.dev>; Sat, 24 Jun 2023 19:23:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CBAD4C433C0
	for <ddprobe@lists.linux.dev>; Sat, 24 Jun 2023 19:23:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687634588;
	bh=PfUCMVwr4DxdDBm2bizVpy7eeaD4WXpXPtI2SjqW/0M=;
	h=To:Subject:From:Date:From;
	b=KVjagwrIZQ7ZY+zQP8MilfWW8BzX5ogLJe+r/c0BY83alOL8LN6gU7QE7D6p1O0WK
	 CdPh3gn8OeD4RGMX3aBmswumBOhfOzwMOgdfyX0K1dgjs3/AQOdBUbmv+tfRMJCYwY
	 LKstMkhpCF3I0sr1Xu4ITK4q1Ijr1h00bo3ylIeKTvmItUAfQPyUvTYIlGTzYXuMFz
	 JRPjNBvicMS+iVDnHmYgZ9W+rP0mTiaAUxqDrZngJV39n0cK8AsVsCrf1L1mzwhkVN
	 FvlJJSEmfAAI3g6A52MoBIN5xNWG1eKbL8l2wV8u4uIMfT5CMR7lMYZkG+A4I4ZDnA
	 Zj5WyUgHByufg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8E7FEB64DA
	for <ddprobe@lists.linux.dev>; Sat, 24 Jun 2023 19:23:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168763458867.2477.5923924142832755814.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 937c253d5bb4b1b671bf9c1843a4c6ff3d4c796e4bf0818c8a2631066b5bc0d3
Date: Sat, 24 Jun 2023 19:23:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687634588
