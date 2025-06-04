Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39EE827735
	for <ddprobe@lists.linux.dev>; Wed,  4 Jun 2025 06:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749017394; cv=none; b=QX59VtZknb/irSJYI8b1Xjfwn5AWapnkTEFc8S301vyHFmipFvZvKFgTbWVdSMIQB/2BZCmJHGG+y+aL+LDAlSYG4ubTodq+B7KjH1R8/tZkY7TcHcdpYA3h4po6FQk0HRJ5jFP58ClCztmYVHKrOw8JfWqBwkwPeeKHiTL46u0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749017394; c=relaxed/simple;
	bh=UL9EzfMouUNnLrjT1iXZhkvlH4z7E+RgQPq6ZKAdAXI=;
	h=To:Subject:From:Message-Id:Date; b=tOeZhGOkI6Y2HHfRcNpZ5MX7TNTS3R8hSme23DvBf9ZivhKF1yqtZUOKiTBtPOVtt08fYQ2tDwr10dWdYXs6vsqcrpt2uXXaqQ9S4g5012C4iC4GKhEQxSberOrLjCfo600hZyJEDwW6pmILx/T3yxfdb+82M0I4xox54+BSetg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hIYGohIU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hIYGohIU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A31FAC4CEE7
	for <ddprobe@lists.linux.dev>; Wed,  4 Jun 2025 06:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749017393;
	bh=UL9EzfMouUNnLrjT1iXZhkvlH4z7E+RgQPq6ZKAdAXI=;
	h=To:Subject:From:Date:From;
	b=hIYGohIUFPdAxuvGBR0oq1F1kxAocvQKzxEJbhAqZUQn1xKtfTLmbiG2i8TvgGvpp
	 q45YvcpsZsB2hAOBn7E5ZKb1wmKwXqdB1I6ZHTHJF72AKA0rff1wvVvLGU/YfYlwAZ
	 MZl67vZiXnJGPKS3t2ChRfFGlBArcJCOjE69pAW9cIquXX0m+a0IQmZjJ4AddVzuwN
	 V3K8ikfUCDKIkaLLFAV9OaePTMwcv+DDf6clvPX5fEJY03/oBRzpHU8C7ZHFMeR/v7
	 Kf2dnzdv6NnRbOj0sX+a/Ml/LJcEhVUjG+pLm03spbutHXHIuFv/MmSkkY3mZHbh4I
	 3g38pXOmzrm1A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90429C5B543
	for <ddprobe@lists.linux.dev>; Wed,  4 Jun 2025 06:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174901739358.25226.18437588685620773428.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 94d80163896e5431feb1d61c5c3a441882fe42bec10c697621ecfbc37b8931b7
Date: Wed, 04 Jun 2025 06:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749017393
