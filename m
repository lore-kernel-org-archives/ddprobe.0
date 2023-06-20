Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5644710E3
	for <ddprobe@lists.linux.dev>; Tue, 20 Jun 2023 01:52:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA742C433C0
	for <ddprobe@lists.linux.dev>; Tue, 20 Jun 2023 01:52:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687225928;
	bh=/UeUiSRxmxuo/CG0Vqle5R8qVpF/rpkyKTl4ijMvAQA=;
	h=To:Subject:From:Date:From;
	b=uSLw4sBWVuRwBtezLAazVsvPyyikLLAkXxDV+BWv0kM3uyB05uqoTHhgNzxeLU06J
	 jky6RxTtrefLRxwzqxebVoasRbBcsqf5P7Ad1ecm5itNLhku2IT9RteShWytQM4AGU
	 PfI4Zf17tzZQJO/w3phdoC236QqcXElvV0C5F/K69IeA+kVmCancJa74P6/GCREbV+
	 xmN46i80qvqQV0Z2jOr7IzaSsQExnwsysvi2qjq1ZM4YxvF+Rs5bULQh+8KItD9oSm
	 4lIApOHu93n47IGW9+YgAGq25k+viTLYBDfGHjkk/E9f5lgim0cYIVCAGW+pDCbXEN
	 jkpJYmMxrRHsA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACB48EB64DA
	for <ddprobe@lists.linux.dev>; Tue, 20 Jun 2023 01:52:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168722592869.21313.14480185918573171709.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d48f154adeca43a8bbd419a600ec91fa8337761de80c57d88d930098c67ad817
Date: Tue, 20 Jun 2023 01:52:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687225928
