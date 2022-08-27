Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C8E93290A
	for <ddprobe@lists.linux.dev>; Sat, 27 Aug 2022 14:30:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7C482C433C1
	for <ddprobe@lists.linux.dev>; Sat, 27 Aug 2022 14:30:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661610652;
	bh=6rJBYPqot7WxBX7XiIGfm3CPNSRcGaPwnrKj7uKghNI=;
	h=To:Subject:From:Date:From;
	b=bQuSx00sGYnBAeslU93sqpy+iHCtsQ8XcnMA4oJf84mek+tcvCZ+mVsfSM6zhDzTX
	 NvVE1MRlO8oT7EiXL9xTpy7xoTtptsZV/ylHjXA7tL1mhGfVnvo6XKQ8FsuryMonqG
	 CPOtaV6LKBykg53p9o/Zss26MTG6alVreON6o82EzQUibC7CinrnreySx1Ro3oyaS+
	 SdGb3JFAgMCDYnuQxGgYnCxQRcDpZvmbkM9VA5y74up7ZwWRFRMbqng2e8TVtbdpTT
	 K6PSMJYy2lrBIuDHBxEkCQcMaoPN8f7kNA1nCu4g9ZZ9m8+/z+6OJcK9N6pPuFpmGq
	 V63nMDhzDOSlQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5D1ECECAAD2
	for <ddprobe@lists.linux.dev>; Sat, 27 Aug 2022 14:30:52 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166161065236.19204.9683971518433883924.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d54dfb83e79b189b24ee9d71d6106dfce96dfb8a00752deee15d15220d56155f
Date: Sat, 27 Aug 2022 14:30:52 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661610652
