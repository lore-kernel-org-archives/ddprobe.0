Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36FB91DF99A
	for <ddprobe@lists.linux.dev>; Sat, 30 Aug 2025 12:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756556395; cv=none; b=GL9nV4J4e/Rbf5T7oISlque7//0036ZtpyYNyGXrLOqE2irCnGEyjNQ6C1crhI51SG0YK/tY29MV3KccvAbW3yWjiRs+4M28xJsgncPShcaU2UsDWHyl1l8uSYOALiyx0xqsh53QqwjzT/PsmXbuBPYVeJ2MvuOjgZs9a7z8RZg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756556395; c=relaxed/simple;
	bh=E4zg+4tH4G2OUzEtSjGLlfYFcGYNj5ZDmd9yFyUo96I=;
	h=To:Subject:From:Message-Id:Date; b=XVJmvevT6cCRfo9kzxLbO7KjtH8+mqzdz+zgS5Ak6LwCnLmrMYQFiEw0tbDS1LczGxD+dwfNLTbHT9cQ046zrRgrBCySuYQzGO8y17oEaZ3Y2L7o003nrZXfpZXKH7eFnKeQgvsWH99/OwXgOwak4Q5KggZj0Pap10MSF4cJKd0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RliaANXZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RliaANXZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0BCAC4CEEB
	for <ddprobe@lists.linux.dev>; Sat, 30 Aug 2025 12:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756556393;
	bh=E4zg+4tH4G2OUzEtSjGLlfYFcGYNj5ZDmd9yFyUo96I=;
	h=To:Subject:From:Date:From;
	b=RliaANXZvscos/P39Ya5oHNtFCJVllp5obxlbvPBqNdBRih3HUUwMxN02kgYP7HZo
	 mS4SecKt9RaduquInAa83GzBNnDG1wManIJyn3SIT8AZdziS7RGhGbq/19prGT6MTl
	 raQrz5AwHUfqMiPohpG/qk71p/N27vQwqoPpiaVeUOL/F/rjriyHN1IVO/k+RJFeX4
	 WmWQU8yb2VlxDxpTYluY2Gyr1+FXu49bVQVF/hsn/i2PfKMXvIiSPoaRlfrZWgehTG
	 Xyum3KhNBMA9XmFg9vDad6zU1yp+xNx+37pfpjcsTaKEugoibGVYsgQC9NWym5M9KL
	 M2QXYuiF4gymw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E8B3CA0FFD
	for <ddprobe@lists.linux.dev>; Sat, 30 Aug 2025 12:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175655639357.6567.1582869996663653351.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4e4a600625749f3276816a880e8364f46a7aeb40d9bc15c101bc7e546c8fdb7b
Date: Sat, 30 Aug 2025 12:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756556393
