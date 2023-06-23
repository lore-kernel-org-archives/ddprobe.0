Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B66F8C1B
	for <ddprobe@lists.linux.dev>; Fri, 23 Jun 2023 13:53:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C143CC433C8
	for <ddprobe@lists.linux.dev>; Fri, 23 Jun 2023 13:53:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687528388;
	bh=joaBIDFr+NPhBR67V1hczP1TgqqjVR1aALJr/+OlAAg=;
	h=To:Subject:From:Date:From;
	b=ri5BECfEWbwNbRXgFBTq0+WG15vDhMXGayM+7YR45UQn81v5fSgQhUDcjGD9qix2m
	 rPWcgFM8velzO2Qixp28p3CKNMCPUY+VBUAwFjyJMLN/nkMcz3yc78j8EvgBKBYXnE
	 PTJOqEqLy39LKdJPq2jMRLMT0SY+pYw4o/BJDYbR8XcRmgWbb9dUXR4RAwN60/PHmF
	 eMHHc1RLcWfE9++OszVCXfcXdYlMs4kyKo9Wf1oiY2JVXB4HtuHZpJSmxlvhz0YjQm
	 cTmnNUkL212G+hPZhIk731pQKdSUAfOB2pnbcZRmF7iLMEE54SZCv+h+mf2H5BVw6m
	 40hH/Z3hfm7zw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A5332EB64D7
	for <ddprobe@lists.linux.dev>; Fri, 23 Jun 2023 13:53:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168752838866.32124.8835383780257254322.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6bdac6828b03885a7f1b8581a5318d365281e8cb71e0e9ece781be8cf41d2094
Date: Fri, 23 Jun 2023 13:53:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687528388
