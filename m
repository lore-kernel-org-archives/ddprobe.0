Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3881C287513
	for <ddprobe@lists.linux.dev>; Wed,  7 May 2025 13:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746623994; cv=none; b=H5HDedgV2GVKll5YXuEWc6mkSDQZuyS3tEfNsLJQsdST3K2kTswa/1s2rxwlyKHhSfBJAZkxSbeaS5m1Y/VanHXboIlzt7dBpexioOl0mqggCzEEgA9HMYCPkjj0GOJ5pvCEOKxQpUBV2CpmeiOKWMay+LjvhXQuA8lhE8PpAcI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746623994; c=relaxed/simple;
	bh=kI2k0PL5wDsWUob9V2GpIg5/D7BEGKD7NLW6vgfjUNU=;
	h=To:Subject:From:Message-Id:Date; b=SRdB+uxucxwXQzPWq6fsrU/FhzzQ7rYmOUty+kq8OZlgHBRxHwt9csN/SVc18zcs4JyP9SUlE6QF2MKJ6cFWH4xbL7bB+SGZHueEZXIpufkGXUX/VKOWCDQjZ+9IjEcM3g1jE+EDdMJ3GmvstaJE8IfT0sF71Pe8P2ugeeS6zDk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ko4Zy2NI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ko4Zy2NI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8230C4CEE7
	for <ddprobe@lists.linux.dev>; Wed,  7 May 2025 13:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746623993;
	bh=kI2k0PL5wDsWUob9V2GpIg5/D7BEGKD7NLW6vgfjUNU=;
	h=To:Subject:From:Date:From;
	b=Ko4Zy2NIUMBH3DNm+oBIsNwAdz1XDsR0Jb5iYYgkgj/VbVo1DrIG9si/6MCDWSqma
	 OuJKAFQYUqfIu5gO/Kq9emcshhcO+5cwhGkDoAxGnKHmf9pqtczqfhTpbhrMQxloF9
	 IAcN9FkEgd8VYyMCgEIn7HaXwgypBsH6c3tLWjPthwSPrq9ndui4kfCNjaJ9k3x6fu
	 8mMC19cBZv7RQOl77aCSK4DZg2bT5Ytu+sHimsJ9aVgLIiVdGBrUPpamsCk8ezRWkN
	 dAfYJhKfETSyhWZk/zoAB/3Mc4h0rlMZ9wdxHNjY463HRoEUK2LUi2EFkJCGNGJtZv
	 jh3KdwDhvKV0w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92C25C3ABC0
	for <ddprobe@lists.linux.dev>; Wed,  7 May 2025 13:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174662399359.29181.12249682108658085646.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 79f0bea9bd10d1e3254c0b020e2e410c963284651278875a061903942818dbfd
Date: Wed, 07 May 2025 13:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746623993
