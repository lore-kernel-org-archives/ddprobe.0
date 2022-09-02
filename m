Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D69AA7E
	for <ddprobe@lists.linux.dev>; Fri,  2 Sep 2022 08:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 81443C433C1
	for <ddprobe@lists.linux.dev>; Fri,  2 Sep 2022 08:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662106853;
	bh=CoMzfNTdw6GyC7EQa4X9w3rqq03tzpzFF3sJltoAeDg=;
	h=To:Subject:From:Date:From;
	b=JUoY9ybjNul1NSlAux6PEiVgL/qhKLQZgvYvJSJpJX8P28e5JTbYrRmyc0Vs8YX5E
	 P6JBfY0aIcbuW41/Ac2LfNPiwLW+J9c/chYZZ3mTDDk6PoPvpTAZ6d11XoEusec9ke
	 6tSoMiUkX87qPXa+/d+YSL3qCzUfbHP2WAp5RRaXeWOoGIOH0EKprY7dyDwJSKP+8V
	 saNv3V+tSlrJJwujlijvuq7IHeYzrlCPUKaUlfcEaw6IHPkivpsy9iCLNQ5H5KJ039
	 zIgdXM/1FF2p6NnzQHWECzMvHNNJ8/XHNn8of2w4msVpbzjtCEOOmYYty+1Mr2RoeK
	 bBgdHkYwAeNdA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 58BECECAAD5
	for <ddprobe@lists.linux.dev>; Fri,  2 Sep 2022 08:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166210685335.27514.9832057082638303083.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a6b11b60a2895b79847c78f695b69b3d3b985991698f458e2e18303a04385fa3
Date: Fri, 02 Sep 2022 08:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662106853
