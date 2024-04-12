Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 446F354BDB
	for <ddprobe@lists.linux.dev>; Fri, 12 Apr 2024 11:19:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712920763; cv=none; b=L4mUwrLjpd/ZMMG5fZHYaOzIJdFJsEFzTMJHXigxD23+5Q9jyPFFjAJzxkV7u+17UfxjSa/ajMYlf9CXAr3+fcyOrOmm4nirWTDFh+s/pwXl6ngR8e3Qv44IMHF2Z5/WoRdsokmqDy8bANab3eldFd0D4xahDgdBNfK68c3nT1Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712920763; c=relaxed/simple;
	bh=z/nTxv0ZplhKrNB6+/bTxLb0miM/CGwcM8zyfFVCkTw=;
	h=To:Subject:From:Message-Id:Date; b=m7nYPORAiOMM+oRA/eTr8kxV9YxhN9F3O0sNk310BaLhlMuzgpy4aI45DLu6V/rD0TCdtYnu4eOJ/xVZU1OdSgutzipTB8tFGI1T07yGCQu3w3K1PTlR8dUWdH28AOku1ryJl22ycRXgaDBt5ZWZKaXOZHoTzk8/lJF2c0bbvAY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=k1CdgA0x; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="k1CdgA0x"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3CC5C113CC
	for <ddprobe@lists.linux.dev>; Fri, 12 Apr 2024 11:19:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712920762;
	bh=z/nTxv0ZplhKrNB6+/bTxLb0miM/CGwcM8zyfFVCkTw=;
	h=To:Subject:From:Date:From;
	b=k1CdgA0xxl7JSsr50h3jifgPj4nQy62Zi9b7ONyLj+xpb87YOOMnYeG4FDD6x9oVN
	 JV9xUdGaKcc8/c2hOmfj8U+PyussZWPtAxAiRTk/Vg833kD6mqCUQ4EyTAeUperPvF
	 gr6dK5FBOcEsayXPKPq03kaz5d5onRpBbTKGj9GGt0JXtxMHSqC8s7DE7obovl0c47
	 kiwxra1cFqri/ruSdxcWuRT0QwPgaeF3mLeIWDqfIL1B4TvHJJJqbQJCIlvCztM9Xm
	 Fyvz2Pam0epaqmDJlxwccOqwZlNsUeveQ3haSU6dQ0rFAa4wk9eV6SEsC/PcOd6vsr
	 1KLXAKQuJjIag==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C0C50C4345F
	for <ddprobe@lists.linux.dev>; Fri, 12 Apr 2024 11:19:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171292076276.8633.9814622782327388773.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ca6bf074e599c2841fe975cbcf8a6144cc40025d764bf72257cbf04c2a5cc4af
Date: Fri, 12 Apr 2024 11:19:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1712920762
