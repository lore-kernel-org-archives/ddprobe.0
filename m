Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 92AF638B
	for <ddprobe@lists.linux.dev>; Sun, 23 Jun 2024 04:32:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719117143; cv=none; b=AotJAseBULPW9D2AaTobYI8Ie3tZHOV5MzWp3W1sb3zllLBz0B4TL8cTn9Ko2cR2Nn49R4GWOHBsBy2MNFQqffubZm1oCt4BffasVoEaddtrz5WbIVk+9C5ztjwpSlMEbWgn+0HfkTJSs1Lk52K0ZSAQNJakkq79hNOYzjNMVA0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719117143; c=relaxed/simple;
	bh=a5xner7Yxg7/XqGs2r8YdC54Y2l9ph+yGfP9Up6GdAA=;
	h=To:Subject:From:Message-Id:Date; b=rjm8t/m5TI7g5cmpavlWhNQ0bX5LY0Cv+4L09/U9rba6QdQ5LtdnjmeugAVUoLxnJi7ZuWKLV/3+clmBFUX6fcHG8rL1FbeflapLfraIVykSLpD8DfJrLjHNZoQvwtXXAovAx7HCiF5OQTx3Z/J4QJ2ME076Lt798f4Xp3SMzIk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YIR/yN8T; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YIR/yN8T"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 0861FC2BD10
	for <ddprobe@lists.linux.dev>; Sun, 23 Jun 2024 04:32:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719117143;
	bh=a5xner7Yxg7/XqGs2r8YdC54Y2l9ph+yGfP9Up6GdAA=;
	h=To:Subject:From:Date:From;
	b=YIR/yN8TBQLeT/ndUHVaN8NTxTIwjgRw/4T5DxCB7VwfX4k65G9FlK1YyZ7aZnH5q
	 ef41Vfqq/ARfDjA3v52oFWWLDOvhnz5/Dmm9rLz7gn00Oqn/E/tZT2/dctG8k5nPDQ
	 iylyd5NOyUE33OSDm/ZeO8XlnWBN93TxDBOOlIiRojn2pDsl0MoO3JLWfTzVKlGeik
	 7k1Ljs3p5NThc81GoakCwnbE8lzZfVOuoUAirqvsYxQQEtj3ieQw777y2+ESK+9aoD
	 KK6XWpd2BhmTYqsMbqeF1/VBAjBTDsDjwFKTcK7r3Fn6n4LGefkw9NBaSuyjn/k3y5
	 B1HNI/Hk1PgiA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E31C4C27C4F
	for <ddprobe@lists.linux.dev>; Sun, 23 Jun 2024 04:32:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171911714290.19371.13132702931761718133.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c5549168903614b0d04d668a39739a6050946d70de1504af4493095d1d2fd021
Date: Sun, 23 Jun 2024 04:32:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719117142
