Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38F6D43CEFE
	for <ddprobe@lists.linux.dev>; Wed, 26 Aug 2026 17:40:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787766037; cv=none; b=PXxNY2IHpcnRZ3Vj5OBN4lgq1wMQpWEOFo+mCG/W9KzqDfdAgkeT6Gk06ZL03ZkmxHXgR1LWsaw2pVaPVXUH/jQIhKWsta3LJ2cZ3ASqMfZbgZhuMyFQUZSOBbdxDY5ILsRiZeXt0xU8o1eVxb62EMr42QomQSLcwy8G5r6sP0E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787766037; c=relaxed/simple;
	bh=i5wDnJSSYODxf4QP9K2a8xn9bmhhuW4Lt7HY3AHWmis=;
	h=To:Subject:From:Message-Id:Date; b=WkgPPp8XEJ+KXThLysX/HRb5pduzgEb3Y3HhF86JWxGdezil6ga7txZkLOUqxIOUJSo8rZWwC46CuHuZnu6FI1wKuv3V6ClMOKc/ssRjaeylE2eXdbhIDm3h5oHSQ0MLTjjFyIoj4hVf7brqeSVYy8EpRfWnUXnRF9S+DzkL8J4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rAkF+Wv+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rAkF+Wv+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D074EC2BCC7
	for <ddprobe@lists.linux.dev>; Wed, 26 Aug 2026 17:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787766033;
	bh=i5wDnJSSYODxf4QP9K2a8xn9bmhhuW4Lt7HY3AHWmis=;
	h=To:Subject:From:Date:From;
	b=rAkF+Wv+MINf4PxLB4jGbhkCvgGiaMFAbmnYTQNV1IXZqMEwlnkuj0A4n4KCZKark
	 +RLj9fG6bNh5cpscGKFPHg2OhyVcHq2v6KHE727iDhTPsIkdcCJgRKs8MlmzZ8WpS/
	 9rdQ0tbwEx9+YEGGyQ1YPlfW0+lIvS22jysRPhc3n1EDDOE0+iLOnls9N4Bs/+GssW
	 6K0pQZoLimOp+E+aDIvI25iNG2vHzqkWIRvqiANAHDRxMWVYvjK2rsXmSmqD3UAoDz
	 7OCQdv2KsWzj3Wqu1+Q5hLiQAV5wr2UEbH9r9FvEmvl2M5j9tL39TCA4iNG6Aywda1
	 3w5I5EYdXdfQA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACE3EC61DBD
	for <ddprobe@lists.linux.dev>; Wed, 26 Aug 2026 17:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178776603369.23249.7476938835112384374.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e16a513f2bcce38062ae222043a6fc1a043c42784610c04ef1fe9959d891f850
Date: Wed, 26 Aug 2026 17:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787766033
