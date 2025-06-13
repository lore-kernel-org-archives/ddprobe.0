Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C48E1D5173
	for <ddprobe@lists.linux.dev>; Fri, 13 Jun 2025 03:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749785394; cv=none; b=hIdRiQ7PZlUw8bRUgmdSKQoqT93y5EUSN/XO+hJn770RJjuNbNmGKBnGLYFOQ3uwMnDiGdFyV6UZEapMv1WNaN7WzDn2SeTOyRq4KRhkzWn/GW+hWnToigij48Uvi2hxqSc/Wr9itXTHaRDlHIerBuOsoMoNh14NpGS9yryQE9o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749785394; c=relaxed/simple;
	bh=1BIu4DVLMKj238/TpTcYJFVjptdGa9c260NJLJlXecs=;
	h=To:Subject:From:Message-Id:Date; b=Si1kYmGsrdW8SA/y2mMVT+Uen9dFS22L1QFY8ZWQPoniWM7SwWBWYBt77hR0VjaJyEsVaenickoQ+gk3XMbjddD/dWPwEtDHbAYEDNmbY6ElyoG3jo1irvH8044dB27oSFnS/fI+Y8kVc49jqgYgcpCuhBBisgJq7tGea5+3OVw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CBbRUy9M; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CBbRUy9M"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AACA3C4CEEA
	for <ddprobe@lists.linux.dev>; Fri, 13 Jun 2025 03:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749785393;
	bh=1BIu4DVLMKj238/TpTcYJFVjptdGa9c260NJLJlXecs=;
	h=To:Subject:From:Date:From;
	b=CBbRUy9MT6uIW39MEwZwvJh3mIJb/HktYp8952YkoAd5wC2Dg7MbTjGFL6tFKSYVq
	 G5fzZxm6o8u1xDmZBnlIilfnonpGdiawa4d5+11woRljzw/Scx34MuL6ScTQ4Ej+ld
	 XNUPEhWipw7le8JM8IPRzh3LM8Xgdoi1NuwbgrRsSH7UhZ02XvXMpwlPJphQ0qxqWh
	 TXOcZy/6yg4HLEydSw4Ag6FcJFpL8jjSg5xMG3RNZFXe//d9y9dg6//5HZppIc4PgM
	 ZBmY6sPks01j2RRrPpr61qYFF1I7nZ6xS7AMP0X3EVab22imD6iwGv5fKKQtlFBWh3
	 iU/oC/weBPIxQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 964D2C61CE8
	for <ddprobe@lists.linux.dev>; Fri, 13 Jun 2025 03:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174978539358.17186.423358127429201262.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ba0c762c945e5522a75866354ac95e72dc2a14aa9b76fe1a32567eef1c5ae458
Date: Fri, 13 Jun 2025 03:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749785393
