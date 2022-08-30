Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C8C84625
	for <ddprobe@lists.linux.dev>; Tue, 30 Aug 2022 09:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6C95CC433D7
	for <ddprobe@lists.linux.dev>; Tue, 30 Aug 2022 09:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661853053;
	bh=4l/j0Iw+MdAIL9Yq6+x1a5yomWq8WlOYF5Rhke8dnAw=;
	h=To:Subject:From:Date:From;
	b=rq6UJzUgxy+2JOr7gGR7ZVYD7OoK6QpgKr3vVtF5Y8ygSKM9D/Lqc/oBKmZhJDdd3
	 aPMsn6/dR/VGna5/dGWw8BLcYDHR1OeoVGfsZe56XDOExuPRFjzqCxXADwNyvzAN8O
	 p3Dt2VSEAU1p42ZMFzzh7OHcn5NRAH1mSLSxXSsq4Cuy8ebzxoGHgMy6I56M3o5/Fg
	 9L61nUXqyl5P8FpVZclgwg8i5/HYlZpPnPw9aBiRNUNCgPVkMd9Fo/9gKMjaYi1YNk
	 U+Ql+mVsRZQsIqmTi+KwRd8i7E0LxdO94FKSs/Dr9jipVQLBMigGEyPiuojvSFRw57
	 oJ3kswfSTQJ6Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 56709ECAAA1
	for <ddprobe@lists.linux.dev>; Tue, 30 Aug 2022 09:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166185305334.9566.9792348158088430825.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e8c6f1bcef8562d2497d053b766de3d5f80caff3d987e6446268538d7cf3142c
Date: Tue, 30 Aug 2022 09:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661853053
