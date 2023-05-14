Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34160ED1
	for <ddprobe@lists.linux.dev>; Sun, 14 May 2023 18:59:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D681BC433EF
	for <ddprobe@lists.linux.dev>; Sun, 14 May 2023 18:59:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1684090745;
	bh=Hk7sXu/Tg8lZftamx1/oPyyh8ozECEpWqKVTT3K5mOU=;
	h=To:Subject:From:Date:From;
	b=mk88rzNk1W+q4HJcLyR+j4XJ+dBQ+yDyQJFEPUsZjp4vR25H54VtHlreBwU0Fn7Eq
	 vRl+6XN21+rWhHMBjzy4XXW8R5BlUkOI4RW2K6Y+fzqNGV3YEIgsHJCKkTgQwMQHPs
	 MlKHo1dyxaN+MNC3M7bvj0CkPE4cp5GlUCBcKAK9T9SpA3mOVTLxDiyhdszeR+1FMf
	 AenDET25TlaqcwpBBdeYkDioyFeH9AZck10Q2WZhZkuauB6+/0fwpeHI4BmDVpBRJ0
	 P7prNp3qBbOpaHsDTX1/3hWpJRlNNpasR98ANMG3iNqEttohSt0mZwzepd9F+NOfe6
	 QA/gpulJAfvsw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B8090C7EE22
	for <ddprobe@lists.linux.dev>; Sun, 14 May 2023 18:59:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168409074574.26082.10066811649237010732.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d3ad0ae66a7913c345d7a8dfdd16aa4baf83441f9b907b62b4e3a770177983d7
Date: Sun, 14 May 2023 18:59:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1684090745
