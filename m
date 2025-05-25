Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 348D81FC0FA
	for <ddprobe@lists.linux.dev>; Sun, 25 May 2025 17:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748193594; cv=none; b=OWQaCplGoHh6n3gx/iNIhamIfur+/03pnvoh48OtbSqX/pBuyj90G2VDJt6us/8XguUCbvd3ok+7VjzOCx/J3LSWO7bGqsjic5HpcReMjZIdUxP4ZvAvl6XzPMfUU4slweyo34gMw+Ry4NILX1esSNUbD0gC3TYuuGN2fkzymxY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748193594; c=relaxed/simple;
	bh=NDONwq8MDn2b52ySP/zxtRhrBfJHd2HpWz14y3jJnB8=;
	h=To:Subject:From:Message-Id:Date; b=dkCYGeVn2Lt4AMhos3MXltRFrqzFqjQrcfTT4YVnSkjWKo4nB3w5gO4PD4lAV9xA9OGW1SV4zBb+0OUYtzazNf3dpvR6vAJQFRUL80TSOb9m9/juQz2CZMeYtjJLqIglH0OPofjQk4Bx5Lnq/ixBTetF2zaodZpUHFvGAnID/Us=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bU9L3f8b; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bU9L3f8b"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4F19C4CEEA
	for <ddprobe@lists.linux.dev>; Sun, 25 May 2025 17:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748193593;
	bh=NDONwq8MDn2b52ySP/zxtRhrBfJHd2HpWz14y3jJnB8=;
	h=To:Subject:From:Date:From;
	b=bU9L3f8bYQoB4e2v6W1XzzOym0cJ4F9FMws4WsOp3LO6QX38cCnbPeUUkstMZnEWe
	 iXzaRiokj8kGcfM32ooGukgLnX56Xx7jYFLchJjI+gP7x8UNhhbG80ufs6CEmA396t
	 P/FVqFURkeGNm/8YzJRBn6nPtchnmQIM2jLtuvBP7UTSb1BQnGgBQwTnWXmv7TPZFT
	 y7Rcol4b/Hk8IRPbZCRzTQBDVkf2PIZecCs8I3DIjAHcUmh3cBjZtqaleqfT4D4o3B
	 iKji9Z/fxaMpDmwCAAQ2868wbFrc09krMUTst7Xzd7+Qq2xcj9HHNOuWk+riNEnQ8w
	 hbEkzb9YjfFLw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94607C54E90
	for <ddprobe@lists.linux.dev>; Sun, 25 May 2025 17:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174819359357.24037.5370744780260909866.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e62bf2d8ba1e3cb5ee5326d3a7129da4e4fb98febfa14f0309c1786d4f1e54f9
Date: Sun, 25 May 2025 17:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748193593
