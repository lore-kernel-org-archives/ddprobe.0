Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5B077463B6C
	for <ddprobe@lists.linux.dev>; Mon, 17 Aug 2026 17:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786986634; cv=none; b=ndxbtMLcPg6habc7vTc4dwPF5orYWM4/fV5h0Nbu8uMLHDPz3gVwh6woLCAjnRjb5ZVs6KX/dw3dKGoQ+8eOMwAM4xorJOzoqXHWu8COwUJHp/Q08g2EKEBH6cbj9+3Z0Rzpe+kRud8HJ80NK09/6U4uTxXebXQlPh6Q/skixTc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786986634; c=relaxed/simple;
	bh=aX8SJK8FuI1+hQi7BMvG8d3Z7zYWGD9QxpHwSJ90Gd0=;
	h=To:Subject:From:Message-Id:Date; b=PjIa1CHtvLKDBrt4F0IPU2cCaNXDUhVp8bFHYcyx6KAeRRxyr2ro6CVEiPQsyXaxDmca3y+/OdTtKvPjHGGKMOtN+1AAq7/yRzZF89zpiDDvx+w57dZA59tjkjaU5g96MdlQPySbzyTxJUXEGEpAEZK4nq5SVUezV7vOFhxqkLk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aRhXa4dO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aRhXa4dO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DF890C2BCB3
	for <ddprobe@lists.linux.dev>; Mon, 17 Aug 2026 17:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786986633;
	bh=aX8SJK8FuI1+hQi7BMvG8d3Z7zYWGD9QxpHwSJ90Gd0=;
	h=To:Subject:From:Date:From;
	b=aRhXa4dOdY5dGhlg975HJCbBM8PATmK/G8BUL9YyTz4JneAOZxJwh6gL6072MgVCJ
	 XubQu1JlgIl35WdNNBFxIIN+UtJ6CVMS8hZUm2JGIrWLgWi1GiJ30qAWPz33gu5zK6
	 ynDCBSNQORp6J6J0esfAQlAZkjsrVdvSNqdW+540sn76u8RS2fyHXNrDVVL41ncThr
	 FmDi5FqWIlbA/Wsw8F8wH6R2nwRONCi1usqb1bKTd7TQ7C7gRWx8oBZa38qquA8RRh
	 +Zb0Yqof3BS42tmroLxYgpZhgBipJSWld4rG3Zj07v36MEOsdo41CqF+Hb/Pqou6JB
	 4nV7yRtegzhYg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B6D57C5B572
	for <ddprobe@lists.linux.dev>; Mon, 17 Aug 2026 17:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178698663373.17076.3658324530157396552.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 879ef9adfd6f3ca872d8601f09d533d7dbcc2e245b370caa8557240538a7836a
Date: Mon, 17 Aug 2026 17:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786986633
