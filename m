Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F5F828850C
	for <ddprobe@lists.linux.dev>; Wed,  8 Apr 2026 08:55:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775638534; cv=none; b=uY8ZPzCtfozTKV6uH8O59k5jxgLbwdzwNdrJMNL6ezbB9UA5O2iAVgaxpAjjnKaaF3ZL0dBP2JD8ljwNE13NR4K66OWlZbp8Pv6Ybo9sYFsFYUUQ+K61ewTavmHLzSyRqi9kWI3gjsH5gE3UniraFPyz/g1w+rfZi2WRt8Flt1A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775638534; c=relaxed/simple;
	bh=j5QnXdl6bcJ2G8kl4L+3jXUpJJBYMJxpR/kaPyjD4EI=;
	h=To:Subject:From:Message-Id:Date; b=WSE7SNX63xTQmwoib0s6g+kIGPmZUH8Np51f6AX5YN3STCmcw6XB74BGVHGigfngkVaP4Xf8qp+TNGyz/3urTwHQNn00Ku9g3YC8dUeJN1XfVssfHGfEKjchqqlgmrJVjIVP9TE/G/y81I1PLAapVLT42zO2NS33UGPrSkQcAKs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Xdd0hW6R; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Xdd0hW6R"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BF8D3C19424
	for <ddprobe@lists.linux.dev>; Wed,  8 Apr 2026 08:55:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775638533;
	bh=j5QnXdl6bcJ2G8kl4L+3jXUpJJBYMJxpR/kaPyjD4EI=;
	h=To:Subject:From:Date:From;
	b=Xdd0hW6RJbIKollfGQGvxbZcxsQBTK9apAO95aRFxicozVdfvzG2WxexMImFM1ooF
	 BACpyBGMyFoFpnND1APv69jDyhDqgUdHsIEM6IxOia/KvKcZGh2NWcggLcS/juChU8
	 OHq2rm7jrZVIPDvnLN7V9Ybo6o7OgPsgFT9IkYss+HI+J/bLFObWLNWnDOM7KCU4h9
	 UNLbx/GZ0Ll6BxsKZL5LVEQuUzHx5Wt12zv9K1cDUrXIPAINW7Zy9V4g96OITkAkQq
	 1Bv8hiBr280uZR5oTL2Z4hlY4LCREiDaBMR+oXsbsF2uyfk6/Oakrz71oq/FB8bW7m
	 QMLY1TZMuD1oA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB9D0FD5F99
	for <ddprobe@lists.linux.dev>; Wed,  8 Apr 2026 08:55:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177563853369.7516.3233922950669080148.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 308628275e335ff73477f692b55d5f489616c4adff9017ec99312616ab8a0bdf
Date: Wed, 08 Apr 2026 08:55:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775638533
