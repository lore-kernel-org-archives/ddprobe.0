Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 845BF340294
	for <ddprobe@lists.linux.dev>; Wed, 11 Feb 2026 20:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770840894; cv=none; b=Y1v3UuTaxYtHi7KuVJIIoHLN+wq+K9s/XLy8B2pWcZXXpg5AoOO23JPH8dAnLvFj0Dd0uqNd3jn1JgdYuom5mXQYPIPmwAd+z6k4KEeXFV62n2jEocG1xzVyJJC/kTlCpoooMUCvW1GQUiheh7idnvcB5E+ORmivjZcGGDiDsxY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770840894; c=relaxed/simple;
	bh=/TFXmKquMQU0P/zRqKH3jbK+siS+CYYIUH4nWS/t1WA=;
	h=To:Subject:From:Message-Id:Date; b=CI/kXKFWbaiM9lq/6VpvIi63d1MUPern4xVHKlIbcMC73Lrm+YV41cBDEsPEILr9x07jYCljHpWqMZiCEw4fuYB5LcOvMnjr61JDS3AR4aL5/XQDLJ60RYYP74CegLxuHW9DMbJiOCZ5KLveG1pP5fKoX2YBflV8SF99XABcVcA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OWRJ/EPb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OWRJ/EPb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6C47C19424
	for <ddprobe@lists.linux.dev>; Wed, 11 Feb 2026 20:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770840893;
	bh=/TFXmKquMQU0P/zRqKH3jbK+siS+CYYIUH4nWS/t1WA=;
	h=To:Subject:From:Date:From;
	b=OWRJ/EPb3JoEjFZPIo/u2Epb1bYTmW1gt3J9991DvV9Fl+EJ/ETl429r5Tki9ZzwO
	 1Gi54s/X7Rk7VEpq/Ar3UN0W0ERvo51eSOigOQkB9z+318nPrXg3hYOftRX9t/TRQ4
	 v1xEcqPkWIhCvX+HBzfTcRHrzjjwbdBhj9EehxtKAtNpI9Q54R4e9ZSYrfeIlVX4bi
	 dL9SGXZKDpLEcr/x08jX0iFfuRPkkn6DdjR7fHhMIocBsu+MUPB3mb5NFmI6Y7GAn1
	 Qpy/txq+Kz2nYwGzpa6ydMZXsVRAJvJjBoxBTN20c3lrA9AUdMF5XwFlFMYjOfdBWx
	 WTnfdb/QAXVsQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B981EECD6EA
	for <ddprobe@lists.linux.dev>; Wed, 11 Feb 2026 20:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177084089374.2776.9698236769906902978.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7ee81b259ac65873263f2dc19eb8704d18a0273b9a6830434846df5fc23bf021
Date: Wed, 11 Feb 2026 20:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770840893
