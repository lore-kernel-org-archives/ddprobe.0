Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F09D3803FD
	for <ddprobe@lists.linux.dev>; Tue, 21 Apr 2026 19:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776800854; cv=none; b=Rvoze7REaoraeyqrEs0JMOu14gxCmEiNvqCGJBo7bMZDPVfZMoV2naBth1/U1sFueoH0dQvye7v8MIrZYY/cZTH5neMv+sXZ1spq+QgP0olLHRwskYtASmc0gXllLx6jG/RO/lSWa6Gusptw0RX/nZyAc3RFvVCyJxKixcJBJXM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776800854; c=relaxed/simple;
	bh=1r9pRD6pWMIXuOhCIzOysLyBSQ/enM8k0ZHYeq7W6cM=;
	h=To:Subject:From:Message-Id:Date; b=Sn5khY+FbNGe8uPQ/J2KM4MMeFJn3rKFydDCp1TNx9VysVk1MuDmxXWatGaBJie7Z/YlldZg1He+Yf3beNaIsJHgQ3NPx289Qpjg2gcEOLWjQPuIytQh25ZdO3BEMwIuxUEmk4lH7EvzzDLByoulNbPvemIDpVBaPqnp43rTL0E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Dar7gD+w; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Dar7gD+w"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B9D53C2BCB0
	for <ddprobe@lists.linux.dev>; Tue, 21 Apr 2026 19:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776800853;
	bh=1r9pRD6pWMIXuOhCIzOysLyBSQ/enM8k0ZHYeq7W6cM=;
	h=To:Subject:From:Date:From;
	b=Dar7gD+wQZLBdYJ+vP4O/dJjco1XfjhqrEbuHo2Fa+XBllj3EkyUcd0rKkz7NlFIZ
	 NI0NNWPcl/7gf4mgc1TLa5PntEqFUM/3RJIXtmDBa6y0HIPCGMThpdKMEPaHebhN6R
	 uX2zHv3LmJ+0W9PZ46EgwlRRpP9AVAU9Q0ln+0gKiDkwibrh1hk9Ya2J+DhHZxz9fM
	 +GdLBIf4K/q1BMwiyDFhljeviSxQOJrKuZWhLTIZYZuB2izvL9Hr4QVf2NZf60qHpY
	 izuvkp0cEQAW4W5cwwKtGqwOWCQfVV3LZmUYvUSY3cweOXtbXCuTCt7kald7O4GD6O
	 o3wMJ01QOieTQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA1E7F94CA9
	for <ddprobe@lists.linux.dev>; Tue, 21 Apr 2026 19:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177680085368.26408.3019340474650270437.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8b57dc1f789016384518ea769de281863f42a404ec3f79f61d583cdc038d4c9c
Date: Tue, 21 Apr 2026 19:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776800853
