Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36B4A1922F1
	for <ddprobe@lists.linux.dev>; Thu, 31 Oct 2024 22:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730412954; cv=none; b=TgPrfyhJBmOp2h6FMY1l0+E50A5Lk9Tn3BpeKJBsqRcEYIdmdHUst+DNjP3t/+i6sRQJd2yBvQLz0bDwY8bdB8h4VGfMbdHyK2wKxfAVOJP0V7i9LyMmHu/eYUnvTeMbWk9E3ZHXyrAV2d1P+gUNFoWozjHEmu3MQH+trnHgPL4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730412954; c=relaxed/simple;
	bh=ZtdZ+7XTeJ1hBQQ+rQrIKMx+rN+eYWSVJHxro1U7GJc=;
	h=To:Subject:From:Message-Id:Date; b=hQz5vz7uZdcbUwg15VLRo1hEgAPv1uaOnOToKIZagzxPqqchGy+n7QuH06tulrfi8tIwf+lyIf2MQKNAf8rWb/4ufP3rzHPWTnbRMF8CYl6xtdffbwJgPZJRotTanNESzjfmEKtm5v3buyTKCD/A3QLsaLSbtoqKYYtmyeM/LTw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OuVagW0X; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OuVagW0X"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A87C7C4CEC3
	for <ddprobe@lists.linux.dev>; Thu, 31 Oct 2024 22:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1730412953;
	bh=ZtdZ+7XTeJ1hBQQ+rQrIKMx+rN+eYWSVJHxro1U7GJc=;
	h=To:Subject:From:Date:From;
	b=OuVagW0XLDRMXaMTgwaot7W3jKUDOC1PrfWDvVva2Y310mjpcIO+yb6jdsF1r1EJf
	 n4K06UHzhTOwNenSaY8EAH2KawQNDZajL46lq/ucjZ9hWu6ImMch5/Sqv0HPCPL56Y
	 ETsC4cRb3lsCcv7cOT5ETwhiEWOoSlI1w7D+ISY/D/8wGh7REhSUqxpw1rAjqs5j4F
	 CZ8a0EPlrp1giIDd5NmAQwUu4JuqcrR0oaWWiOunm8WDAtMQA7MnRPZovXGBynYKw+
	 P75iAybXPkAcSwJ98lC1f2L3i9XFwse3Yog8KIqxOCPYZ3DAJuvmEludGlxo4+TRV9
	 PlZSv5etU9CIg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95F33E67485
	for <ddprobe@lists.linux.dev>; Thu, 31 Oct 2024 22:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173041295360.20921.1815681014527566890.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d32ea407b4e20c8585fcc768529fef787610071fa88120ee0fe6f2718bbb76be
Date: Thu, 31 Oct 2024 22:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1730412953
