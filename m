Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A1FC1C68F
	for <ddprobe@lists.linux.dev>; Mon, 13 Apr 2026 23:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776124054; cv=none; b=cOHlu1lt3RRzDEg6K4LLx5SQ3brI6ARYEcQokGVf/MTxcBynmECDPH9cKKq5nqsWZeLJExhHyPbc17zf7ip4SwP3e6WvYbe+NhqruXD9nShgUaKPzR6xxheeGx0S+OCaQOjNH7O02+GExSov63T+uGROd9ksc/EazOeBeohZc04=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776124054; c=relaxed/simple;
	bh=ZYdnVf2wt2zBg7EBKd8C3xwKs1K2sczt7IgUOQMBpqQ=;
	h=To:Subject:From:Message-Id:Date; b=gEnkMwF2Pn8gnObR9//IpGIzSwEJYMS6ufPZgq8ODmY1FVfmo7VdyLj6aZCzK6ULqFOgPEECAVBHHQYYxKf98SMIbC/fiueXF4ElltIAgK0IjQYVT7cLGrc/V+Otd5n4Ws1N2TuewsAs5yR8gEEiPxeLEUvVJwNNalUZ/wWK3BI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XHUhr6on; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XHUhr6on"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1B9AC2BCAF
	for <ddprobe@lists.linux.dev>; Mon, 13 Apr 2026 23:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776124053;
	bh=ZYdnVf2wt2zBg7EBKd8C3xwKs1K2sczt7IgUOQMBpqQ=;
	h=To:Subject:From:Date:From;
	b=XHUhr6onjlUwWoUKWPhhKdm7+k+1dZ5qFXjkclIeymh0G6oN4IkOofe+90Y5u2AkB
	 l6lRjd41S0EZydG2fDO6uqBDiTOyPX3l7wZutRi08jsHm/DKlizjynLwI/G01WmW79
	 MBQRTYUOz4KMAZcVe7yULPflFP5LgQRaGYf57D0qjhX4g2Toodujrij6+rkHHOoxfs
	 d2YqTS2+A/fcSsru2mtx2NqIj4YBIRRqNvVe/CpEE/bnpqFBwpmry6YzunALAYvBQc
	 eFr00MNANKwp4pjnmzS6fQyDr5yCsS2SIVJTG8hEzcD4iRVHMCVCM908BhEJd325ZD
	 lHd7BXkPy+iOQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFD30F531CE
	for <ddprobe@lists.linux.dev>; Mon, 13 Apr 2026 23:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177612405368.16569.18231886527045323435.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 63efc2fe71c1075de178f2429879664461ac38edf01998ec4ad17aa34e388604
Date: Mon, 13 Apr 2026 23:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776124053
