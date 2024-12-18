Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 276B61534EC
	for <ddprobe@lists.linux.dev>; Wed, 18 Dec 2024 12:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734525354; cv=none; b=szaFRS0c+p3gPHGHipZcitRo6yZo0fKQ5uGNukHz862nPLDMvCWN2yNy7zxcgI+njIUfmgGHwUe9RorHP5lienCef7vj4m2n05ypUy7DJrzWWOTAL+s3y5mehOm/XWuMxH4tPc+qc8AgGYCPn56d2EB/F7F/wrRx/FDfFhDaObI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734525354; c=relaxed/simple;
	bh=V+Bb+mz9gjhIuOslk2iuuUb1xCWqXFXud2w8PE6UVfI=;
	h=To:Subject:From:Message-Id:Date; b=ht+iQw/rLRF4HqVCeGOXaePR9I1SrpdgNPI9uW13jphUlTzMKhBKUzG++8lxlrV/WjnUh4EBiLrxfZf0EN2ZFw5897QTguF2V+zy/XZ9y9f6WCVnx3B6nYbQbq2RWZ53CgBqn2GVlRD4hFfuhXiE9tCKOxR/h+QU763i+5k0beA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QkJc/W9/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QkJc/W9/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB953C4CECE
	for <ddprobe@lists.linux.dev>; Wed, 18 Dec 2024 12:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734525353;
	bh=V+Bb+mz9gjhIuOslk2iuuUb1xCWqXFXud2w8PE6UVfI=;
	h=To:Subject:From:Date:From;
	b=QkJc/W9/3z5mYqis3jUY82qEl3ACIfdWsLMa7AzCqcB3bhzOL0w07kvcAyv7pkU35
	 CFlVPt6CXQp/OfSu9LiwqbMCGQxzC0TMVH+15YZdGKrBTcTANm58afu5GWyQBMVee3
	 bbXMXMiORBnTMbgtLx+X5hNhUXWDGtQ0orpx59+SIkZ5bIOqK0a4u2bCa3WC1pwdDq
	 1Bjo8gct+AdOx2rAoNY3IcaJC5eAFLqV0Ywg76BREnavj4XaIsmeT0gNxA96HneNj6
	 o0FY0OF0bQMmBmEOy2ttjFmXNK0L33fzPlAVTZ9hK4EacEx3pqTDC7R+sWXu2llk5q
	 vQOBYRt98S3bA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97EE0E77188
	for <ddprobe@lists.linux.dev>; Wed, 18 Dec 2024 12:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173452535361.10481.2951739951967624376.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e79b44f83533750a772289240608567f2043b56434f54414b371abe33e9a6933
Date: Wed, 18 Dec 2024 12:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734525353
