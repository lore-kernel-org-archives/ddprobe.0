Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D1BA46FC7
	for <ddprobe@lists.linux.dev>; Tue, 25 Oct 2022 20:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7B27BC433D6
	for <ddprobe@lists.linux.dev>; Tue, 25 Oct 2022 20:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666728053;
	bh=QdgUJoLV8z1CV7Vc72f05G++46/rkLoPZy4EJDsIkxw=;
	h=To:Subject:From:Date:From;
	b=vJaiCPvbxbuqG5OevDp/3BTjXoEw2KfjdH3ZfYZGrw7QgJt1T/ZktmXXgRbSz6UOh
	 K6cXdUCcD3naKJi1D3cB+BwSKplm20Xegua37HN2/zEej1owz+HZBxJwilnJvnO7Oy
	 OcCmiMDsvAc1tcI/DNMLVmscnCkW7EHCyU2h3LPzS4hs1GPD4ly68qFmtr+OLROtp8
	 50lXRYUBizEmUXrqFONKfJVKcNDhBApQEEC0uNZ9g4Wd2mfBdLsaqH3Te8CvdPQ80Y
	 gWOUv6ZUSDAAFo2R1vu7a1iLkgUYvtI+VkQEN8MofIUjbK6hJB+3VaQPao5IjhPjl3
	 aW+PL1+znSyhQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5EBE7C38A2D
	for <ddprobe@lists.linux.dev>; Tue, 25 Oct 2022 20:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166672805335.7669.8405797044123944945.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 782a4be27eaf15c0b3312b6bf5bbc4b38b17e9c773e9971fadf4473585a3009f
Date: Tue, 25 Oct 2022 20:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666728053
