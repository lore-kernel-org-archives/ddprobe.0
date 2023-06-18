Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 57E6D15CE
	for <ddprobe@lists.linux.dev>; Sun, 18 Jun 2023 12:00:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB6C4C433C8
	for <ddprobe@lists.linux.dev>; Sun, 18 Jun 2023 12:00:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687089608;
	bh=NGqdvguIfOftie9yc4NnacmI7kB+SbFgOCbbyZobm7w=;
	h=To:Subject:From:Date:From;
	b=OiUoOB0HfSYICRT0n3tuyriv4pDVpKU2wK6JpAdxw+IRFymFpdT+CKB80ItjQGtvw
	 L7v4OKINOdioLM+fEJtUS+cV8a/C0WIhNs0fILTrRCzh5xuIRlmqw+RE22mgdaRg8k
	 jf6KaSXI8cSkuYLJVWm+SiW7U4853MRkYSzFHcHkpXKGnaM26NK5BYSDPbvbOhjRLi
	 oXxBrD4BUyWxcx8jtKLqzbsmB+j+S1/JoZzm8ZxYvpniw8+fsGjatO8bH9KyLj9o+g
	 8O+jA7kOc3In6ZbJx/VLZyaEtzjfClBaktfptC/R9Kdj4orhIX5JNxuLWabTaNuFdZ
	 c7SH1wDe6gVcQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9A43EB64D8
	for <ddprobe@lists.linux.dev>; Sun, 18 Jun 2023 12:00:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168708960868.3995.10509607877306400806.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e79f48fe6b8c8cbecdcc5a581c0a098db009aedf91681a25a2735d7a3a69fc01
Date: Sun, 18 Jun 2023 12:00:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687089608
