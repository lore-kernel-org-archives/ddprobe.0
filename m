Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 746735381
	for <ddprobe@lists.linux.dev>; Fri,  7 Jul 2023 19:17:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E0964C433C7
	for <ddprobe@lists.linux.dev>; Fri,  7 Jul 2023 19:17:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688757428;
	bh=+xwM5vDYPqazfeAh6cvhYnq+M68y9142DfNTnXAXTL0=;
	h=To:Subject:From:Date:From;
	b=sx/BWzYK/lxZf9yhg/yJk7rrLjroRY5F1i68xmj2dxyILIdYoXvunQC7O1LNdaBp3
	 JCN8VqJAONS4M9Ga375vpn+KR1OmosCp/AEIO54bi8eRoWbH16Fdytf8RimasB41Hq
	 nswfu/zPFgwWFbvc3+OVo3MYex+p/oNurrE8oR3bljWmifAqmoMjdYVZlajKCKB5j5
	 3KrMgdQFQQkRAiANULb9o0IlTi6U692vgGVsRbpNvRNGTqapFjZmRYDM7AJF6rhWZV
	 RlNXUI+pEGxpjj22vddW74Rtg+HuPdhPN5XyG1Efm9N4Xa/ywtTEMSGoSE5BDNxfKj
	 7UfVJr46sFFzg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B4A74C001B0
	for <ddprobe@lists.linux.dev>; Fri,  7 Jul 2023 19:17:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168875742872.2872.18080972101308397195.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 15272ca247606c9db381af74a159ece3e898870bde50d3644ebaa880ddc31502
Date: Fri, 07 Jul 2023 19:17:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688757428
