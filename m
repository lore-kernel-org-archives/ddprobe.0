Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 382A32584
	for <ddprobe@lists.linux.dev>; Wed, 22 Mar 2023 20:39:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DAD87C433EF
	for <ddprobe@lists.linux.dev>; Wed, 22 Mar 2023 20:39:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1679517545;
	bh=bKSOiHzt1StjqmTvVyhX+GCTincEay7Xvz7bPifjMN4=;
	h=To:Subject:From:Date:From;
	b=JWxAHKTKuYtFUoOjjPT5eaKTfdGAwFC99JBwqVIsgja2apNBoohaOROAWIBaD4FvG
	 Qf7p3I0CfAFR8MJaV0wvA1FitbQIsWjOVmgQfmn/t8xrhrXN+BQLykNgnKDl0APmNr
	 iMtZQncjeF47xkmEX9LS19xIrhM0y59tBnO/2qgxvCZR6Hm0BnTB/wwiIckidNljgC
	 Jo/pK9ZdMev0sE8n1gU2nAviv2AhZJq39S1y1XR+Ef4qa+AOgBGwIyvkH2j5bDXPlR
	 J8l088pQqKZVK48wUx4X6Y3AMo0WsnPInyNOa7QjDJFqwsja9KS97OcJ5S5cAugl+c
	 RrdhE/OAMt/LA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BB83DC6FD1C
	for <ddprobe@lists.linux.dev>; Wed, 22 Mar 2023 20:39:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167951754575.30719.12531083565480633207.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 33000ff6a832e9d06839694599411740fe9a8238682fab4a5a74e6cadcae6a87
Date: Wed, 22 Mar 2023 20:39:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1679517545
