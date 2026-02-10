Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 156A526ED3E
	for <ddprobe@lists.linux.dev>; Tue, 10 Feb 2026 05:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770702834; cv=none; b=mBkeDL0JHrHE+KoSBjB0XHoiACb+phE8vxe6M+2KGAlXcBEc4atmZreS4vLaIq8o/+51ZbEoTBmoZiyva2M0t5XZbB5uakqZcyaFC5kkwIpQClaXEBe89gdk4tBMAiCzwfZsuq9Hhg6Li+9rMos9J40+iPkwB5CQ0122p9b7Cwk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770702834; c=relaxed/simple;
	bh=k7mxjk49AGd2z7/OPTojy2LyuRYsRaDn/tV0DFg4+Vg=;
	h=To:Subject:From:Message-Id:Date; b=YnUhuO+HN8j9nNJp6mVZvnQz0+HL/u38CO1jdGtQMeYhnJpJTMC7i4T4MFr54zm0ORe74akRmVSNIkHFlyqHjpqx2DEewQ7N1cLBLP6t9SN6nU3VLQgbZkkBX5oKitvj5SbPMg9Jxa+xS+NiELQO8zRKLF/NmTtAd76JiY3KCdc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=X7x7brio; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="X7x7brio"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A99F4C116C6
	for <ddprobe@lists.linux.dev>; Tue, 10 Feb 2026 05:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770702833;
	bh=k7mxjk49AGd2z7/OPTojy2LyuRYsRaDn/tV0DFg4+Vg=;
	h=To:Subject:From:Date:From;
	b=X7x7brioyJIrJnLcFMWN0nPasA0V4wopvlmKgfHMLJ9g3z02z3FYdfkgxnPPrnD+t
	 RuJflUkJhII7aLITRw1qjDxQu3sQj7hllP05omhY8w1n3F3dbHRjth+plIfN9Ez3Xh
	 WwsscDSW83J0CGY60J/sJvbhTtuWIALK16j0fCqvn1eJOM2T9/+jGDDzk9n59swieF
	 J9oO2EVgkhf+wX1GxedC9BsWgw4jGebRG3+NcpI4SNxC4D0Y4oqsy1y/og2G5NJc5R
	 uOM+eJVj/7d59qCW3hDFk+dLu/txiPDkZlzWU1kSke/cZcMBecMpgpcCDXW47YGWsn
	 xnvBun/0vx49g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9521AEA3F0D
	for <ddprobe@lists.linux.dev>; Tue, 10 Feb 2026 05:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177070283359.8189.7020360078187524712.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f90ba8bd251b0b960891c17db06a0053c39a4632dea8b66494461426303e9020
Date: Tue, 10 Feb 2026 05:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770702833
