Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C4A3C3C14
	for <ddprobe@lists.linux.dev>; Tue, 11 Oct 2022 15:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7940CC433C1
	for <ddprobe@lists.linux.dev>; Tue, 11 Oct 2022 15:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665502253;
	bh=xceUgp1UNv1D3fNqnkIhqlc3LRFWgM9YBkprTCEdaAk=;
	h=To:Subject:From:Date:From;
	b=BfWeaxkcZ2Bdq5UKrl7QBVwjg8agDcv/XDtXF3l/Z7tRYY35V0nbiOSHIwZCV6+xr
	 kExePku4RCEYjUQ+tpUnCcZ6JlOjbRGfC2d12J5IMCZG1ZZwLhn2ecncwwsSNryg2p
	 r+CBd/RdKK3+o56DUSBgiJ9sUz4+Xk+V0o7dg1reDr6Ad2IMz/niRlllPOKPthg2ye
	 LgxkeStL1sXFjw3pY3xZu0EagbYmcAuXjGORaBWxUBMVZWJVNyjtaJiTDKxHI0DOma
	 2Hv6NLe0fpAdnfE06j4YWNjT5j59J6JttU4/wXvUo3lvbF5SKsJNFoe5MOah06DOG9
	 TcfWas9LU/64g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 62B5DC433F5
	for <ddprobe@lists.linux.dev>; Tue, 11 Oct 2022 15:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166550225339.15692.8078769426225769680.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 97de46a112ca4e6c8c38c7b879098f230ace1537ad99e606d9ec6c0087beed6f
Date: Tue, 11 Oct 2022 15:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665502253
