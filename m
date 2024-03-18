Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0A39381F
	for <ddprobe@lists.linux.dev>; Mon, 18 Mar 2024 02:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710730697; cv=none; b=mLk9yKAOoVSFsg0aTcgcefu+Q3Zq8fQHFeZ2pWocgfth7eEXfx0h3AGzSRbawFQlu9XTRe4Vp3gFpgYsETlqIYU2G82wIa6oaMMD7iWT++d5w4DdDw4blRaBYlbzq/PFXRKj9qp+JFSeMw1NMe47fdTA4I2bJN9m+IV+nCXvvvI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710730697; c=relaxed/simple;
	bh=5ta5Dz4MvUiLFUIw6rx//y0y9OODDjS3mgjTxNM4aJU=;
	h=To:Subject:From:Message-Id:Date; b=Z1M9gQQ95/o3u5hOWbRsapiQ7jOKbeaDu7Hp2kgC+55myH5YPeJExFdvzKgzw6Pzkssxbh5IyfGBU55OmZYicDzRECTm3nXo1Sgi3+9DztQA04RgOhXgw2K6+aU0NbkHDfEfX8Pum4VxYssboQ8HYKq5AAhdgIcbU95vESLDL8I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HBKO7MKS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HBKO7MKS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7D7C4C433C7
	for <ddprobe@lists.linux.dev>; Mon, 18 Mar 2024 02:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1710730696;
	bh=5ta5Dz4MvUiLFUIw6rx//y0y9OODDjS3mgjTxNM4aJU=;
	h=To:Subject:From:Date:From;
	b=HBKO7MKS7aWv1IURG1xc3Jf9fH4kxCQAhx6/vnLPwc4wRxYRYrP9mUDlCusC8nySE
	 vmz2bGft//HxoJOdxuZR0jy48+1untCNtJEetLBKysgL7JJLSKe0Er9Vq5UJrJigem
	 BTyRQFVw+2NA8UYHKJEgslqvCM5yVjrelbTMzUaXGhvhx2WnPGw91m6S+TZ3i4E09c
	 xN3G27Qxfb6Xs4nIf3XLusfb37J+j8nOxfkBU8H9m5XA8rPGA06tbGIG3HOxm3zDTG
	 wvCI4WhX2QoF6CllX9L7Duzf16NfdE9HZuqCK+ev1nsK4QT8UMyvFDdl5+77j56aiZ
	 ajcYjAAKgTVug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 67281C54E60
	for <ddprobe@lists.linux.dev>; Mon, 18 Mar 2024 02:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171073069640.3500.1770802582663529415.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b72425ddffea229ae7d443f55384125888d316d0e6bd09c73cfabbbb539989e2
Date: Mon, 18 Mar 2024 02:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1710730696
