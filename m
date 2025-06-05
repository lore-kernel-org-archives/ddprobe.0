Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 305031FC0E6
	for <ddprobe@lists.linux.dev>; Thu,  5 Jun 2025 09:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749116394; cv=none; b=eh00Wk+EjnXSUZ6PPfyfRJRO8flqVgeo3X6osgORDaLvtHPd7vjxvyXgUo5O8D+d6LQVubzUSe4lZhFlX3RCKs11ybuzMGxj51cF+8G7BEus+ZfjPjzr+Xm9ecwsXkUFvsprCFe94BRbpIbQ40lSrI2wsVAWCQfPcxRvHSQgWFs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749116394; c=relaxed/simple;
	bh=AVB/XYYyIKhRDJp+xU5SaAKiWekmiJnJJSXPBBc3dg8=;
	h=To:Subject:From:Message-Id:Date; b=IeA8Gt+7n2dBF3JvOi9p0R+XAUntiEskmjgBr5A2G0+8C3KuPQ3nkxDdwDKVOJTsi0TeP4KJM2nyc3Qi1Dg8Df8ksqA8RxUi+aGtBl+Vwm37UNQfxDztPJ9y5bdX9UmKE6V6HqrBfHBNjur9/0XvLR7bISeRX1vOBnBsu7jV/fY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nODklQbm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nODklQbm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A565EC4CEE7
	for <ddprobe@lists.linux.dev>; Thu,  5 Jun 2025 09:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749116393;
	bh=AVB/XYYyIKhRDJp+xU5SaAKiWekmiJnJJSXPBBc3dg8=;
	h=To:Subject:From:Date:From;
	b=nODklQbmZ8lsS1TPv3Kj6r+YK6spZqYpv2v3fmnggdBhghL293He7KrD/T/0i5Qdg
	 TW06NW6DjSjS5koFp3H/aapmXT7geh56mgGQotMsnHcKwpEIdLD9qI33hXdqTDc/L3
	 Z8i9oMbUD/1RCFM2aNTRuZ+wi+k7r2UbVG71Cd9Knh68rx7O2CUqXXWFn5OBtCU06N
	 h27Du2AwGM6IKRJhkI1mcpkI08ddZvcvtNy3xpQjBo+xUG2X8bwWquKyfTmuDIFD4q
	 OZLfL7SQOI5rP5ajvJ/rlZcGI7kStCZdg/VAXsdachiEkovcJlvud1kCapg8jIjo32
	 OHHTiy36ukWJw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9090DC5AE59
	for <ddprobe@lists.linux.dev>; Thu,  5 Jun 2025 09:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174911639358.4676.4180628397015651543.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0b5a8f7b5f9811a5346f5cbca26eee9508f8d02fc63638f550323587b6c045cc
Date: Thu, 05 Jun 2025 09:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749116393
