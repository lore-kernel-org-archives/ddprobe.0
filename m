Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 147071A683B
	for <ddprobe@lists.linux.dev>; Tue, 17 Mar 2026 01:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773712494; cv=none; b=ACPOW2+qinqsoQ2c9NoOe7E/ZiyOcIpX4WpvgrYXycpyt+an2+yOe3ljkpqgmV1BoH/k3SwgTYhPgdWWzG5Cu+qdTm/n7/fC1H7jGJHCH2RgkhspOjqg/DV83CaudisYxp+1coe/Iuh9qBf2krm4uysonKZ2/3afF+w1lJJ+U/Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773712494; c=relaxed/simple;
	bh=OLIKRChW21W/ddetNDg3bwbt0NcRK//IRvcd3k1hvPQ=;
	h=To:Subject:From:Message-Id:Date; b=qKSbVIDnM6xRWabX4uUsD/f6Ov2xEtoZxsHGJGes8lfGY9Xtld2SxrFZY4zDhv1Ckg8a44Mk9RughB9jTK1BJZ6QrKH833pUah+LVqVjpdPMhOkAOv60g7bgWUKZ6N0ipnlYgOhFB2E07BUphLzCGsg6vRlE3I/ANRXw5xyqEwc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KFNOXfF0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KFNOXfF0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2BD4C19421
	for <ddprobe@lists.linux.dev>; Tue, 17 Mar 2026 01:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773712493;
	bh=OLIKRChW21W/ddetNDg3bwbt0NcRK//IRvcd3k1hvPQ=;
	h=To:Subject:From:Date:From;
	b=KFNOXfF0LJhg67CI/7lkXh/URxs+rJmNVfIgll/ysK5Ajdrah/TzoLgmmFpUqw27D
	 tNNHdlMhsYRthygjRL/OX4+lNYhYsjwIEZ3nzd6NTkpmj0peBUUt33Zs1Ntx5dGW3c
	 PPlm7zE9tUPRKs8aMVu93Yt+hZsMrhTSQoYO1PvPBrdL47PUt+L2thX4mU0RwLJhEh
	 h2GDm/zTtbXHjC2viRztNAuxXf8ttj4Qo4fEqG/kgv6fVDkQIkVxUNUC+XK+S8lftE
	 2Sas5v25IVZOXC/xI5Alm1fcIC5RPiU+mBqGtQvnbJKIqAhKKtMcKtYo5UAFif0vB/
	 bPIKnD9ex0GaA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9058EFB5EA0
	for <ddprobe@lists.linux.dev>; Tue, 17 Mar 2026 01:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177371249358.5254.10784782676308835481.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 829d054f15d23fbfd20b982f51b899bd13bc17365ef8074e39353f22baed198a
Date: Tue, 17 Mar 2026 01:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773712493
