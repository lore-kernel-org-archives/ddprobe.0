Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D7E184E376C
	for <ddprobe@lists.linux.dev>; Tue, 19 May 2026 12:50:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779195033; cv=none; b=XqL6AkhsRZhZvbmG9WeKJUdfgFe4wxshcTpycIZMUR6MWV6jw6mjPeU/THpI/INkkuNqqZ9M2WPjAMg5DAG94hH5fXaJxjB3V4arKXkyxBt5TV2HKpV/M3p5MXppe1n6PnLLoFwC6XRF/DOKcLLVSWS+PeWLCybGo3VmWiYRHyE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779195033; c=relaxed/simple;
	bh=7N9Saotf/jajk6IcKH2HAajcnzXMcLflwDBuYwmCndY=;
	h=To:Subject:From:Message-Id:Date; b=a6zHxBv02W4yFAO79FA4DiIdtBp+4MmewxfR68YsIpy9vKURqAwZEID5nZ3G5lHS08tgykW3Zcwl+FKUBvZGZWZe4kaTZB0yjtzBDiKUZ0rDxDjiJUkFwUkRYSPL0BLtUF29WPeJFQLPoVeZWbGTpk9wFoW4mKFaSc9GcMan/0Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bQwjrUYC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bQwjrUYC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC7B1C2BCC6
	for <ddprobe@lists.linux.dev>; Tue, 19 May 2026 12:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779195033;
	bh=7N9Saotf/jajk6IcKH2HAajcnzXMcLflwDBuYwmCndY=;
	h=To:Subject:From:Date:From;
	b=bQwjrUYCu8cXvLqgjcCCgzyAs5D9f8RssFU0sSPz4aV8UxLoUv74urOOeMHZDHJcu
	 DanDM7+ixgmId2Ik8IS0h2XVvqLlNFdsj0v8XUyfMJDveQ8/9PeGo8UmmsY+y83ZGO
	 leqU106JNbZ77jMa6lOHHYDOmlpd05x08KV3J2kSqHs+8qyEO585DbwM2AGPQ43KZp
	 BMO15ZPine2xsOeiqAuZxR5ZTtw7SRARMmkWwFZvWeu7qsZZxIH/dy++Tw6b+p7fKT
	 LoMEWwHngrzsi4enzYv/jANvw391wW8zZMWjrcv6DhLKYnS/9YbTQ8em3h22MXshJ/
	 wyu3ZGYwBRYgA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA9E8CD5BA4
	for <ddprobe@lists.linux.dev>; Tue, 19 May 2026 12:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177919503368.17369.473806692096062198.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 43c18c1dcc903d1d0777d55fcc5a9fba70debacf86e7126535d0251ac42b86f1
Date: Tue, 19 May 2026 12:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779195033
