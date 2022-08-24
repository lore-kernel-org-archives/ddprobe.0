Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B94197B
	for <ddprobe@lists.linux.dev>; Wed, 24 Aug 2022 22:20:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 72909C433C1
	for <ddprobe@lists.linux.dev>; Wed, 24 Aug 2022 22:20:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661379652;
	bh=1ArpuGksabd29LMCv+lMtBgAQskNLZgnv0tgMC4ryIw=;
	h=To:Subject:From:Date:From;
	b=qkC9nD7s6gZ7qIc4QLQZLtaiChjrLQ+U5xxyqRBJ6h2AdoRRdkmCV8QuwwrdFolr+
	 TgATcfqwoZwWQThbIN2n0rqFVNxwtqYoB3T9M137+Ok6J+C5NLvO0sway8N8hfdjlx
	 eDa0UcX9tvHZcYSUHk2JNyvULh1xryo1+Njnj/pYqHQ237QLBTn4/e3h7RGIuySmfq
	 RC3zB8C1Rjz+b3HO6KRsFQoe/Yb3KB4YdPhtFtP5Qpj8z4yF4vHQNrMq6AHQzJOkGA
	 Dd26YVCjXo/cxc9D95MY47qfagEzUFRJ/c+25+JJ23AEjMX2eDbYcCvNvrDlpSWhDJ
	 oMmuX24sfx7oA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5BCB0C04AA5
	for <ddprobe@lists.linux.dev>; Wed, 24 Aug 2022 22:20:52 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166137965236.19301.12252261798566004092.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fcfd9d9d5ae5b58067e63c3fb9c972b900d3721e069a0fd7eea2b3595aaa840a
Date: Wed, 24 Aug 2022 22:20:52 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661379652
