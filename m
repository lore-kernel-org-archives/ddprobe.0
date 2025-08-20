Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A9FE26F46E
	for <ddprobe@lists.linux.dev>; Wed, 20 Aug 2025 14:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755699594; cv=none; b=iJW0YLgKdxwHqPbUxIqWf4X9qle6L+L6qxTvJTyLqpLpnnoByIuYjUnsNeNfN2RG4OUaFHQUdaHX3JQA3q6XA0LVo+8j+KI67r0X9mlH8DQb1x71W3I8FU+ZPMHwhnwDkJQTpbgJEhRE/r+Yd6sC9JY4VEUKLXiY7UjqNhFs840=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755699594; c=relaxed/simple;
	bh=HZmQBAXEd1Qxy27ijwdeU6wj3RsCUsiCS4ifUonheFc=;
	h=To:Subject:From:Message-Id:Date; b=JIG56XHWuWgFlcdiwAavgPjHwwOw2IksKQ3pmjpFjU/JhBTj7vwwZRN+fj/O2X/sngQW/3CVmB3N5jA5NwFpTxXvD226wZOKEarWXvEJgA/1ogcbQR8k4lbCLoQJPOFMWI34w7aI2aV1SevvqPdHv+0MeiUQqZd1J8Igb9/wBCM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aRw1iM9T; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aRw1iM9T"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0FCDC4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 20 Aug 2025 14:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755699593;
	bh=HZmQBAXEd1Qxy27ijwdeU6wj3RsCUsiCS4ifUonheFc=;
	h=To:Subject:From:Date:From;
	b=aRw1iM9TTSls3p8c5DY6pjw1rTceXI0t0qJLeKyzYE+VU9lv8BflaS5DNQrgYv/tB
	 xUekmgyIQDQFVLL7h7wwhfBggilfka1F9bpWmMjrXufBWm8INrChanPBiZOm5AzzNx
	 7MizWYINrhhhfUedGDZtnIXBoQz/CzCS7mJDJppFs36GhOgg0SMYYmTkwEm5n6B1P3
	 XJZme8jmBjTPKjSTiCgI8CQ37qj98QVyLALBk2aFu+wSR2DkxYSXj67+vVqeY5vH0z
	 1Ptrn+lN1dq9kenQwFDtDt2qWrxrldhHJxczfBkZ4mqUK9IiFmDlA1oQvfMYSCNI/b
	 jhhQrwokadAvg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EF11CA0EE4
	for <ddprobe@lists.linux.dev>; Wed, 20 Aug 2025 14:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175569959357.6732.1998941948964917153.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1ed1314d13b588256cd114d4af3c116006f447a62b611874ae8e4944a9c68741
Date: Wed, 20 Aug 2025 14:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755699593
