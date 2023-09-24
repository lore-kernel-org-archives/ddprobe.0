Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 73ADDDDDB
	for <ddprobe@lists.linux.dev>; Sun, 24 Sep 2023 20:55:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DC774C433C7
	for <ddprobe@lists.linux.dev>; Sun, 24 Sep 2023 20:55:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695588908;
	bh=yYjfWInyIzdDaf9bq82m4BcdykbpfqR/H9KVANIToRQ=;
	h=To:Subject:From:Date:From;
	b=GDKE1+d7iSsndwEHh3aBO5wKNY3MikUFcdVi37zmeQyrdDM6dMSRm8oCzxjdwhokn
	 P0uCYQRWsqd5YNZaKuzwZJxNb4f62MzsSW0vQ1yntjqL0cAFgCFnvLQlMyAa7qN2Zu
	 3ry8OBkKN2U3Ypaw+D9UIOyNtZZ1Pe5kTsJkcBcLdji/bv1B/O58JiqsVAlYI6ONqP
	 mq+9W4sjepboBLaM/nXtQ8Oi3d+BOW6h6W7CN7NY2ZLA6kknGRLZzALIyGPKwjomm4
	 XevGvLOQKJQN5x+WoK6pE+VRQEYoolvQAjZjnwgihlWPx/VGCkvbYYMJdk1xbRv1xT
	 JrEtkVs9fViog==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BA252CE7A8C
	for <ddprobe@lists.linux.dev>; Sun, 24 Sep 2023 20:55:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169558890872.28823.9049735728833315089.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 23af83f96df17d9b3818207bf4393a64ffe6880f55af794ead1b5842bf765d84
Date: Sun, 24 Sep 2023 20:55:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1695588908
