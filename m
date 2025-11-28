Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3DC5E23C512
	for <ddprobe@lists.linux.dev>; Fri, 28 Nov 2025 14:52:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764341574; cv=none; b=q1rqUDM0ZBl5SRLiIk+U+HUszU6mwv/OOuWcCSVhy5sL6XI5rRhiCEzJkRxJZD3+RedKBkWvsdrck06QhRgeT44GNG+ZTVa6bizHTL4O5ln+MuKEzyhLbNqpFxMy4CbigMxMJtkj3HMgTgHGJr+lFxlj5Zei6P4+xcYg/rc7aFg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764341574; c=relaxed/simple;
	bh=6IyGKjWpSgsvapeUeYHwqtk1wZF5tfxCL/eKm7AX1Oc=;
	h=To:Subject:From:Message-Id:Date; b=X3AOC1KTDruU+5KZnEHJRKZSsjdu+CzRvafqaXW7jE1UDpOE+1dfW2qnPvN0s8CAHoE/XRvMJjxedvZNY7BzNPLJSOP/Ev5+67SA1TmyaCXUUG7tCT3bZo+2Llx/lNHd6VU7gNwFvS7UaGDZLDz+082LvV0898HuVPDjqBi+4Oo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Qt6DUss1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Qt6DUss1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE109C4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 28 Nov 2025 14:52:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764341573;
	bh=6IyGKjWpSgsvapeUeYHwqtk1wZF5tfxCL/eKm7AX1Oc=;
	h=To:Subject:From:Date:From;
	b=Qt6DUss12aRIuqsqsQiAPSFXObpoKTfYN3JBs5DsYzA4XFdFb13Wfq/XuXpGvQl80
	 M8tGsuM9/6+F5Oaj4SdwZFXrJJl/S/WyWfzcuyTR/c8NRjPsTSLoCmpkkPNJLkUPDg
	 gxMEKkHykuNGabj/GBb5b4dHY3QwWUhr765ZbgMEk+QssTEpprhBc1MiiUopMh/7HB
	 aCA6E23OzSjeCWmA0z39DRScAhvFJTs1MTM0fqLCwEc+2pYmr/oU4dkCUEImmMY2Fi
	 OzbzlBGvfxaTrb5ATInfN53H/2zA3Hhi/wOK6ZSE39vi9ZKqfYkPGvgCqS+27QmpRW
	 v53aQWGEszM/g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A448D116E2
	for <ddprobe@lists.linux.dev>; Fri, 28 Nov 2025 14:52:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176434157359.28571.15533225971343361522.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c76196261ae645febcff3f332e03d570dff2d6cd8f01bd85f61a672c2087b729
Date: Fri, 28 Nov 2025 14:52:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764341573
