Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AF5233C38
	for <ddprobe@lists.linux.dev>; Fri, 25 Nov 2022 16:50:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 664E9C433D6
	for <ddprobe@lists.linux.dev>; Fri, 25 Nov 2022 16:50:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669395054;
	bh=EpVz6WqCFYIoNfdC4g651Zy/9ij25OH9fA3rPQYmBRM=;
	h=To:Subject:From:Date:From;
	b=rJO58q0TwjzH4WB4yu1siQvrTCY/CiESNzjYKMh30ySPo3gXvJokOuLceTkQ2z5vv
	 rANpQn1OrRxlaKYNqjam0JO+9pvn9P+VGc6G0DVXvc8lJdIdndJS5W5Rwkf2FV4gQB
	 ICN2rDRggM5KLMnfLsKd/Brj9kl+4B7eKrXwh17JCnSo1agNgN/eJn4lpIKNRlOI/T
	 S2AzHgoWccUKMkBKBNAohT0S4WZ6iWcD+8ZxSJf0Ocz78D6wLw6WKZLSYZqOn6QtiF
	 baWnlB359dZaxrXx3T2xHk1OC/mX0Dv/7uVI6h2GN9Scoe6EBxqdtUSHEmgbMDuFt1
	 h7VYju+POuQ3A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 50932C4332F
	for <ddprobe@lists.linux.dev>; Fri, 25 Nov 2022 16:50:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166939505432.5672.10197521415459210215.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 00a928c065e1b1bc4b2fe850e283b229f1184eb5e85019a5e60a3ed6d869c6dc
Date: Fri, 25 Nov 2022 16:50:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669395054
