Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43E8717BA1
	for <ddprobe@lists.linux.dev>; Fri, 14 Mar 2025 16:28:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741969734; cv=none; b=aaOJRFLxRSyWU0o8Mk4J/DxGFIxzl46NoHpq5Ne+IpQ/2sTMsqbr4tWlStcq+6zK4uX74XW8y0X/Yc9wHZ6O0gTVA7k/qHXVkHIgZmDfSuUY2iJUC+FchrCiVbfeoVA/Dw9kjbbX6A7ItyG9avWQZvfnhZpCvEXSBDrxhXCz+LU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741969734; c=relaxed/simple;
	bh=f/H10o4p+Cmddlh2fGNO/TPTnmeffI0siXjcwGwfwlQ=;
	h=To:Subject:From:Message-Id:Date; b=FZZ+OLkAE112hMi8wFTN4+4okIrxRvrt7AdgtXScSl4Iap1Te7/zgsgtob4aZSY7Ok6x8rfe0dNNfl8Cg3XkrKBNPWIS/AI8sLucVo5NGkxlYSLJBJdDCatGbuZYfiaJuMo9m22i+iEecFvKGqUit7NlwWuSqfIjeFTCM1GulHo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uogiPnP+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uogiPnP+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B87D7C4CEE3
	for <ddprobe@lists.linux.dev>; Fri, 14 Mar 2025 16:28:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741969733;
	bh=f/H10o4p+Cmddlh2fGNO/TPTnmeffI0siXjcwGwfwlQ=;
	h=To:Subject:From:Date:From;
	b=uogiPnP+d2rHflyRx8hCABAk6MLvxSGjNSBwywpUq6VdwyxhOoysPUo1nI1eOVkfJ
	 bl2xZxYw1OAg6W+wgrgQp8V3u62cP19rVjuSaljccXE+hJZh7ghh2vaF7Yi4pGQN9O
	 DL89IqQ/LbEvf4Lg57kF0QgpaAoP3ZcoHINl2JFpoYSeoRpqVYstkDLAsIQWFeeKcK
	 QqjNzLFs34oNAgGO0Jj4nWMx1cEtFhyJAm9+kyUDIn+ePwF2NcDeBuwcsH25+G+GtX
	 kYaNjxpzWNX4fQIo0aRZh8xtlFoTv0+frkms1pOVe58nTsYNmPsD888g/MgvimfGib
	 w7s1X1HdQHkjQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A615DC282EC
	for <ddprobe@lists.linux.dev>; Fri, 14 Mar 2025 16:28:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174196973367.1858.2857350583123486860.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d491ab5c64592d1a213e65c102a93f192c90d368fe047dc4939468f02ed1410d
Date: Fri, 14 Mar 2025 16:28:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741969733
