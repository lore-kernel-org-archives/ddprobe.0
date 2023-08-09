Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A52819BCC
	for <ddprobe@lists.linux.dev>; Wed,  9 Aug 2023 15:33:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C356EC433C7
	for <ddprobe@lists.linux.dev>; Wed,  9 Aug 2023 15:33:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1691595188;
	bh=cATw5JmqvDxFo5cFPgH83ncMCMPCLxhkBpiJN4ds5A0=;
	h=To:Subject:From:Date:From;
	b=owUApN5nIHARuRZy71aD1OnPUfpnBDHNL4iZcjN7qZ77wCXV/aWQNuo7LNMHbE7lS
	 nhT4vtqJR0cZc4rylqim8dgMAxy4PcK7ePRm2b/WGjZ5ZK9F4Y1dSTy3wH9oJM1P/D
	 fqM+pGkjnSmvU/9atG0swSDAPoSLFe7RDhMStFr6MfwJb7goORh6SEfpCYhzHNTBkJ
	 1Bji5H+urT3qS93ftfMaQz8zkAAnbaKQWvgsWLZbqj/GtH7hlRrrhQagLLFktQYrGt
	 hHp5/NGNyJUAXsm4nuxRtUcp/jIz/1hhOguQDlU9VNfqfinqOVjTeIfNPPytkiLdlQ
	 ekiJgpDb/7c2g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A5538C001B0
	for <ddprobe@lists.linux.dev>; Wed,  9 Aug 2023 15:33:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169159518866.8725.857106040342175593.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 702674a64babb15c9dc5bc669f683eab0f23dac8f4bb84e6bd0d93c16a723ec3
Date: Wed, 09 Aug 2023 15:33:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1691595188
