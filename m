Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B51AD2E8
	for <ddprobe@lists.linux.dev>; Sun,  5 Mar 2023 10:47:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D109FC433EF
	for <ddprobe@lists.linux.dev>; Sun,  5 Mar 2023 10:47:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1678013225;
	bh=b0WMgYf629YpvRGUHeB/r9+zgVB4z5z17xNqNm/0kO4=;
	h=To:Subject:From:Date:From;
	b=qzLsbbqLqg6MoZvSiDYT2oM2ci2vD6pQooXyUxAdN0EsilELvKmcSRDxsOXPppw4L
	 qZ9FgZJkwSEYAIBMWJB4Ybli4LUfj6jDJDE82vMsu7M3NWg8ZRB47bzGr3NRlsBpUV
	 Q814v6IOUXeU2r8VPRHBdI2IQ6XNud14buhCqm8D+KyYkfKrDq0277M9Uic2SHPgpR
	 8IbxXaYIQxK4ceeJXzgOCNK7jqQAHFvHwMLgwST1HXYw5YhWgwYR8o60cgGVi7KJqQ
	 phWr8gbzRKbYnozLv+daYs2xDosThiZbqk26hft6Cl1Z5mVQDKfvwU+Gmx2UAKj266
	 y1k9rJEaYxkxg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B67D5C6FA8E
	for <ddprobe@lists.linux.dev>; Sun,  5 Mar 2023 10:47:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167801322572.32477.12732915886157357189.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a9de8ce856582e4f2e8223269b4b0bd7442ccf773d9a6f2b50390bb953f3761f
Date: Sun, 05 Mar 2023 10:47:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1678013225
