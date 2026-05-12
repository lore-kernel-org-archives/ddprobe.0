Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C1F1367F4A
	for <ddprobe@lists.linux.dev>; Tue, 12 May 2026 03:00:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778554834; cv=none; b=lasXRh3vLtnP6nXzvGEHCruopphoVrd8cWNLi43TGtUv4dw0w146gOJBnlBF7PKCm9aTkgKx+ACgvyVNnD1fTrE1PbBwRfaxw0uDug+GCHFajx6YAaMuTU6ShJVMZNAYdJi6rFagJOH9L038/wkyFGZDi36MmiMwNaUiOkUUHU4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778554834; c=relaxed/simple;
	bh=tu8ScQiE/wqjaz9N+6VZIGKlSK/c/dsTWOXywrVHSS0=;
	h=To:Subject:From:Message-Id:Date; b=LjZrQVVZfGsgb54PsGpMLIBYJwG4umV+l2U0LE2ArG8ZceeC8FrmdPf9x9UvArpGzqNoL96CK26eJNMV5wHjiOv4B/iqI+MlMwp7OoEJd4r9vzGRH+57VxxT0qvR0AXOfs+I2iJLoYhGkypCdS51oO7xD/fDmFW3hLNoJacXga0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=H+jR19Xp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="H+jR19Xp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C065EC2BCB0
	for <ddprobe@lists.linux.dev>; Tue, 12 May 2026 03:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778554833;
	bh=tu8ScQiE/wqjaz9N+6VZIGKlSK/c/dsTWOXywrVHSS0=;
	h=To:Subject:From:Date:From;
	b=H+jR19Xpq/Ou2aOfXSC0vCpMa6T+CNvcsCb9yTAUAmctYsgstWR2ztgHuYEOXcNPA
	 tfAIo8NiFLzEmefkc91b/Fuinq3KVyARTiB+d7yjNOCgnezmBSxr7x7SaSYvwoYbgf
	 AFSqWsONLqaMLnVXBB5Xmv7wv/yf5dDYT1JKvxE6mvHRkwzg9ODOAx6EpxtjxIcpfn
	 Zg1MbvXN2s90vpnPDs25ZTsN99xKxyoRa8uJ4wX6P2c17yl11w2XAX9PF5Lnd7e8Jx
	 /pEa+Ufyj/ddHD/1s5+tLpbALJ76CMY57d5Mqop9HeqVWP97Lb3c24fVLO4VlqGhol
	 AZIUj51cRCKdw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADCD7CD4846
	for <ddprobe@lists.linux.dev>; Tue, 12 May 2026 03:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177855483369.9349.1567195052063061040.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 260d0dbca8b409222431834219df1aa38758ed7a4dd77b3ecf39278c8b38bb69
Date: Tue, 12 May 2026 03:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778554833
