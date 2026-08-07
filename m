Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5267AE54B
	for <ddprobe@lists.linux.dev>; Fri,  7 Aug 2026 17:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786125034; cv=none; b=dAn0GUc9UtTuYJvyyuZjcjayu5CjRQUJc9PMrt5+4SYLlxlj4IpzzEhDebRKe9TToecCbZjtp8WhTqXjcic8ObhYNfgpAP+4IyR1OOdE6Q6fPZUL4X/XcI2WjltZseAdgSweupuX4YIFRwh+d/aEdm6R6umMPrz5He3y15uNGPI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786125034; c=relaxed/simple;
	bh=hRR7P3P2/+Dmz2yhL533sMMydFofhzD6kYrDLomKhdU=;
	h=To:Subject:From:Message-Id:Date; b=ZdXPnogifCdUoPnU4NvwrYN9LH4XX9KOX/PJQIdD/5hgGu9rQlAekfCDHTRB1vzvFq66J+WcOcGxVQLzz22WxUTFo+Qu67pma9IahOO2s5UImCXYzsR62nubXEhsqYP4FFgjA4WxsAFq6DXbIezA2g+cyjP2QP6B+I6qu+Zty8M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hpjHwwjl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hpjHwwjl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DC6E0C19425
	for <ddprobe@lists.linux.dev>; Fri,  7 Aug 2026 17:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786125033;
	bh=hRR7P3P2/+Dmz2yhL533sMMydFofhzD6kYrDLomKhdU=;
	h=To:Subject:From:Date:From;
	b=hpjHwwjlNnOIJE0UupBv0gXpHKa6AIMj0nnHaHqchfN+M8IYv8jZjPNk2XwWXGt5R
	 6GXU/IXTa7V022eTtXzCNG+T2SDL0XtL2pcFDE5/5G9CbfOirZ8cwB+VCwcgnmoxTc
	 rVBay7KTeZYMmQnp7O8WyS4dzj+nF6TZVTs+KCcv012HIvzm+X5449deeGNfs8P9UZ
	 zFsWGSVp7zxJJhTdurSDLkrEaHIh/8A2qKSYWf8t2ffOLFe9kn0yGpQsZwSzZqLCxi
	 HA/I7qJIJp9xcMzNmvWKsI/dv16xN/22yIxR2KmkU1saZ+5KXQ2z/KU/nB2ehj8bjC
	 Ia/M+ktOhHupQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B8171C2A09B
	for <ddprobe@lists.linux.dev>; Fri,  7 Aug 2026 17:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178612503370.7254.10597343277148318020.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c5f47daadc4a2916ece8ebf5ab96032dfbecd63b2ba71e9520b220523fba2e12
Date: Fri, 07 Aug 2026 17:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786125033
