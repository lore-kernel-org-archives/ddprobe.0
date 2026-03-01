Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0A06430F7FB
	for <ddprobe@lists.linux.dev>; Sun,  1 Mar 2026 17:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772385894; cv=none; b=WlyT7Mjrco8JiD7tLg3j4iK3kZ/t0hhp+6shWQatXu6TO0bIZIcNxnbiKjaoSOFwTBeTEk+Yct6urP9JAlxHgxf0QT3pxEGM5svSzQ/Muur7pEhJbfLggQB0x+8LciI9kHM3q9RRZ+JToDOp0O3dbSn2aSjDAO5QRESc3sJSETU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772385894; c=relaxed/simple;
	bh=UwwOKFVe+JZnzv9tLVav9VVzHzauu1KIyvI/K+F+oMk=;
	h=To:Subject:From:Message-Id:Date; b=Im7NxkA0WaTQYNTGlQcQRgEAtZv+sHBMpkl2ET1dPn6GKrJ4eUeM1nUhby9OPVbQpsl4GO9I8qvA5VHpqcqU606QvjppvWu9Gdxhceitq4QOjFpecR8kGdVByO3fArzq2EJDdLFSaJvoyubAGBhIwM2u1p8362ogoQe/J5FLtaY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vBTcqjiA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vBTcqjiA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2A0BC116C6
	for <ddprobe@lists.linux.dev>; Sun,  1 Mar 2026 17:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772385893;
	bh=UwwOKFVe+JZnzv9tLVav9VVzHzauu1KIyvI/K+F+oMk=;
	h=To:Subject:From:Date:From;
	b=vBTcqjiAWs/HDfcQjCtUEIpXPd/YyFET7tYdM+vf5RZp/yAWL+UHIrfpSsEwh9QDR
	 yGpMeGf+TmsLNTOrJvbqxh1Iw2i5MmN+cQ9/fuY5/85JEkGGoaJsFjP6gtNVBMHmbQ
	 e55x7i3oNMRglLsxLZPKYyK/P8USsdM/DGZluS5Nzqb3rOQod7TN2m6F/PyCES83Pg
	 fwpG5bOpsGv5SZ2gQbCR2XsiwLhY/0GIilsbbw89hzrkB8bDdebqPJvigLY+2q0DYK
	 i7L8sDpCfOQKka66utK1PVmOPpT9cqGf3QPZ6TEqNDnNCXSuLuiMMy3eYeJp7vnK+O
	 +RAH/9rxwTTZw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A918FD006D
	for <ddprobe@lists.linux.dev>; Sun,  1 Mar 2026 17:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177238589360.25938.8938204669940830090.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5044e2ca1f33d1cf226233e115ff11607ae1867b5cba555a9ee54e66a72dd986
Date: Sun, 01 Mar 2026 17:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772385893
