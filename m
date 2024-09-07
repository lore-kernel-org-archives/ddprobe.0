Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0619F611E
	for <ddprobe@lists.linux.dev>; Sat,  7 Sep 2024 14:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725718554; cv=none; b=g+ywZTILLxZxRYYugyOSJZyB6Cg3uNjacS7y5EmXBVihmkz6vxyfhXVW6ob6/HDiEKtGJxXoRJsTDfa5NaSp0Jy0HKrZJ070EeoeU4KKwttMQAZWhoiz1LDBUw5dThHaFJx3gf0WCM1oV8OFNh9gC4sSHuWOe3fDwJyueTLWA9I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725718554; c=relaxed/simple;
	bh=B5l5w2XonemEKCISbarPDFCSdkn1H/whIe/3qCX0X+Q=;
	h=To:Subject:From:Message-Id:Date; b=L7jjq3zAlk84MonjmzR67oAQDVI2o25fQ0aecy4mx904XSW3lkJ45KtYjeUPotfMSSQDH4bFu+rtzewcABexrbeSEao8z3arMU9a+82JvbgK/TekEhdI9dtLvTOW7c/+LXt3Rvbyw1+jtQ/gWGG3sj8uzUFF1qjdtSI9Zv9NOAg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=U4gIKyFH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="U4gIKyFH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA0C5C4CEC2
	for <ddprobe@lists.linux.dev>; Sat,  7 Sep 2024 14:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1725718553;
	bh=B5l5w2XonemEKCISbarPDFCSdkn1H/whIe/3qCX0X+Q=;
	h=To:Subject:From:Date:From;
	b=U4gIKyFHP6LriQZ/nhTIltksTKhPExrA9Lxa2aQxc5UY3klEiUGnTR8L50FQkvIHP
	 7d1XM91ACzE9+3nHXE/0itMom80IOfEXLRMGxySmPvWuSZ09ovLNYOhUUnpdBkmc3m
	 ReMFXbJ7JN1DW+6KiQlZgaKe3bxA+wYcOSSrT6OquhheUkTCvN9DXqqOQE4remfaJF
	 8H4oG4q5RrUudWpszWthbSo2x6B4rU09gt9BPjO2Lu5jbyk/DG0K9CP60w06c63hwl
	 yw8Ub6nz6gS4QPgSEn8cCSD6rsyuZJW4iRnX2BbpsIZOZJzxS1CiuJAcLMXu/gWk7e
	 xbatPRhrx5asA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95D1AEB64C5
	for <ddprobe@lists.linux.dev>; Sat,  7 Sep 2024 14:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172571855357.19410.10447164882430320684.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5571790749c5cf09e2f768e65c46c9ffcb19ce87f00833544c6bf750f6b3ac46
Date: Sat, 07 Sep 2024 14:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1725718553
