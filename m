Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 607222CA6
	for <ddprobe@lists.linux.dev>; Sat,  5 Aug 2023 20:13:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CBEC2C433C8
	for <ddprobe@lists.linux.dev>; Sat,  5 Aug 2023 20:13:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1691266388;
	bh=b74sDaJSM3oow4ikLBmNRxPDbLiANjq7vP8d0oKqU7Y=;
	h=To:Subject:From:Date:From;
	b=dPg6pdWDXKOF4z64448OSW/uwuTlhfZt9UiM1xwpFST7Q56BSjbCF2hTOjZ/VbLKL
	 saEUGMiEbGzRB1cxeMqznNeDdP/g8MRMrwExKV9XT7DKEhqBCPg08/cf2fqSdL05cZ
	 JVTWa8k+uECxKpmqEdBLgM369MBHyEJatk0n/N5Xm0Vi7R0+8aHB+n8TDKeH/x25So
	 LWyv4kU7vyrDCZxAOLVojrzmP0GEhdmKrgcLS+vRrJ5dufD4+gBUH922ko7CyQyYy1
	 yDAPPTdfpA4bK11Fo7AlWn+6TMkqE5UK/XAHPYBughisxdguQSux6K/XZfGxR/zMXh
	 0jW88lExRLgiQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA2ABC0015E
	for <ddprobe@lists.linux.dev>; Sat,  5 Aug 2023 20:13:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169126638868.6584.15164121068281396951.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a7182365eef54b443a9227356d7298d1056c3079e3767bd2a6de16172ca24ac3
Date: Sat, 05 Aug 2023 20:13:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1691266388
