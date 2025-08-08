Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 182F4226165
	for <ddprobe@lists.linux.dev>; Fri,  8 Aug 2025 07:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754637594; cv=none; b=JVJ9r2Xvm0X7pb0q8HLIO6NCLswuggr4PAGsq6DWvGRqPoEAypTt3LFYQ9Wr3faaI2sVfRGMKtxsE3dmfps4g9QesTtUPzXzBkI0TV1k5+ojMKMRru1Jatixvu4xa3qdXlLJD2cp1KL9HjX6Y9KkPz8Xr9AHB0rBQfq3mMKlXho=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754637594; c=relaxed/simple;
	bh=QWojHnI3D4MOPn2Tx8oQsGRa7LbGs6jKMAxfxURQF24=;
	h=To:Subject:From:Message-Id:Date; b=L0uci0EV5GBcjFcSkqyshBgJz2vGaFIjF4sqK1TlTuz4L/FCxH/0ce5VfuNNHwKqhwQ3m4zJAoRG7sRnlzVlYsgVVoHsFhpMNmEedpBlIvX79wHXSm4MnMBCJU8jo26Sf23rIdf7GNd2KGH8y/nE8c6rCcCMLRHGIlUZKEjgbho=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fTZOJ4eK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fTZOJ4eK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D201C4CEF0
	for <ddprobe@lists.linux.dev>; Fri,  8 Aug 2025 07:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754637593;
	bh=QWojHnI3D4MOPn2Tx8oQsGRa7LbGs6jKMAxfxURQF24=;
	h=To:Subject:From:Date:From;
	b=fTZOJ4eKLc4+qQeGOwuwtxJoeCD9TNMXhzATFBearNSStSBXPI/3NHN0Txji9NO+S
	 UF2pW0AljE0VEuhXF01eK8T9p7hcYPmRaIOMUvf5tCGLUFE3RmWk2enanyQ3vLorVA
	 4GoWY46ApFTPxFrqHCZdlnWpufdU3G8UAlQSMtfJ+dco9bHEPirFwbDTN2NiQA0+GW
	 dV5yzFaLfilROszmo5t4EOkyjPkxJm9lA2obc9SDju6ZYdWcPQ9ImlsI0RfMTzQ8QT
	 ZQQm/H70VU4C/OVDDhHRz827ZSzwDFyJ7Y9PKnb5ta6ioRWUr1laQIn1tyKspCuSU9
	 oB1yyOZ1Lq+/g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E895C87FD3
	for <ddprobe@lists.linux.dev>; Fri,  8 Aug 2025 07:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175463759357.13381.6680586730014972980.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d6a604e471aaeb081dc214dc94828f7c03e36bcd928a598789af4c2c7effb30b
Date: Fri, 08 Aug 2025 07:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754637593
