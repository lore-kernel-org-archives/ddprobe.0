Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CCFF2263C65
	for <ddprobe@lists.linux.dev>; Fri, 14 Feb 2025 12:18:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739535533; cv=none; b=gjgIiviiP5UgR20Fwsi+C1hxJQ9ufDmNi3wcO6F4A1cszq7M37z3+yp680xobc4pUazOvRpU4aYiGLYp423w8Rs26KgAUEsM8UAQJLdnI1l+S1P3Zm9PxDgfOQ+00md9oH/VaEgY3oFYc/S18jUxcZtUvadngr81MUyKKz1cj9I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739535533; c=relaxed/simple;
	bh=y6E5mPwtbdizXwI5D6CUZwOXRDz8nfyg+8Pq8NpHDF0=;
	h=To:Subject:From:Message-Id:Date; b=PYl9tGV1SDl6Jt7wL8gR7oS2a4JbOBe4XseSqqut8az+ifg4OL/XTrKdqrAt5tDi64Bd4tv24qv1Yn7qlEInw6zvAGB4Op1yB2Xsu783KibHqGClMZckPjk5cViri4GTtbDcdzNq+nZu2ccwaeBmqFw8TquVe4yrjSUh2eKI7uw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JoI0Binu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JoI0Binu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A56B0C4CED1
	for <ddprobe@lists.linux.dev>; Fri, 14 Feb 2025 12:18:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739535533;
	bh=y6E5mPwtbdizXwI5D6CUZwOXRDz8nfyg+8Pq8NpHDF0=;
	h=To:Subject:From:Date:From;
	b=JoI0BinugDDTwwkFjj9EyJzLz69txoa/3fvMrDWCHdfBRQbuyLhvJdpq5sobNJuZP
	 yHiJWcYR3fWvsitIJu+UcA61w2519TpQQg4vKi74Is3khvRxP7R/Sb6qiZ7W+WWTUQ
	 QRGNPRkALOeDA0DFNkAf9wKY7chB9hGKcnhbW7t5NzRItns9oioX8W82wnpUMo04i4
	 +ope8zX04E0nxwdgL2xfizVmubtTmVmpqksHo3Yo5FlsX2n8inFU3LxBDvs1+PD5D+
	 CUwIUA/tA/Q9Url4spG0joTebjhr77THYXJ+BTZkVzALP0Ox0GFz+DjlKCyFDvF1wm
	 g06H4RdZkDlXw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 971FCC02198
	for <ddprobe@lists.linux.dev>; Fri, 14 Feb 2025 12:18:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173953553358.11809.14972752426510066047.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6f61bf0010a14298d0bbb7e6bad9031a9a323c1319bf982c07836315b997c346
Date: Fri, 14 Feb 2025 12:18:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739535533
