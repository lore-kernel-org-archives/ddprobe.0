Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3891717E4
	for <ddprobe@lists.linux.dev>; Sat, 17 May 2025 19:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747511394; cv=none; b=u9lp3NlNqKZnYLTdnLEAUCRgyqaFqEvay79pFrCXqn8aL894/3OBAf33a7XqngYh0evt3F6iG1y13Mc5OPEF0vku3/dVANp29NbHkbpJ1zk259Q0k2wPNBbUq8PEtC+u6vWmQTSEb79yAXVtFmMfru0xAb4SwVJwywf08JPS5P0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747511394; c=relaxed/simple;
	bh=9RF+9w7LoI26ngxhn+rwebgnpjp2Lw2dWUYyhxqls1Y=;
	h=To:Subject:From:Message-Id:Date; b=qnER7vCwYXwX7lk6crNBcV4ZycTKk8Exw7/5n5XOhQW7uZqPWRnNrWx6ZL1VB6i6sjPEC75enyRFVIY1uDG6JXNSlHRz3BM+qfOBMVzUtcp0cQB1vShXAqPSovPh7MaXp92xCRWvxOBiHgnmsullolPBYdSvz1eMt5doOOpPMcM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tLdxGBr1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tLdxGBr1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7A0CC4CEE3
	for <ddprobe@lists.linux.dev>; Sat, 17 May 2025 19:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747511393;
	bh=9RF+9w7LoI26ngxhn+rwebgnpjp2Lw2dWUYyhxqls1Y=;
	h=To:Subject:From:Date:From;
	b=tLdxGBr1fWBaNxQbipOleSUUqzZjcWc1mpLL02+PrDVfafZEkW0hFi8bQ1wWsYqTF
	 QTnfXy/t0oGtbdvoLVPISlNru548BmDjptl50OwhYBYSFM2YSkBjubbsiPhYA9BKHd
	 oao06+/6xQrLrjSA1aJVj4kCWYW85GIQNMYxBRRcyguyCNSVXgw1e1sj+X9g2SHXsI
	 xazRfFqTIhH/VNc+SCf0jVzsHLtvpfkS9lI7lShYTwOtZYSCRapN+KHaibh71T5rsi
	 lUGvDHm9PJUg864oelcoZ0u3OAnixQ5giKhEm1Tc+gEuGNPrapCe0Akh687yOwC7fy
	 RgaozR7ONnCcQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 931B3C2D0CD
	for <ddprobe@lists.linux.dev>; Sat, 17 May 2025 19:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174751139358.16063.18008357350760013266.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0c7a59a1ea4efc88a136ccf0fa3f740b236f905cae440072d8b0cf521fe6fd51
Date: Sat, 17 May 2025 19:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747511393
