Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 164423559F8
	for <ddprobe@lists.linux.dev>; Wed, 17 Dec 2025 13:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765976634; cv=none; b=cRAuI5PzkE3wlv52xDgnesVt5DEXLEg3fCcmfAU+Gsz0rWGU6dex2jgT1zqA/K9PVyrLzQbRkiZNrT9F9reOC52jTmCtsuLkEppcatTpEXdiv7LjuCW14aRWODwe+slwMy+YQluTR8wh5ReWtlXF3h05exwa3CShC6zZtVN1gpk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765976634; c=relaxed/simple;
	bh=DmkRcVwvTU3oiFYOeAYJPg0v0x6KhYHaQ66bRncalx4=;
	h=To:Subject:From:Message-Id:Date; b=Z1ZbGQVKVKy+VHMioBkotMmdG1Ey+bZI/ZsKBzP4GPDJKy1w5fC2RAo0qzE9RNnUAXORkSj7AKUeKpCMeq5LGvyGeZnitpHnpouPK36A2Lp/SJJfdCLV9pQnap+7e5V+Ui+Og+8G6+T+zFx5Kb1VAiAzs4KdJCOkgEWAh6o/9e4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GpMgW+MM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GpMgW+MM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABA68C4CEF5
	for <ddprobe@lists.linux.dev>; Wed, 17 Dec 2025 13:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765976633;
	bh=DmkRcVwvTU3oiFYOeAYJPg0v0x6KhYHaQ66bRncalx4=;
	h=To:Subject:From:Date:From;
	b=GpMgW+MMd0KneoIF3/XrpkU4sBZ5p0yXXz+J2swbABIxlFalterLmVYgWcvTy8W+Z
	 bC+t7FC/c2l+5wvvaIJvWRilEC4jfM3OkiAMXRTGC9Rp51lBaBFsi0PW5iIfZ0FxF9
	 MdNW2cWTYo9P7PMN6pK6rkIKU0+5q+oPR7J7ApuOMkzFrywxlqH2BcyWgh0xEj4bK4
	 8Lj/jdS1UPICYyAVKiww+vAO3zFgUFlnjKKKyM+PqvwFuG2OakBN6XFH/Dsbq+PTHH
	 oY2s9mGtKjr43Hlt0dlNDpl+je40rJehV+cQpdm4zbZ5Y7ehYdev4ywfkqlph8xjl5
	 7JZAe4WQQBrpw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99A58D65C44
	for <ddprobe@lists.linux.dev>; Wed, 17 Dec 2025 13:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176597663361.24612.5356614075105251736.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 516a74a076fd3e51ca9a1f2ddec701527f124fa23bf82293af22a24e122c27c6
Date: Wed, 17 Dec 2025 13:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765976633
