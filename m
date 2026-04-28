Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2409C314D2D
	for <ddprobe@lists.linux.dev>; Tue, 28 Apr 2026 05:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777354654; cv=none; b=bAqGE7+qc12aqnBDc2XhgTsL2KySZvkEKbospG0cPYEqAiuzgIWNWAGroeBG42FHqWlvNj+7mR0oxpmotDI6Zv8t5/aoTGqLUl7ICuSdFhtNMS3zZ0k3Fsz/Nu7QuwAEgvSzn4EdZZg++Bxw7MLyWW7xRwEcQxpzCD/tjkKgUVY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777354654; c=relaxed/simple;
	bh=QdJ9YaPChzfx+yYh3eatckc/OzgvjYGTlKlJFnZvn9Q=;
	h=To:Subject:From:Message-Id:Date; b=k/o4KFWH9p/f1tb8OhjQIJkAL1miaAiIQDnCgeeCAr84Bb3KgSwrGBnnoqrHz9IuiV+NqrJ2IQy4snebm/95aYiIX5hGyvjCjDPtv146MTODrvq6F/rJO0LabCcK3m5XROAEhfPzdLaHMyJJBzqh4qsClXAcvRPO+OjKQYWJJ8o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MvyLfGUe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MvyLfGUe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8E9BC2BCAF
	for <ddprobe@lists.linux.dev>; Tue, 28 Apr 2026 05:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777354653;
	bh=QdJ9YaPChzfx+yYh3eatckc/OzgvjYGTlKlJFnZvn9Q=;
	h=To:Subject:From:Date:From;
	b=MvyLfGUeqxAp37FLAmeTxuD83ZyrOpU9xBYx+8ShnWm3LBqPuBGqoTvhXiDberdpW
	 AbYLCUtO+DVLAD1Y58j2AnZtAzN6uK5kRTJo/QPFrzUEbqZIQ1/GKG1I4A4QSQo2xL
	 bttmN+m5tjfE+A2im5dcHk3R0lNT6VlHK2/5w1Q31My43plFzlnOQyvCdTesMlt5Me
	 nDhgEx6Uj6AOvSCQcGXEOENMCGI/4DOmTRBqIHRUCPiqrt4bPemQ4CuHrEXLDZRQ/4
	 keLw+Wz4j7PDzSYUOdztpsEdMxrYYo85tbQ0CKdEJ3xt0S4jrEwp5LmRnycEWNemuk
	 6WiV0L6PxCWtQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A94EDFF885A
	for <ddprobe@lists.linux.dev>; Tue, 28 Apr 2026 05:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177735465368.24406.4594414786958508218.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c43b5dc6592d7ab3d31b5d82aab1383ad5f21e2c0c78b6b104590ea3483bae25
Date: Tue, 28 Apr 2026 05:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777354653
