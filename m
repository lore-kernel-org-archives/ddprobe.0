Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0753F29D29F
	for <ddprobe@lists.linux.dev>; Sun, 18 Jan 2026 22:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768774436; cv=none; b=Sf9vLMWnnKyRhEuF6G9/0bRmqqwfEJRo/uR3r058EaHij7JNy4qX9ev+imIG7fLJ6LyISB4YPSe+XurNkj+5zSwLTTFGgsYaksnuDq0p5HTonbIkMr3C1loaGYDf8SQuI65qoESvSn3zBSP7qv61TUJWWtbeOsFsALgeioh7yig=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768774436; c=relaxed/simple;
	bh=PXycY0ydCOUC6WSPvbHJ8NlXH/Ki9D2j5lZgn8snfNo=;
	h=To:Subject:From:Message-Id:Date; b=nTgzmAn0YHcO8uxuqZLqXt22nwNQxfRdIa17JMIYD794hl3qGq6eMiRkFpmYH1nkB7wC39n68XUdJyaD4j+o3ZH+I9/TbF21dmjQ4cjIISr64F9nH4SLYXNXhpnzMp9paXwm9eIXP2mGBqeaGaaAKKgDc9ZjWZJUen6rnrW3uSg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=t0B5KB6j; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="t0B5KB6j"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1C12C19425
	for <ddprobe@lists.linux.dev>; Sun, 18 Jan 2026 22:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768774433;
	bh=PXycY0ydCOUC6WSPvbHJ8NlXH/Ki9D2j5lZgn8snfNo=;
	h=To:Subject:From:Date:From;
	b=t0B5KB6juKL4T7YuZFic7FHYe4w9/Ik6YXB7Xad/eHS82peWCJNjyL9M+V31FAvpY
	 rC6Kxo20OMoLPTg69jTMOTozthJV+BQWZXBZkTgTuf/RPQwQH8qLfhvDrBj3t8LHK0
	 l4Qzxswhe4nLeTNtEA6IRl4bqgyxHJ+NY2ogcy+854pAGX94zsVURvqqQpKOdJmcee
	 hXZt0UxmCf7jV9Sl47rMg7dqQn1JjNpMjYRPBh7xXruav6dRIHt6LEr9ENXxHb/rox
	 W+F6jQycmb+ena6YQ68mQDKvZ7P5voPht4994EWWT4btBizEfFm9VyYvh8bkK07EhJ
	 UFX5+8SsWhtJw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F999C98315
	for <ddprobe@lists.linux.dev>; Sun, 18 Jan 2026 22:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176877443357.510.8430258527962635077.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 87143c5c9c342f30081ccb077198c7df91d268da3acb744dee2e753dcf48fdc0
Date: Sun, 18 Jan 2026 22:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768774433
