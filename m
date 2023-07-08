Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E9F8A1855
	for <ddprobe@lists.linux.dev>; Sat,  8 Jul 2023 08:57:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 08E1DC433C7
	for <ddprobe@lists.linux.dev>; Sat,  8 Jul 2023 08:57:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688806629;
	bh=yg0PaElqJ8NoggD8N48vX7xyuu+gq3bkMlp2bEifz0M=;
	h=To:Subject:From:Date:From;
	b=fUcXnD4mGD5fT/EGgwLDnOQqAaJ6QpLymZ8JdpH9YLCQVMwr3AY1Xc3K2byjBz1D7
	 8Lfa+DERHAV3+4Bh9bHJcZDqeTXyNvI0P5UCEI2Echydnn/mwY2tMgpebfz4zVDGkC
	 LM2II31qs/LtqugrbM9OfU7iloHdz9Z4XtMMnmUbKP1P+dYlap50iOB2g3lhFLsuv6
	 jSmTd9w4TZMXJlMuitfJ+xDZMRMsekCXYaxWEdLVBAMO7OMyVNZEOCjzJC4LkdQz8F
	 8IqRSIqHvXcul7BDb04IMsh+NBk/qh9rzfRI7HR6bxE/0Bu5B/8nhR79s18Am0mkJT
	 NnaQjvlN75wMg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DC4C4EB64DA
	for <ddprobe@lists.linux.dev>; Sat,  8 Jul 2023 08:57:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168880662886.14494.7243775826637799478.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 50033c37d60539002b8d1d2d7c058e8da6f2c688da09e1af8dba810bdb034011
Date: Sat, 08 Jul 2023 08:57:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688806628
