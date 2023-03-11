Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 496DD7B
	for <ddprobe@lists.linux.dev>; Sat, 11 Mar 2023 19:56:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E098AC433EF
	for <ddprobe@lists.linux.dev>; Sat, 11 Mar 2023 19:56:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1678564565;
	bh=28llQ9hEomxHoGr2fsGGMxj4aLLgXLpTwSX7NZ3TPp8=;
	h=To:Subject:From:Date:From;
	b=r6NFnzARfEh14gzuLUFHqIiFSxccNWmMKxcQMn4QM/+w3tJ3Ejhzem27Dmwv4RAZU
	 IDn1l9SZ2PsDZNKMP4bmQcwyl7VTTldlfLTrpeZKh9DuH1eBA96Q/QPwZqS8tVUau/
	 SkEu4dn6S3HUd6cOwIPwCsqFXgkNyg/+IODE++iT8/QGveIcy1jcfB6vVvFzGRKvR3
	 l9Mn1Ou/KTX/JVLvZZBPiFzMSvMT/CMeRlxt9q9xoG5mO0XKx2wf983Cvd2rdtDrn0
	 Gef8ZWW9jdL/gQK3aXi/N+exixHiPU6P68dWrcYVJHIoY/FdaiFzlYLr2tbghBuAMq
	 8QhZYG6oYseIg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C6369C61DA4
	for <ddprobe@lists.linux.dev>; Sat, 11 Mar 2023 19:56:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167856456577.31235.9514561988102633090.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ecfe599073bd24133d9938085559ae5a8347b6f96389e8cf2414124eacd55967
Date: Sat, 11 Mar 2023 19:56:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1678564565
