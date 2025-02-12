Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 270CE3C00
	for <ddprobe@lists.linux.dev>; Wed, 12 Feb 2025 00:10:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739319054; cv=none; b=okSdHAvVwrJnimm5uBMd80hEYaW4RzV+eyLGQqC30YcIQ36nwax5YlarE18IOwiS2Ig7c+ojnpIET9jIkiVi25cL27xYj/6jLAuHQy3FF0a2zEX7XfCnSXxEfsiE9sEaZ/cx0OT61t0HAaYe8mAQQqEmNSpbEFDwznjK0ZS3b/g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739319054; c=relaxed/simple;
	bh=0G6BKWXP0XY9WaUbJgC5KyvQoN1ZwIZeKAWVArdREeI=;
	h=To:Subject:From:Message-Id:Date; b=f0TMn4O0D2NmVXvbK2Ht7zY1PCV+6gHnUsSoMXORpTbd8l1ulySzZV1wAiaMHVt5olMppCbLD5EPaiTJWqp831Lhw2F2moUz8DuVrdfb1EanFLTCHhsVSwbWcU2nZoMS1SADk+OEMA7oqQ/5W8z0KIGNZ59tRULY63mlifRN0iw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gXIMHNUh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gXIMHNUh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A85ADC4CEDD
	for <ddprobe@lists.linux.dev>; Wed, 12 Feb 2025 00:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739319053;
	bh=0G6BKWXP0XY9WaUbJgC5KyvQoN1ZwIZeKAWVArdREeI=;
	h=To:Subject:From:Date:From;
	b=gXIMHNUhguzIlGsfmsuX5LsPBzK2aLxtVtZwEmEzJiPZJoFvRSSi7z8adeaIBEaNP
	 PjVB95UGpBeN3nBc2w86fjkIUUIsEzTsBTxKzb6+x2W+oKEA3UqHfiNwS1F97BRnXM
	 7U8xlXEPaVhAxscTH2CeQBHEYtHooCgFrqH6uDRW42ivbDj3tL9wFf5y8xsrQ60LM+
	 e4N+fKMA9R3gG7UVSus0KKkpJAd4Rvl1bgRha+QmCUvRcyIlHu7X4IEYE8zoJcTwwg
	 fALI0RzQ/G1zH+tuJ/RIVFum+2rmnHnTJlr6wsdCKAVvHOPFO6OP4pEr+CXLudGs5R
	 y13aR3JzvMX7A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A821C021A0
	for <ddprobe@lists.linux.dev>; Wed, 12 Feb 2025 00:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173931905362.19549.12920183996485575369.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5720e9496f4ece06883e5a27acf09f953bdc8a0a5ab7e935c41f75b564efb846
Date: Wed, 12 Feb 2025 00:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739319053
