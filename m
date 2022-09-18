Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B1F597F3
	for <ddprobe@lists.linux.dev>; Sun, 18 Sep 2022 18:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6D69DC433C1
	for <ddprobe@lists.linux.dev>; Sun, 18 Sep 2022 18:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663525853;
	bh=Vpoj+r0aSa9qNfIyYO6CkjIUCTNHh8xoBAO3Jv4MydI=;
	h=To:Subject:From:Date:From;
	b=fzcTh9gNUF3msKGt8pwmk5nr4CxM0xo8VFSSpiWBDjrAdT8ofYDHkubFQDdlRNZRB
	 nEhR3+jz/eQCgtzPW4lc7IgMiYb1f2qBhXBWLjAGP86xc5wt1hGpdtERyFwYla5UNx
	 qb0WpiD6GEfj7ZndfT0C9P86qJNta78JnB/I7X1FPOOvd49NqMy+DlQiYXbQ4/OfzM
	 5EO64gSQOln023N+XXpJBCHDyQltvBwRMUevI0zEklFjQdzpS9861E0NfnxAM6o5BD
	 8bI4SwGi7eJSDwtPtYFzv8x1BGuSgJF6nTz5Mnj+mOR+ChWywH+GWwEnyG7bfPTx0z
	 /z9r8JC4D3iWg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 50ABEC32771
	for <ddprobe@lists.linux.dev>; Sun, 18 Sep 2022 18:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166352585332.19105.17596579850793826070.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e988422f85286cec2591c1a442fedce61b6f33be8b2719c40ce4c28063dd2494
Date: Sun, 18 Sep 2022 18:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663525853
