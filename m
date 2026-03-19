Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E6BFD39DBD2
	for <ddprobe@lists.linux.dev>; Thu, 19 Mar 2026 07:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773906894; cv=none; b=Ss6ys5//GCdqcSfBmgo7O1KmJqhgW/6jsMVZkfq3kCM3Pc484K2VYbj8n9Tz/k49fpm340+xArd5BxvjdJMndgoNywkFy/cFMAGFnXhu5Rn28tAbULLQbORz+GVnRsFqNwueRcYW5wQBErLm2if/XP/xoUAu0zQEGD+JfL+JwPU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773906894; c=relaxed/simple;
	bh=NInxn0aGAvIH1ZsheqnavhBVKg+hHELzKc4yDa8LxVY=;
	h=To:Subject:From:Message-Id:Date; b=qTlxpNcYJ1rIxBW61hQxFXwBINCOlNDqwLrME3Iaw1EJNQ4usDmnRYwWutLtEwuE0xDajDPrJX9vwRcyX0LeGg+JGLVaX9vXnpHUeDX8SztG9spvpCBIBflufrnkcif0siQP7Bqrc9eaU6fPXK2ge6seUoGhRWbenJxOj88VUuk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OMF0ZJ3U; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OMF0ZJ3U"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FAF5C19424
	for <ddprobe@lists.linux.dev>; Thu, 19 Mar 2026 07:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773906893;
	bh=NInxn0aGAvIH1ZsheqnavhBVKg+hHELzKc4yDa8LxVY=;
	h=To:Subject:From:Date:From;
	b=OMF0ZJ3UtNeweg8cK4//P0fT+vrEiaG8J5Gsu4BSsVHS+n+3tRuyeDCSPHc5Mltne
	 p+Drst2Q0GerFit+QHQz1t5u0/3dVPyCQFMGMVyqWKAjJqpfPDVjyNYLb+EYwohd7x
	 ey8vyKv2jgAbCMKeDOr8dLkKh41cTyjjGUoYWv82jUNDVjWpJGaH/tPJO0dBXUA5Vv
	 7sP8m2sCyG7CDVLPxtLRoWys9G+at6VyTkZ26t30wMwrStvRwINCff/Lag0D/geGdJ
	 X7vprg9MuOsqv7JBxQsRIH39vMt3I1njxypmnJogbArmVHFH7dopftC8vGEXaarjw3
	 i9Lb3/GsZgBRw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9013C1075274
	for <ddprobe@lists.linux.dev>; Thu, 19 Mar 2026 07:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177390689358.11909.17243078770994308043.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7ceb6f96ffbc3b3b6d26a8cdcb91268a63e418d6f3e44fd441dd85aae638967a
Date: Thu, 19 Mar 2026 07:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773906893
