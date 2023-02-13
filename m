Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 57513AD3B
	for <ddprobe@lists.linux.dev>; Mon, 13 Feb 2023 19:24:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 0813AC4339B
	for <ddprobe@lists.linux.dev>; Mon, 13 Feb 2023 19:24:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1676316246;
	bh=yNTds0YiW/YyvPrtFMnLZTEtZNE2sysEXSdnx3tei/w=;
	h=To:Subject:From:Date:From;
	b=aRYhk7B2L4lx4XNIHfYiveCCFyEtCuVB6Vik3CssRX9whkE+B+Oq2V51aXZQ4G2mb
	 r0dT3Tv9RvOXgqSQFOIoqu+nnJ1IXwreG5b3H4JVh92Xegu/9tFUglNPvGr3CCIwSs
	 OMOeLZ4Z/6TmvpmNR8j/sYKSFO3Xsxn6NLjF7p9C2Q7Z/mxdcBPKsk6r5gxx/LkWfM
	 wtpukNodW4Vebn1pj2z4ohpkaaRsus17E7nUT4GTOMqXkhvcxGxpxLil5gQ+Hi++6K
	 J8IMaz7MwU4QSmoZUNhg6rNdZklP1daZEIRRJO446LuiD0trjGJbrgJJopEnU1G9mR
	 U+qo28RY31YlQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E5630C64EC7
	for <ddprobe@lists.linux.dev>; Mon, 13 Feb 2023 19:24:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167631624586.30321.7234180369637214771.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a95d8f09e1df82e9c4f6faf98707454a64b9126d927fe50e624668c6bdd653b6
Date: Mon, 13 Feb 2023 19:24:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1676316245
