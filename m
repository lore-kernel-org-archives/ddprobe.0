Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1AE8538757D
	for <ddprobe@lists.linux.dev>; Fri, 27 Mar 2026 12:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774613094; cv=none; b=fKA0ZaY7JTLEKOOtdS6aaB8xqfWGpWTGsQmDfoQTwi0pjG+w1/zXwg5pdZ5rzxu3+HuDNR8ssLc4k7cgEibjobch9Y6Bx0S4V50SHCmamZ6GlfbpZansph6X9vPBTBgau7vwN2a+/+8w2RVee8fv9g9Azl4/rooYXwpJhOzLMf0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774613094; c=relaxed/simple;
	bh=CvbK3sv2D33RTL/1r8VVRRHa32OYaPkNHYD9hzmBCGU=;
	h=To:Subject:From:Message-Id:Date; b=VqV84ftuyQ5/rFQlkNvClQWI9f5BqCeiS8oeZv6nCHbzJ4to/1g3vffAJDM0AYrqPgGWic+TwzVtMVX5XfrRRXcnNa/2w4tEID7632NmSz3N6MI1eXBBoRYiwWXJEFoROJkcR/5mNr6JCTpCAr4hgLNvRtQn7lMtiLDPy1CgXCg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gIwcI2pZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gIwcI2pZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A33F4C19423
	for <ddprobe@lists.linux.dev>; Fri, 27 Mar 2026 12:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774613093;
	bh=CvbK3sv2D33RTL/1r8VVRRHa32OYaPkNHYD9hzmBCGU=;
	h=To:Subject:From:Date:From;
	b=gIwcI2pZ1ootN5/NC9LdJESN9KQhAl0wG0UmwRNuHysNuNXWPi1KG4bytJ9Leqb4g
	 FR9bm1hLdts2h69N2og+ZoIZ9w2c9BazzJhBFr0IPIklRj4zkomaIWC3OhAPPyyLoR
	 TrTjLkXdgB91eyZYr18Sp5zkLX3VFYIgX2NUZa8Vt02teATT3BLW+BF3kbIvR2Bcrg
	 0Qpw67I4PjEbbMaETqJsvCNKWg3t35Zq288ssGM1geUNGkc40R3jfKhN3Jik1EWfKq
	 fu+uaC42OmYc/GtuO699pTQrdsJ9mjsRsYNj58ogFkBKLkz6nIXASZfJF5yXL3au+P
	 QfMro8zwglfqg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91BCC10ED659
	for <ddprobe@lists.linux.dev>; Fri, 27 Mar 2026 12:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177461309358.9538.7564467542156556909.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5aad928f17f6eef190a98dc2746fc66b4bdcd044fcfad09e235a0caaba87d017
Date: Fri, 27 Mar 2026 12:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774613093
