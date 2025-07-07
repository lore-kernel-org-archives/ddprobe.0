Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CA28298275
	for <ddprobe@lists.linux.dev>; Mon,  7 Jul 2025 14:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751898594; cv=none; b=ot3zoj1wXc8YMwnDbfNYJBJ7pM2IQbMQV6pP8HUf0NM6xnNA61+6PreX51voxeUTbcontwdrfjdh2PeHD4M0A34+97hL8RHDyarLDjzt4STcfcfVcKQXDCsO0k02lfKw3WVemy6CTjkH3/BiDomn9ZZuOb09f8iBK5qJiLKG6ds=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751898594; c=relaxed/simple;
	bh=LnMBKYQmiPnCPb9ZvSw1+dx4NQKhPp74hL7NEmMiqSw=;
	h=To:Subject:From:Message-Id:Date; b=ky03WgXrMHtCanE1o9LyF6C2x5zaLklz+YVamkbt3Yv0PINeroafY4E8cXFp08Lc+RpxRaVt0lDJYPJeX5DyuTvvI0MVTjRlDIHipo4s/VarlA/Wn5ZT8oqssEl2Vn+Vv+Jw9WFuIEuPu1SvsOSgONyl7PuEtF/ZjcuqKLDNbH8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CaFKaJYP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CaFKaJYP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6084C4CEE3
	for <ddprobe@lists.linux.dev>; Mon,  7 Jul 2025 14:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751898593;
	bh=LnMBKYQmiPnCPb9ZvSw1+dx4NQKhPp74hL7NEmMiqSw=;
	h=To:Subject:From:Date:From;
	b=CaFKaJYPQDxVtA2kH4YR8BWh+iJgRc8B3LH9XtrqzqGx/aYh7someehcDJJYDIBSJ
	 wV9QO27LuJxSGGNxLXlu8fVyhdbgBkecarJ4PfkHbT6aWjZN2P/Fn9I1JPHQsiyiwV
	 6dnBe0hkE+rENgeJpwmq2YIhN+WBeAuY3pLdLXjtGumBhVcqepiUbJDt3bIy0MqRqJ
	 tNnP3hlQ8tPqzOlUjKJrI5l73LLFCPJ6QZjzNsSYMHn3Z8ep/KwYkQS/cW5wVvT4E+
	 tilOU5Jvr1qlojtPDH6lOPjxhv5rK3jRFzVlcV93ZNKzrz0G+UBLvhYSzLBDyyg2T9
	 f4KzW58h8T8XA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90422C8303C
	for <ddprobe@lists.linux.dev>; Mon,  7 Jul 2025 14:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175189859358.14336.10384037293966011005.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 581eafd711d47a47d187c44a49d35347e84f5a45b55623abd1a012674a044445
Date: Mon, 07 Jul 2025 14:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751898593
