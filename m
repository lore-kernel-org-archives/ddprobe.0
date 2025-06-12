Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3249D2F4321
	for <ddprobe@lists.linux.dev>; Thu, 12 Jun 2025 11:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749729594; cv=none; b=qomM0ZxI9/Ro7uHWpS17+qUI4VbteD3MYSQJpDHzYccQqwun9UPi5aEW2TSXtF4NQIbOTiCkK9CUP4siG78sUrZRBLYrxdFwjWXJy+P0nFMEUkjIVeU/4Yld7eUwmwS9jbx4EusXFKgSHE8fnB27e5UOysUUjWjmlKxd+1Iz4gE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749729594; c=relaxed/simple;
	bh=jbtCDceaoMG/5ZN8O+ZGLiNDKY+LgAhheWZMyR+oNnk=;
	h=To:Subject:From:Message-Id:Date; b=naKACmeXoShD3bicKCdIhzKbZ6N3ysrmScsVDDvzut0Zn2/dvB2m/AoSXaBa7Rt+IzEjv7tyIunf3hIjjmByGzYMAUVL3E2iD4jSxxsodntqdw9UJlPM9K45rwlh75YNKp500pozRjHDlAPdU1zHE9KznEYUvF3BeVLRvgJHqs4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HlrrAjML; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HlrrAjML"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8CBDC4CEEA
	for <ddprobe@lists.linux.dev>; Thu, 12 Jun 2025 11:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749729593;
	bh=jbtCDceaoMG/5ZN8O+ZGLiNDKY+LgAhheWZMyR+oNnk=;
	h=To:Subject:From:Date:From;
	b=HlrrAjMLMsItn8Qi8bp4gED1l3sIutFw6BZD543af5kTJp5X2lbRnX9MiMQ0qChKB
	 e2KP20ggPq+dJUgwy0LFjYsNXOn/NwDCLsEvlWlUUw+k7KdHTs6cRvYfS/DSz6mNyU
	 3diUNkTdOQq/r7OtkBKkfr9C1vUekvnOC1Jq/2FyoExerTiOCRTE/zOtYJo3fchehY
	 wgN+o7Becpb6R6z7ZX6qmFQWP66JxEuZum5KtuJhij5iw92SOP2M8o+wzdFPA19GcW
	 owYD0MoAz64kHEDyM9JBdwhy4qLbO+fj7+9EK4cLsZScvHBtfx88DYs9mHwe/pZ5/+
	 8nSrysN7LWByg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A0DE3C71136
	for <ddprobe@lists.linux.dev>; Thu, 12 Jun 2025 11:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174972959364.11246.11685744950874982670.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8eb495284be42a644230149f9cf217617c80438f2b79148c2fe85482cc0a28af
Date: Thu, 12 Jun 2025 11:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749729593
