Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D67E12AD2C
	for <ddprobe@lists.linux.dev>; Fri, 26 Dec 2025 13:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766754833; cv=none; b=nzTppn3bHIRVDJQFsS1vZUjbNMv5lcyrrNYHbPnijgy0Rrk9G2ZaPiKlu1/14I5i2G+YjDa4eXTIlbNeUmOHadQLKawhidYi6WNDXbVMbkA4fG9etuvIodvby+5Sf3ADqp22pHNjfRkBJLevOFX1Juu4Vw+ZJiWYwCYaQYpldeU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766754833; c=relaxed/simple;
	bh=PuUlXL99nYoTPNyKEEC6Duu5P3wUIq9O8cvWxcKGhcI=;
	h=To:Subject:From:Message-Id:Date; b=hAX44IykuK8attAioVZrFj6vwZ975CKz8VJODXMzmi0P+QLaP/Atjl3+BCHJdWUjEgmK+Z/7X4XIj8xqQouRZ8avw1Q8c6+5O+fAzE9s72RT0I8C1RfUJ6BHk9dxwvjHNMUWfXea+1+nQextGlLA7Fa6jZ5jOSZ1s73qdwoe6xI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=L/KGYP7C; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="L/KGYP7C"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B42FBC4CEF7
	for <ddprobe@lists.linux.dev>; Fri, 26 Dec 2025 13:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766754833;
	bh=PuUlXL99nYoTPNyKEEC6Duu5P3wUIq9O8cvWxcKGhcI=;
	h=To:Subject:From:Date:From;
	b=L/KGYP7CCszB0u0ZOWiHZSg/tyYwYesq8HblodzRFOTA2Yb4/17nCoTsDt8cbMBTc
	 7Y67k69kw3Qg0zggVIX9TkV60VlCItahvtNEaEtuPu+1TYVHKL9QiCuIghlThhC9WH
	 CQYxwSw4usbekP9hihG29TwLfYGXtuXHe3PW8N5228FaDvEBcFDd6W66WedzCefXyx
	 sn/TtJCJVg0oVOuTBhZbMKpV7YFupN5I/0XeiOKksa4vLf3rwwjHdWizjSvs0/03Ai
	 5vUBtqLosUq5CEfLwJUj0oaK6xVr8mv8q2OzUtbVY3jTTICPx8OsI5+ofOvQYtJ4fx
	 8JzkZVaZmnlAQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F1E5E8FDA3
	for <ddprobe@lists.linux.dev>; Fri, 26 Dec 2025 13:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176675483363.23160.12425290692182908064.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ce3cab1560c2e97ca207e7ac269a9e8a94b27c044b62f166d9b37d177fdf4cc7
Date: Fri, 26 Dec 2025 13:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766754833
