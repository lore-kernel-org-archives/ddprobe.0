Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D59F134CE
	for <ddprobe@lists.linux.dev>; Thu,  7 Sep 2023 17:14:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CDF66C433AB
	for <ddprobe@lists.linux.dev>; Thu,  7 Sep 2023 17:14:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1694106848;
	bh=SIWZuZy3GngmfWOPyiE/v1gsVpuVEigkhQh9XFkkR4c=;
	h=To:Subject:From:Date:From;
	b=EJTiY/nAsm2BY8FehEElenMkKs6hHUd95wmb5PsmpK2kgKfP3SaZARzAWnMSMceYv
	 prqjSHSZrZnaGAhrrP5fPRUyj76nlDYj5Wwd3MFlM8hLdmBtbjw4+3XB0CqL/KeGXf
	 iuomspa3PE4S0cYrxMvTm+3Eah9T3ZGeXZrNf+b5FzR+O281OzrQeKj8astqZ/+I8G
	 DQrXMG7PcEk8W31DTEcMIb3ntWaObab4O4wyFID2jLMxMSuv3x53NKcP+oRavsDW5e
	 qFN9x33Me0pNzfed8rYSq/5bpue8tg9PmhqmV+7sOildUYXzgVtodhZpfG6gDUb5iC
	 +fbAZltLOJQkg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2371EC874B
	for <ddprobe@lists.linux.dev>; Thu,  7 Sep 2023 17:14:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169410684872.1941.1371288909554980256.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ad642726f8d58496ff90efbd7ad24236b47a47c500f1c195b7ce088666fd3b9a
Date: Thu, 07 Sep 2023 17:14:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1694106848
