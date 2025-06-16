Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A20D29B78E
	for <ddprobe@lists.linux.dev>; Mon, 16 Jun 2025 10:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750069794; cv=none; b=ILt2ENv97GpqgJ9ihLMXFg0v+mFs024eWt1+pkQsNWryBPoeIAePktIJ3afw6rbUY5FKLMK1eRQh4zO1jlw/ss03ttpAeAtm1xC+MxQyI8y/p+YBp+vCvdO7U5yV5JH2ptz8awmTg93cchTza97JdFS0O6WWAVvfd79jkY4hiu4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750069794; c=relaxed/simple;
	bh=ZAOhNEf1hqcTY9uDyBFbgMF74jv0ZKikb7P99tW/VXY=;
	h=To:Subject:From:Message-Id:Date; b=l6kmIs9OZ1g03yhfHATE9lLYiQMNSew8cQ9NrMAaJGK1aET36dMTDxC9PxLIwd5AcO9ehAgX/dPBAgk8AeaTnT+QWrXtBh82eZVeIhrs/7JQw26xsVc2OhUO82hKfNJ1vlTJIYIQilq7lNz8lG7605m8LJ6i2jDiR/tv/lOS4XQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pjerz8rB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pjerz8rB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A654BC4CEEE
	for <ddprobe@lists.linux.dev>; Mon, 16 Jun 2025 10:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750069793;
	bh=ZAOhNEf1hqcTY9uDyBFbgMF74jv0ZKikb7P99tW/VXY=;
	h=To:Subject:From:Date:From;
	b=pjerz8rBtbGAp7GPmawgeZSImNiBWiXNb2DeiYxOgaVhz7Hz3xls/YwI7A1dE8vBv
	 RxZm8Ebf+RRFbCy882NIAeXEG6t9ZS+HQggcM2O5I1+Db9xUAz058Kwcf05YOoO6Yf
	 xzvfW/nxd6jGtM3XybqYM2PrXrq2T+DRZlA4X1ExQMnK6+nWWVtf1V5AFoFhWRW/Br
	 L/1/wyOIOcz5SvP46MO0HrSCnJKUv9Qe+OLOIEqhH+DafT6QdcCpBSPyqWSHd5qT9G
	 y11sulOuV6acmUhSfoG4lnITTWQprZetDSdWdvt23dA9LGqBCzSNHQimaiSjzchDB5
	 9c2RJrZqir7+A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92CEFC71136
	for <ddprobe@lists.linux.dev>; Mon, 16 Jun 2025 10:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175006979359.31937.16384368098729820582.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 62451c0b408fa0333c0322668d3501bf5a1defec7ce54974534c112dd61e010d
Date: Mon, 16 Jun 2025 10:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750069793
