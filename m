Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7250C65B
	for <ddprobe@lists.linux.dev>; Sun, 24 Sep 2023 07:35:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2417C433C7
	for <ddprobe@lists.linux.dev>; Sun, 24 Sep 2023 07:35:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695540908;
	bh=KkbKJSWoCPCHB5uYb+eXnE7+q3o48xaPmSiN/K9sHYA=;
	h=To:Subject:From:Date:From;
	b=ZGurysUN1RRLaNdsjF+uJBlPZZbMm+0HmFULScNPDlVbpZjwL9P/lK9C6oCxlQeOV
	 Okpd18pq2lrKAKQ0EMCNa2ZbjpeHRdE1nHwwCfR7I7y1QGv9fvzrv0x81KKcC0fsQg
	 8QxIYeUjwJZ3noS7O3lFWXeSAG4HL21viz0hY1F2JXgh9Rje+rHRXj/Cq7NYyZb0np
	 hxyawxbvQTgtppWpr4W6NxZtM8gMcC9eKKD+KGp0jnoEPMM3twNmcqeLLCisgCpjPE
	 +neJt0vDmsGM3KZcH7kPjjrb5UodVIAx3PeQ0TlmAbLeGoqLEDQBra0nc3AGcFkyaQ
	 DY3E5SaYlgnMQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B450BCE7A88
	for <ddprobe@lists.linux.dev>; Sun, 24 Sep 2023 07:35:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169554090871.17870.4518373342348222015.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e8e2238860851d34bfc5a93fed71fa0c49b78da0f12ef7a80f516f4839de463f
Date: Sun, 24 Sep 2023 07:35:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1695540908
