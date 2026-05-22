Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30A38347C7
	for <ddprobe@lists.linux.dev>; Fri, 22 May 2026 04:32:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779424354; cv=none; b=e5XVOYEiFcmDsq/5EZ0L9rGEU76VlQd0ikLuh0ryAM6xrUKN2Q6pZ8B6po9uBqlUfvyQbKRMokHO/K7SH4+Skk1ojOjVffmlLm/S+77P9R9J76zVB3Kge3Qa9ciKl83ZR6jTwFqkL1AluNe4CYpFQxXyENJ2LlsLJT5Qh6Yu2ok=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779424354; c=relaxed/simple;
	bh=ocyZrpZ2YA8a+iqVqPU9gd1OCJ+9RBTpmo8wqh7joE8=;
	h=To:Subject:From:Message-Id:Date; b=YdlIpnBQX2nistpMgxk7+njMhOzMcnrqXyG2dA6azHhXL5B0ZjK8wHm+ubP2cW/Qw47qJM5v3+KyVgVMzysIIMTrb8sjab/PFr02XAXb8GO2z5wfDGR36rKRzrMnKbwb+avJWOsMx6S1UhOaVzI8H1/8MA6piizPC0dvK8+VQI8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BwLcZB8B; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BwLcZB8B"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CDB34C2BCB4
	for <ddprobe@lists.linux.dev>; Fri, 22 May 2026 04:32:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779424353;
	bh=ocyZrpZ2YA8a+iqVqPU9gd1OCJ+9RBTpmo8wqh7joE8=;
	h=To:Subject:From:Date:From;
	b=BwLcZB8ByyQoriDrxG4YT7gWJiZxPkpbDs9eHKmsksmbz/fpL9WmuPf17w83GuiFK
	 EOsq8paIIjWymlETTHybbB6R5J2ZPByLHJWEugdsBJ4Qci7WLFN2pFxG1RAwU1/c0D
	 IoiIVK8+sobNMASWsxy0c6PaabAOTr7dOJaiscasTPHdZgymlV809CUJ7cykiTIVWq
	 Uz/58TPP8LyTsPhrzDkyO+mHgaj1D7IQCgYEKOkwROcuieBfHcmwLNOcxsI6LL86QN
	 E0OLzVKyrAtc0cVeJUGkA1HoQhsq3KOJUAZS+vatJ7Fgoyxk2fyawdCj2d7Lv9wuSy
	 9DzgT2u+N9ZOg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B5EC9CD5BB3
	for <ddprobe@lists.linux.dev>; Fri, 22 May 2026 04:32:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177942435370.4111.18194871906434632069.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 73ebec4bd538e6a462399515ea92817a6d047dfb84f4438a708f2d8e4ce5dc22
Date: Fri, 22 May 2026 04:32:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779424353
