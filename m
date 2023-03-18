Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 62E23EC0
	for <ddprobe@lists.linux.dev>; Sat, 18 Mar 2023 10:22:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 1017EC433EF
	for <ddprobe@lists.linux.dev>; Sat, 18 Mar 2023 10:22:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1679134926;
	bh=tEJmPNA5SLIXtdhxohNv6PETUWx9d+CpC/DvquS66i0=;
	h=To:Subject:From:Date:From;
	b=Y1SFwtbAe5OMgMkb1gBhem1H8NrBM72QZz2ON14w6MYoxhmgupjQMJV6MxpTCmnpM
	 C8fsfWNVhVnKhzcvWusR72fDecKu+3h1bIEFlhdIVnEHQ+g8yoyTXg7p4f0wMe2JY2
	 sB76X1Xn9/0bqVSK9c7yi6vu+HkKXvpqOGdKqoLVgddS0a0UmWdhPAWFpmjWZoL9n2
	 PmNlTJqCcuduKRT72Vsyl/p1UQt9hYFcKbucvsvBJQZBrLtomglDnemX/0/3qGdrfw
	 a7zBtKJPK/xs6O8Z71QCkxcxbAuDRWdOpjxk2FOhkZDe6au41uf6t/diokZ2a/P0Ic
	 XF/zx/mDyM8Ig==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D101EC61DA4
	for <ddprobe@lists.linux.dev>; Sat, 18 Mar 2023 10:22:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167913492577.8037.3994026325287927553.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a8615741e760de11b521e9124b897c9777b5eb15e9ceec9c4841c8f55498c359
Date: Sat, 18 Mar 2023 10:22:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1679134925
