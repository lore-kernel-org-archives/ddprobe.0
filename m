Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33DD11A257D
	for <ddprobe@lists.linux.dev>; Sun, 11 May 2025 21:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746997795; cv=none; b=KZXQQjzb77rWZwqOCfr6M9at0nVrnJVpCBFBBb1fwqQXFGiJOPr1EItKoCPuPbGNxuhsIzCw+bthA9S4xxPnRZdugGPoeA3LjRic//235LWP1w8RKF13FQJQhOuyEpW6lG/PEvzl/JzflgY+Q0LWBzQpIg9UN32yCvvQNjxO5aw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746997795; c=relaxed/simple;
	bh=yEdZOxViHWQjpd9ceracvynvXMr2nl6/YTMdMJ3Rbbo=;
	h=To:Subject:From:Message-Id:Date; b=gHGET8/ttFZqXnP4xh2HWui8irIIUu7PgNbKAsFsMCLeErzXLyv19D97Z9bPTKPaqvFqUAoxH8E/iJVQ5JEwPYE9oJ8NkgCdFWtQSNQoghzHxdA1HWWLbb2C3UNjoeSZQbzZeuhN74OT73EbGLTwUYM2ZO/8vnX/zAQptT2v04Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jR+E+pN+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jR+E+pN+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A234BC4CEE4
	for <ddprobe@lists.linux.dev>; Sun, 11 May 2025 21:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746997793;
	bh=yEdZOxViHWQjpd9ceracvynvXMr2nl6/YTMdMJ3Rbbo=;
	h=To:Subject:From:Date:From;
	b=jR+E+pN+ug2PivJ7C978g63UwXh0b/JEWjwteJ+vQ3FalW7BbG4gr/2Eu5MaRVHe9
	 W/sVabhMCII1mgaG8Lpy7j40MC7/pAxCmRZJXf0hCgF5lSc7STpc5jC8x8JZDqBqf2
	 pKcWOKvqoDZw2DOV/JK6Sy9bv6o9rt3jBKlMBtel+npP+OiDm9ZRjXKMIJ6wBn+6j4
	 HtUhzcphlJWQAk5fJ3bSVuT1fop3wjZKGjKeqIf4NVvsvIAellgVcN+3uw8JitFP/V
	 Q5F8lwjLI8u9hjA2pkcuWYP0HLhzQNWMNH8UJ3+SLLYEzGCDhxP32SgzZ+yj9fgxnk
	 Atmh6PekQb/hA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EFF6C3ABCC
	for <ddprobe@lists.linux.dev>; Sun, 11 May 2025 21:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174699779357.23547.16148330646708724269.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 54615539cb8f96aa33f793fc21f9024fe9e6376d535dc5cef06293eddf116e2d
Date: Sun, 11 May 2025 21:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746997793
