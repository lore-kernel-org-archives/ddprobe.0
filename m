Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 465CDEA1
	for <ddprobe@lists.linux.dev>; Sat, 12 Aug 2023 03:13:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1575C433C7
	for <ddprobe@lists.linux.dev>; Sat, 12 Aug 2023 03:13:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1691809988;
	bh=4/lPQX/Ocep1R9WdNJJsK39Ihck5XbnfrHq1bznHsy4=;
	h=To:Subject:From:Date:From;
	b=sauDi8HbYjFcb0Liqd6FYV37oT8DG0tROtQiA+f1NJEPqXveiQ0P2EHIJx7LsDRnj
	 5awBYUTpFc8AaqpEKJyjHSqGlv6Gyct6u9ZMucOr0QQUoL0ZVoIAafLdoeOwpQNM2W
	 rCmHhQoFGiYtrxtryeeiK4fjC89dNC2+3gsm9P24/WHYltH1oZZYgjDz4wtTo2gG1r
	 xIfYw7O6vRNXOmqIXH5ranz7XJqKwW9CMghBYwGywA6rMcX+rhXYynB5ccvchms9t+
	 VhXQjzWwrXpGJFbceC/2Lz1pAoDp2qcz7Esy0OaiAqYjwQ5LcrpB0M7RR6CE1j5MKr
	 gqQYJOp/K1TeA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A833DEB64DD
	for <ddprobe@lists.linux.dev>; Sat, 12 Aug 2023 03:13:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169180998867.18168.5983170971223394456.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 60eb6d84c864b64692717621cab4e36c944a7897de6d5978d286c9616f336021
Date: Sat, 12 Aug 2023 03:13:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1691809988
