Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B94097B
	for <ddprobe@lists.linux.dev>; Wed, 23 Nov 2022 01:10:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 72931C433D6
	for <ddprobe@lists.linux.dev>; Wed, 23 Nov 2022 01:10:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669165854;
	bh=hmrfMUp8teP+n3lDad8uAgtNtuj5jrzB8BLApQtD0Ng=;
	h=To:Subject:From:Date:From;
	b=GmH2/VFwgUdY+zgYWk14QqFriMuAeGwgUy/Q5hkLmw+3Vm9e0qA0IvChS/SuTLcmK
	 fGqcHituw5Ig4WlbDupUZfgrbl0SjlEYneXIA89nH10IN8KRa/sYIaRMP5XWyDyB3E
	 x9667JdLih5dcYzEo1cO5G24LKpA6hwZpoqGoubn89lG8wv03vFlmsZY7dDNPJP6vm
	 Md0eejotDKcOdxUDFWWzpbzwI7LcuR6GCPy09zEqq6cd/drlkAFI14p4wsf4+bPFvA
	 x5AY7uTYh6Y0olyPlfgmkXzqPqIwQWONsj653X+glECHJSsguxw8Arf7P7MrirbStz
	 90Le/x/UHg25g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5B43FC43217
	for <ddprobe@lists.linux.dev>; Wed, 23 Nov 2022 01:10:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166916585436.24819.2535116181186517993.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 65e56ee5bf712756c317956cb1a6da3597e39f1f6b5202faa9b14da5175f8f61
Date: Wed, 23 Nov 2022 01:10:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669165854
