Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 58D8E29408
	for <ddprobe@lists.linux.dev>; Sun, 30 Jun 2024 03:34:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719718463; cv=none; b=Y6q7+T/YYb2I35VP7mfCLllLIeDkj7SzNnhAb/WSE6WSKoqIm3hogdzBzpJ83kE49ttRe4snKDGHsKiLU9arefgZcwomTQ5n5d/fR1IKsLHQJP8ZyklX4Jt9xjzTpqfOSTCbmynvsgpHRo7LpcjlOHqi7/3NOpNx8mybSxPXnhE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719718463; c=relaxed/simple;
	bh=6pzs7DyI8+4ZmjcSt1eHA2z0BoREt6zqYRP+R0SpySE=;
	h=To:Subject:From:Message-Id:Date; b=Q8d3c/iqk8rJKSn+BEL9sjvPxfMxL28yij8lQ1kJiSJ2C4htVPM8OoAQnkAyo+x77HO0ZiKMEn400lTSkQ9J8XS9I+tOPsbOR/LS9K5hJeTu0w+YCYb0ZKHlyIW81Sn34DtIrR7Rtl6TCXtgo43J/n0QHkucg+4kKtvo1iThWW4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ib5bc7Qm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ib5bc7Qm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4F2BC32781
	for <ddprobe@lists.linux.dev>; Sun, 30 Jun 2024 03:34:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719718462;
	bh=6pzs7DyI8+4ZmjcSt1eHA2z0BoREt6zqYRP+R0SpySE=;
	h=To:Subject:From:Date:From;
	b=ib5bc7Qm7gR75FTD+7bdrlXZGoZT9+cg2SW1bvAnO4y/x8MsjWzAhEk8tKDCzZw1T
	 PM/rcvuITv0ZYsGCxhRY570z+S9oR947DEWy8Jovzwre65/lLOgin1Yp8j0ivFaqRm
	 DkFPx6uVWqNecXb3dK+n7Cb1o8epjW1D2Thmf1SND0Q5i++SPuiN0ZX0Gd8IgkPjn6
	 iIksteG5sNuAh/nuubg4t54+bzBTZ//ZOhJceyg73zbsHss40Du7aYzRwgPoNMdx5N
	 FJ6s803AOzWQx2FQEiWu5kVvowURIwauDwLUTLnTxKRRdQm1eXTw2b+fEpGjGVqr6e
	 XPMCm4sl9QI4Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C4C05C27C4F
	for <ddprobe@lists.linux.dev>; Sun, 30 Jun 2024 03:34:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171971846278.15182.4185614776430182133.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c2a3f78b82fadcd7ec747402009fd2a66b526bb4ce36e2dc1215be532fee3f51
Date: Sun, 30 Jun 2024 03:34:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719718462
