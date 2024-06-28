Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 56BBD2263A
	for <ddprobe@lists.linux.dev>; Fri, 28 Jun 2024 17:14:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719594863; cv=none; b=rAnqEtBGe/h+Wkk0d57lS9eetxPdMEUbXMq3LI553MFlNvl7xCLzOsHPHE3UILNv+TEzuO0zd6zMMpbjDqQllOOPhCzbgvuPi3HA+re8AZ9HwSAmVbgctrb6Y1PUPPa0MKsFUAZOMDcm89mZJ8bgWEfTgNGWyDsWmUtKlQ4drv8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719594863; c=relaxed/simple;
	bh=B8jwMGd9vNHer3cUFylmLVhcTWu7lStZJduDICTHrrw=;
	h=To:Subject:From:Message-Id:Date; b=GB2I9y9slmn2F+R62BBICgLHJqtmmWqYdQPpVZD1/mu0gK3kbqbSNNIYFk8Hmu3WM9jyX2i1//EAJXu3/b9Vhu3AdAVmHq3ng9CvY8/45kcLhYQNwd1DWj2Mni0ftzXr83Y6Bb9zi4mVEuRME0mVGAsefqXIeta3SaTFyv0B5Aw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=efBOBl61; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="efBOBl61"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DEEB8C116B1
	for <ddprobe@lists.linux.dev>; Fri, 28 Jun 2024 17:14:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719594862;
	bh=B8jwMGd9vNHer3cUFylmLVhcTWu7lStZJduDICTHrrw=;
	h=To:Subject:From:Date:From;
	b=efBOBl6116xCvf4H/kEss3vncIWi8b9SkB09XHxLKzUBhKrY0wQVbUtptDHhE7gV9
	 3mLgRXTXHz2o+UOkMoORXQxI4h1e0cXahLOG8w2OMLsgrYfq2tR5WisqTxiReUeZxi
	 Q63yv/sOEQK/l4VuwtN+bR9pXH6AmI+p0I7bWXfwzScYTWf9w0HqzqvmjZbx6AAQr0
	 ugIRXMw/jknxg2kdOueGRd1UnqZ15wz53G5xaMOOr0n1pTJJ8Rl6qBLopTB/Qy1gpJ
	 t4aJieNbKJDmtQuJfjl/6mlDpwtmB9IJ7dEBmkE9I+TZgWKVUZoqevrktoT5ynC+R/
	 6CAYl0TmgqzLQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C69A8C2BD09
	for <ddprobe@lists.linux.dev>; Fri, 28 Jun 2024 17:14:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171959486277.16650.543544086747241686.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 569a9d55f17d36cc8115b3f0b55b64d0e1249e22fafebbcf44d05bac6d8fefa4
Date: Fri, 28 Jun 2024 17:14:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719594862
