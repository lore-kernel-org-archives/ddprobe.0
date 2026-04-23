Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 206862F7AC1
	for <ddprobe@lists.linux.dev>; Thu, 23 Apr 2026 20:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776976054; cv=none; b=RSRFL1Sm0g+qNBi5Ga7ijFsnYQBywvbJmXMYu9ryeXtD4/2pSxhe1X1Kl+AN3RqPEQ+aeN+0dSiHY40fks688RwyXubQN0G1fBWXP4SPJC5XrV7LGD0AXEoEaA2XaJxExRM+ZSS4BO9GS4K/2/cApik+S6R4qdjHH4FBYy9InpE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776976054; c=relaxed/simple;
	bh=/Blq9YZFL1i/f4/Gw/KroFqCaXIFei3fXvVrNmTJVVE=;
	h=To:Subject:From:Message-Id:Date; b=CYjp4UPTI3x8nSgbMXxL6Woc+fzVmyOk7EFcenDTDPXCicYvKwQte2kU2liwwFHFCs3rQITs7DPJO6AZjMBwx6xE4El9nlisz+h/ehFPQbCuDdyt8sacT20KOtaLB0T/tG63PC5pFtfBkV3oO4fds6RnzEGDGNXQXN8fql22XNI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=m8871Dxi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="m8871Dxi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C277BC2BCAF
	for <ddprobe@lists.linux.dev>; Thu, 23 Apr 2026 20:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776976053;
	bh=/Blq9YZFL1i/f4/Gw/KroFqCaXIFei3fXvVrNmTJVVE=;
	h=To:Subject:From:Date:From;
	b=m8871Dxi2Sox0tpGHuNjCOz+b+KfNUya2PHmOJCc6nxXXh1Z7ehP0TGCovt1dcXwe
	 DlUQIEYAbBjDZCyyN409C3s41Z//1zTRzZ9zlyUfTfF2xHi6/e7zKdb1j3uOxyS/L7
	 izZtTjktMu0w5pw4jGHSWbDocWyRkVJH7lEJ/jXyRkh1jWlMnBUI6NW2JqluQvGapm
	 GXqUhnFV4hIgpENqjfMCqCReNRpAuceVypW59skNKbCqvku6iv9ZyBMJWgOXZViHdN
	 H3sxaRwicqsB8G5X8EXgTyJlCbkP+aqeYgop3yp1mFG5pRBY6455p+ZQLeCVqoMSl3
	 xxDwV0GutubZQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFEDDFDEE49
	for <ddprobe@lists.linux.dev>; Thu, 23 Apr 2026 20:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177697605368.9645.8646408835922767884.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c98bb2e6e07b6a89b9626189dc6c33c484adb67787158495b5a2adefe7323ae8
Date: Thu, 23 Apr 2026 20:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776976053
