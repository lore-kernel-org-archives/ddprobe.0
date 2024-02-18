Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E75EC1E86E
	for <ddprobe@lists.linux.dev>; Sun, 18 Feb 2024 18:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708279697; cv=none; b=os0HggH0AGL6QMrGM2mm6aU0Zt8BDxqGSHCB8RNBKUwraiZOYm4ioArkZGQAaAuwSH3bNHVda1MoDGy9JzG2LIallFRwWhSmqUJ3xHmgd+Fc0uhfNSR+aXuhSB+0AtOG28j0uCaTGhnnWe3mtptwSKB7aR3ojitx7isrmzgKlPI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708279697; c=relaxed/simple;
	bh=QCSjInxgkMlwVUDu41DOIxJiZcGGAKa4VvphHPd53jo=;
	h=To:Subject:From:Message-Id:Date; b=bmQ7YMzcDbuqSZ+AhUxHpmna/fG/8UUVE/yM/bl5tCbTuT0xdQKKTeeJweSTw1Sb/l6JbfIzH7RAlUbU+AmnMdHwUr1O2XklQX7KVWRfzgZXdaTiRmBE5ymyLASH2V/Ucs6Ykr1ylQI2JMQvXByLLUQ0DS24ZUKAYcSiHDOxx+Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Nt/PotCo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Nt/PotCo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7837FC433F1
	for <ddprobe@lists.linux.dev>; Sun, 18 Feb 2024 18:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1708279696;
	bh=QCSjInxgkMlwVUDu41DOIxJiZcGGAKa4VvphHPd53jo=;
	h=To:Subject:From:Date:From;
	b=Nt/PotCo3eNSNIZuyxqfzFVVWuawlTi+D8aYlgSjmcUydWGVxi2fWXUw2dj35RAuR
	 W1tP0zRkPbGRTGfQ2+EWjCwrMIwSA4F4GJZ24GyXwFl7R3nPXJEk4qBcH01gdoLHtW
	 FEU7WIoCACGK9NnsQzK1eRIfozrwO/IvldQorSWAhXONQBGa6Okbsec/XuUlnncLb9
	 fEx2cVXb+8fAEvmhw9tszBY/MbMMvjGmd1yX1BLGtst6czbPFLoLxkg+Oxi9SFZ9+h
	 X4mVBJSqjUHrtEN/2Vbpt9OSPRg8crCX1clkuL5UyWjLD0tBxtra94Rz25pn7OJp/y
	 cwPAFbQFQij9A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 607E2C48BC4
	for <ddprobe@lists.linux.dev>; Sun, 18 Feb 2024 18:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170827969636.13216.8964716451300125286.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 37781a2fa2e645a3edeb26998578ff946ee4454a7ec63ef996e94bb735a822e0
Date: Sun, 18 Feb 2024 18:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1708279696
