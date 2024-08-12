Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E1AC43AA1
	for <ddprobe@lists.linux.dev>; Mon, 12 Aug 2024 05:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723440354; cv=none; b=Ncd7mebfaSFCsZQRpfgV44SXQgKT0hhIbb9FJJM7iuHKmwvzzaDiA5hRPgZSiktMV+b+wCCby9Yk8WcZbJN/xuHoU+L+YZF7Ey7lDMuNulGYmMJiEWrv7Zxq+3Uo9Y91/H7zMlWPlvMDBNjN7JcZDC4kp7dYtQHk+lE1a4ZOiyg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723440354; c=relaxed/simple;
	bh=Mula45Ui/z05+dDYDGDPi+aGeNTvZm+BlgrlpQpOOMA=;
	h=To:Subject:From:Message-Id:Date; b=V/p66op9Z0FSQEgeKKuUyYmiA4eTg/BIlpvT8W+3x+IHdPZhVOfAMY3ojU1K2fyCgwzFiRQ8bDJb2RlYfMKMi6wwF9Hpl/GqDXZVqA7hVX2aD9vxWZenyVwCmm+ox6fteBooRlJNgU9q2ZU9gHRZu36ejF6r4fg/iDbKlUQUwVw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bWoYtuRu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bWoYtuRu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AED06C32782
	for <ddprobe@lists.linux.dev>; Mon, 12 Aug 2024 05:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723440353;
	bh=Mula45Ui/z05+dDYDGDPi+aGeNTvZm+BlgrlpQpOOMA=;
	h=To:Subject:From:Date:From;
	b=bWoYtuRurlJQHjMOx4XhtEJiqiCDJdOWTvLF6mSrvTwMrwJWBhUmuEExlLI2NDKVc
	 GndSVz329ovXxc/i10vehimjbjgp3L59cZVpqsv9QcuJBTLJqfNPJ+bViFCTV9S31H
	 ucQybPawp+urwIf7GGce6Q5vdRhz17HGsRSn6gjjRWNt2XS6BchIGZ0VzXzkt0byPa
	 yEukn4sdk+FGBeXE+V4Zc9BQdhuo12Z4X2qRTWs2irg1BhZdX+Eaf53ZJ4hbMMVoGR
	 IXV+1TRKfll5ialfUNXVqmj7oLGoyt041UdZYsr4V9iaCxmGIW08yEQ3K7Rhp5nnQp
	 eKgTE/+hhC9YQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B564C3DA7F
	for <ddprobe@lists.linux.dev>; Mon, 12 Aug 2024 05:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172344035362.17407.11934642042166302699.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bf6c47919bb85b1ae2451b65d976e342ac6220917ca26df1f8ff7878f6304da6
Date: Mon, 12 Aug 2024 05:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1723440353
