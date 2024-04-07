Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1042A3BBD6
	for <ddprobe@lists.linux.dev>; Sun,  7 Apr 2024 19:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712518097; cv=none; b=htvdOzTeIkG4KpKKtzBV/kGaUODqyJAOYn7QyKHrMA87D1gDh/j/Co+Dswp8UwNinTPIU13dZ8ICUfG8QeIkYNWGze2cK4PHvs2YMThD+IObhM4XgK+7IQvjbLpufllst+LSkVfo5+aWU4LWwCStoVSnzbKOcnZQWqDh7FL74tM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712518097; c=relaxed/simple;
	bh=HWOg+75deWyGsMoLRW7cg2yyeI2VxShyZkCTKl9bHUc=;
	h=To:Subject:From:Message-Id:Date; b=N/4no2FIc+6nU7USK3k+n7DN+KIhYQmrN2SsqQACO2Kk0vK0oA/VGwYjvd3D/RYJLK6yiO7WVIakTgZgCVTVhkq2tyDiEYc2EkOfWsWYlbaLptlkMX4ZlXxKDoiXX1zLMrVyHs9PZloU8e2PpnGxwKrK5+ANc94ycG//BPQCdKE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Lk+d0mbc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Lk+d0mbc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 79957C433F1
	for <ddprobe@lists.linux.dev>; Sun,  7 Apr 2024 19:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712518096;
	bh=HWOg+75deWyGsMoLRW7cg2yyeI2VxShyZkCTKl9bHUc=;
	h=To:Subject:From:Date:From;
	b=Lk+d0mbcyKq73HOSVwW/E598fLYX7qHiYHv224h4pN9woRDva8iOFBAa+L0e4wth9
	 jX1RsRcFSbyvuPYCedYRHl6Kye8VjWmM5H1mo++12DBIWvgZIriarW1OJnA6F9LNOX
	 v0c9IIuuJ6+dOxV0eb11gOBHK476RC0b0oRtoz0ehrtq9zOYEDVBuBPNZ1HLu9vpEI
	 V6z6nyBvpkB9ERxIfeguz2xd/gLaFIp7cQ9SSjAktM0KcgoNzQ+jK9XgXqhQ4+MNSg
	 l6zlqv7r78bpLRlZrmbBNGFVVmnnn/QbJtwq1XMgiPfoo5kXKVw9bnlYM2RV6SqTcg
	 qaWa7dzyTJIYw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 638C8CD1292
	for <ddprobe@lists.linux.dev>; Sun,  7 Apr 2024 19:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171251809637.2426.2510105869926378699.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aafefc7e275c6df5e2f5238d083495fff8d39fca72d024c55d2cfed519b496a2
Date: Sun, 07 Apr 2024 19:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1712518096
