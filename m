Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 239571FE471
	for <ddprobe@lists.linux.dev>; Sun, 21 Sep 2025 19:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758481794; cv=none; b=LhfXz1yzMxY0/mTOo7LFHFIZRUKQRKbNYTd+fxbUUMMOty6Ot5+yahWvzzoZ7NilfDPGvh0T/ZFpSZy4tlS5TgmlHRGk8+llQ60KFwCElm+QYeVaAT2D/6w5v90zn/aDxqd9WG1yKmGkFQghjVchbJmkvDjvYB6mg3qFku6FTKo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758481794; c=relaxed/simple;
	bh=sVoF+8HslHmirfGvf0I67buC7qT9kKuoxUPbR/SpQ68=;
	h=To:Subject:From:Message-Id:Date; b=jsNC9RNzybxN/1fI98PGjSgWlgDBl5mdtKpR0BVQD01FUhHNYuW9GHr+ScjdRi29Wxfrg+4yJmGgOQ4nLzqVj509i99QbG+yxWqCNdI/JpKJJ1RitBcXM+2+7GDfsRgfLLHorv/0lp6Z6OHYOV536d94vq8kHGrs+OZslyUlAW0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZdBcAL3N; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZdBcAL3N"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6E34C4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 21 Sep 2025 19:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758481793;
	bh=sVoF+8HslHmirfGvf0I67buC7qT9kKuoxUPbR/SpQ68=;
	h=To:Subject:From:Date:From;
	b=ZdBcAL3NBpjfk7mQVBnQUMrZtHG1sF6jEZNXrLGohqZNpd6/2SjptKAOy4lZUZuYO
	 ZlOz57C+zScx6isISSf+uU/D/k8RtsO3nrJmFEhqLh0lmIdbXUfAmt23kD1tONV7/B
	 cQ2N/FAu7H/XLaPmZUMw5v0SnSosRKZTcdIDW3g8D2/9ViDR0QPo1eUigs0/wrQTM0
	 FFocSBgSAZI7yIPuQko0lTsMkNJUG7Y7+EIhijRS3FuwdC38cLrB3hWWPqQ7830Xjp
	 Wg6sTxfq02L5Vzi02Tz0xlGC1CAb+37dPjGqyBqCk+fY/mpKl686GJdmbPOMJivUy9
	 VSrVGMOX4nN1g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95AA9CAC5A7
	for <ddprobe@lists.linux.dev>; Sun, 21 Sep 2025 19:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175848179358.3273.15631960506314281458.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 018f5a0b903b294ad71a656516cda0845577272788c3c3056edfac708e39d9bb
Date: Sun, 21 Sep 2025 19:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758481793
