Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 396AA1A6820
	for <ddprobe@lists.linux.dev>; Sat, 13 Jun 2026 03:56:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781322994; cv=none; b=i+JXXhcxxYhksybkmyutsSAUFvCPOmLC+DX1JoaH3Z0tRA3omaJICj7mh0lF3dUxzTZEbSiSQN0ljiOj4y73RO8vwatLZr30CxWiBcGzuKHPpi6/QECuXrUV3yUIoCurnLpOlKrx1aZcpyMBJeWjpP6pXWG1Y9+TxcHLWV4YX/g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781322994; c=relaxed/simple;
	bh=PqoT3XYgvwc8jXCr5deskCIu01dPScpAKpRKgQYVhNg=;
	h=To:Subject:From:Message-Id:Date; b=ESYRWwcSYDlH/YZE+hXpLOrKwbwYvVZgBeMrsf0gysYr6V4gAXFWh/0HCeBBA7q8MCGxinPWrLXOJVrRRoxguwaSX/SNiAdYE30ooZHptgOYFXEZc+RRj8rli+aLSXoMeEfPZkCQ48WD2Qbto9RfaCdy5nQHbtM3YUD8s+cM/c4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GBAoKvFI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GBAoKvFI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB5FCC19425
	for <ddprobe@lists.linux.dev>; Sat, 13 Jun 2026 03:56:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781322993;
	bh=PqoT3XYgvwc8jXCr5deskCIu01dPScpAKpRKgQYVhNg=;
	h=To:Subject:From:Date:From;
	b=GBAoKvFIT7fLfPhEpRO8iXmrDES039RQxJ+9GY9LrPpIEqZkuIDpdRvg8QxMeRrhQ
	 S1+h1R6ota0w40kcsZHFIUpHJPucAOWMHvzjFr8OudfpR0phIK1T6qguO4/u2hnNas
	 YVBnxDvkUMtMtP46auEPsZGSdb2wZh7GUDaYFO3+mf8gqPmJYY86q5O8w/jnTbmvju
	 9KBvqrRVB8jDfXOHhgwj6iLUKC6YwEp5lfGLFnB/pn9yhLJKKRx1CKt6bZnT05ifUQ
	 LHDPP1rn2/BHxm/gzUceT5l46sZJW5MNuJsU7byayiGti56xl9tscqTdNOQO7ywmMk
	 BQ5dsHzM998VA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAA74CD98D2
	for <ddprobe@lists.linux.dev>; Sat, 13 Jun 2026 03:56:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178132299368.23524.5425724620941152628.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8efa67f4db2d5971e300b8a71a7eaa8ca753476c0c24dc7fe8911cdf23ca7611
Date: Sat, 13 Jun 2026 03:56:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781322993
