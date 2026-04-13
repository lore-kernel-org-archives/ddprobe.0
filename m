Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 767DA35CB7B
	for <ddprobe@lists.linux.dev>; Mon, 13 Apr 2026 15:57:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776095854; cv=none; b=HlXbrgPpjF86Tb3COGzcJpY504RGYysO3IkolTXMTn99RmcQpgT9LQxrf6b7THZD13t5+QyXW2aUImC2mXKiucrjNwl0CJT7t/y94rJ7bZu6pv/ZcnYAYR2ITMDdFpcUcXnsto+7C6LOekr7oMpytEMOQqY0ttpCkEuJtVUh3TY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776095854; c=relaxed/simple;
	bh=PAbIbJ3XFJmUmMTP5B1rCObw/+8Dye5/vM/oGgOH0Xw=;
	h=To:Subject:From:Message-Id:Date; b=UgJouCAeApCUQvR6H+v9f6va6UkVqlkgj4rMpZmz/7w+RLX8hubeYLeEHChNA5J0h4uPZt7wDt1UcJwmydr7KOoTYSGRvN9fszGJjTWY29jZPqDETXPAmxMJ/l73xektjlhYJl/u7hcsDGHAfVmDfKA4ACLHo0OY+NugZzOJJQM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KtGibkCh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KtGibkCh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BDC15C2BCB0
	for <ddprobe@lists.linux.dev>; Mon, 13 Apr 2026 15:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776095853;
	bh=PAbIbJ3XFJmUmMTP5B1rCObw/+8Dye5/vM/oGgOH0Xw=;
	h=To:Subject:From:Date:From;
	b=KtGibkCh3v2aaqgWu6WgqLmCTvU9Bq6jRuT2XId0iN09gH/0qWRaTAFQYSu/i/0QJ
	 SvN7/TVjcrHwlgccKfYDt2lNLAdwoyezrXqwI+SUhABrm6xr5liyURzZDAfhyCmEJS
	 z6cejyLvTtmk3ObzsGRd1hVMFml91w7lfg7SeFQ7efgstbJyUHC29tQGuW9Jehf3J0
	 wGDu/Z5ROcITrwsvTsoQJRZYFzewzPSovSQ238yyDCOj7SLhlEb1vYHjXJ3A3iHEF9
	 z6poTzpWlEtQVbH/c1y2SqA7C8JVxCVpuSEgLuy1AnIkWMkuCziGG2GEa2vIRu3/8X
	 wYJ3mt67fHRVw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF90AF34C64
	for <ddprobe@lists.linux.dev>; Mon, 13 Apr 2026 15:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177609585368.21250.4666220528690756412.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a38285a167faa9fba08d8e9a861a1f3c9385d77915f30e8e1c9849e7727bfbdc
Date: Mon, 13 Apr 2026 15:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776095853
