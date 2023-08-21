Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 807F9136C
	for <ddprobe@lists.linux.dev>; Mon, 21 Aug 2023 04:14:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CAC5EC433C8
	for <ddprobe@lists.linux.dev>; Mon, 21 Aug 2023 04:14:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1692591248;
	bh=CYIzGwFn1Z35tbbgT71FQ4lvvX/EuChGoigGBx6doFs=;
	h=To:Subject:From:Date:From;
	b=eQjBq1I5E6IDSIsALXE56dteSt176AOgL27xcGBiSfAe0TTxQL4RlDKtlcGtce5c2
	 O4GdfycBVjmv5SZPTeza95z19nkMMEX/VndFJ5DYQ/zCPmx46fo+PO34InOxxp3FfV
	 MDq1q5K3/bfdUNxqLLLIM1Fabmv7eloTMU78icUQh8OHj3NkxNCDIhE2gImLE6DmqZ
	 G70Y/tz11MsaC/NoQDnldQYtqrQl9cRRVB/I4UjUQIYLtiDhtlVrb4qZEg0+/hqeJk
	 OXimBz7z+gc42mvLGByMRZnPYM9hF3ZqF3nAGI/V9iClBnYGYVppJgvUDmbWnVvXrD
	 EHczB/D8MJQnQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A4441EE49A0
	for <ddprobe@lists.linux.dev>; Mon, 21 Aug 2023 04:14:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169259124866.5090.6624327039138262764.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 45cfe4b3f83474f25b242b3d73eb69b2b29f17d020c1a77bc8f1907866d38c08
Date: Mon, 21 Aug 2023 04:14:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1692591248
