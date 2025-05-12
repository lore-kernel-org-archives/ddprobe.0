Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E5971C8639
	for <ddprobe@lists.linux.dev>; Mon, 12 May 2025 18:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747073994; cv=none; b=pW7ER7RffWpimvvk1LDVY02+3ulwUNOoKS2p0Pe5EOKnjLdOCqcgSVt6opG8J+JbRk5vQ3ZgwW9mIb3z/0qTJZ/v+ei/5ZOC/E55mm716I0Rf8iUqq2/KZiMIZnvGAEDS1c3Sy+5TBrQtJtpNMCraR3jM1flQOivbOFcb14iXW8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747073994; c=relaxed/simple;
	bh=I+j1/rO1y6NZkoUe2DYL7iicTKtH85e552DepqLwqvI=;
	h=To:Subject:From:Message-Id:Date; b=jIX3yEtcJ/0jsTyoABcIBRnPba6Ma+v70f9h1qcwBTag4lZZjD1Ety/XTaMl7oD2YLqAKHblMr8m+NQ6c39mE9mM9br6B5rCGo9V80cHEFU9avJbxvlVQpfYZIAXktMMeFZMMfN322rxwo98DYXzGWh2QWxS/v+Eldi6r+zLKfo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TtM5ytX2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TtM5ytX2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DF50C4CEE9
	for <ddprobe@lists.linux.dev>; Mon, 12 May 2025 18:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747073993;
	bh=I+j1/rO1y6NZkoUe2DYL7iicTKtH85e552DepqLwqvI=;
	h=To:Subject:From:Date:From;
	b=TtM5ytX2K1EijVCLwChlqjF2IrLQEdZhgptrp69kz3s6F93+TcIE+a6XkPrZKiB8v
	 eL5zwt9oJBR0ClHN6Cxm7WnI2+4vSR+0c/46yoIeDFPgoRcrWcIBzIwQ43SgAw8lq1
	 LFTQbCu9chfamBnbvGMsCiNTGz4kTwuHKLwGhJk7EySxBu6/uSMvG2JV/1nhdvSetK
	 n1pIU6sUvAGPESoJit1BVQFRzmx6PzgNNu4xzJ0N7NoarbWtBTb9QXGOvJfGt/2tUQ
	 FP6X1QODVl1gyOYqWAk3/RnIwNvO4kNcHZDov38PJfNadz0sDC2+63Vq6/iZ++7xBG
	 cSe7LiS5WzJqg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E9FCC3ABC3
	for <ddprobe@lists.linux.dev>; Mon, 12 May 2025 18:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174707399357.7841.8864383824755890911.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0de14aad812f320834f6fc5f914dc737760d15374d44e98cf9da87cfba8b8660
Date: Mon, 12 May 2025 18:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747073993
