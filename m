Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FA753CCFC3
	for <ddprobe@lists.linux.dev>; Thu, 16 Apr 2026 14:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776349054; cv=none; b=dgdlqcqIdqccW32cvwUKISHSG+faSj669JtiQt9I8na0pIgG8tymNPKkZTF5rWSPTBR+6p6mpHpZ7O+l+U7nau2ZKZQN8dBLAbNc5T5JSGBhhu2xaAMbxXF2Cpf3WUaocERzzCTgZsAjqcQoKqlja9xBerBx9c8a8aq0Ty+uY0g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776349054; c=relaxed/simple;
	bh=xHQ9u69IrFP+FK/LpV03xdFi3Ocv2SePKX1XA9Teap8=;
	h=To:Subject:From:Message-Id:Date; b=hEw8nI5x4+UmGmZ8jlGNDzLDGxwCwWavS80NIg2dh1sKCzMn3F8szuDpGlAwLXO5Lvyvp1tdcXd6Ijqkz8qwsgdo25Zi+1YseDo782AOOFU3Taz43fIm1sU7la7AGd/xKTn6gD4I1hBsZYHpihYNsIzUWgQ0k/0rw6tVeeE8nt4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TYb5Rq4Y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TYb5Rq4Y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BBAF7C2BCAF
	for <ddprobe@lists.linux.dev>; Thu, 16 Apr 2026 14:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776349053;
	bh=xHQ9u69IrFP+FK/LpV03xdFi3Ocv2SePKX1XA9Teap8=;
	h=To:Subject:From:Date:From;
	b=TYb5Rq4YgFWmiJIMote/BKt47y0/YhxQHw6gWS9ctZbXob5s035yGJXuhXecIpbA4
	 3hnq5LYVxuHM+iRbUvgdfKuZGsmeLHWJ5cAZ2TH/w1WdB1GWCOIyWRBcSGd+pTwZwq
	 TRPQXhKNmJkSKdtoImNvzCmrBPpQHx+etsb38Mmd+BxFndc8XYM5tu9rnN0D2weiCd
	 RZmP879sNA5P67Sq1UG68+2yE+PCtgpSIVhGN1B3oQFHyDI2JvH91HV5HBcJdM3N3R
	 W24xmw3xgAuAnqdq3zmtpygGNcKIfcLJwEEl73ZsGmBWiusj+GBhbSyEIA8Na9jzL7
	 aQhGXe9n8d+GA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA1EBF8D74B
	for <ddprobe@lists.linux.dev>; Thu, 16 Apr 2026 14:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177634905368.3308.12432385058410306043.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 94970f2cba789cb768af70c22358b292f5dc7eda93f24b19c577a857fb10db87
Date: Thu, 16 Apr 2026 14:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776349053
