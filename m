Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 250A230E838
	for <ddprobe@lists.linux.dev>; Fri,  1 May 2026 22:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777673854; cv=none; b=tZtYFqY2g3byYPxetR5v5WY4d+ZJdJsenNVcnD7YYgbWi5+Cfp+ekWd9J/aY+TcLCwwbpCdaOvYaHUqJ1qMZZVk0Gf22GBY3R1M6WuyWVNgEKwnwdUsjTSkTQNVuyuvi7T0AxkdUpvE79O1yuzuF0hsn1QGZpx6zQxaSsqWU2KE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777673854; c=relaxed/simple;
	bh=3YHGmXl22/AojiSX/lcsg+HW18sIem3VQNv/D/CFRZQ=;
	h=To:Subject:From:Message-Id:Date; b=gHzHS7/xgSuo+55kpSLDMLFPAp36Uo/qEHrH5b8IoMEVZk5kiDxq4BSBFH9qkmMKBhzBEpuaPdGBzkhCNIxmL+rYJ+VrMxzg2yhw/lLensG10wb+b8vn4j5cbH5Q1Ntj5UzXEaymUGMvmcnACHiOlZUYoH9PqCh41UaLAiQJRgQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=b+RYtDVX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="b+RYtDVX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC287C2BCB4
	for <ddprobe@lists.linux.dev>; Fri,  1 May 2026 22:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777673853;
	bh=3YHGmXl22/AojiSX/lcsg+HW18sIem3VQNv/D/CFRZQ=;
	h=To:Subject:From:Date:From;
	b=b+RYtDVXN732vL+1lY9aMuc5Yc5zh5HWYgpEXmnbhRozbopbP2DFprT/qz6kFgtWN
	 bTtVFo3YX/mA+Rpds6OKo7/X6Ui9z1ahkOGDhjGCPYYBvjHJT8/jnZPFrOo7RkLgCb
	 XFwb0PM6LJD7v//QZ4LH0klxz0lgNv9LRVCeQop8+CCn3LXpl27bmJwDikQ/QKa5cS
	 AVYLBAo26Ekubri8SZfKpwADIe8tgVzY+I2nfFIupHpB3wWNPomOds4TuvMvMvG+0T
	 Eh2ITmQjfy73wcoAApu4kR63s6pltDf6mXxE7P1hC8+OshULQo7JisdcKoYctckkaX
	 gtrFHWBaOyJNw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD381CCFA13
	for <ddprobe@lists.linux.dev>; Fri,  1 May 2026 22:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177767385368.3730.18376190373149689904.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 03c46d37d5b7c684bffd6b3d32b03194f222f0ce6b5d4d04bdd2924ba37dba95
Date: Fri, 01 May 2026 22:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777673853
