Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 451FC36F
	for <ddprobe@lists.linux.dev>; Wed,  2 Nov 2022 00:40:55 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E0F09C433D7
	for <ddprobe@lists.linux.dev>; Wed,  2 Nov 2022 00:40:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667349654;
	bh=0TWlrsJvo8fJWQUzzJC+vCJiH1R0jvOfsA02ezV3ae0=;
	h=To:Subject:From:Date:From;
	b=N0PguyWXD9vW/efB9L0JOrjGfCkGXqYYpXsLZu6DZ/+ai+VFtmi2NUUm/O21uuc4p
	 Mn/NT7y18WyxbRwzBf4B6EFBhnwYk3UfVsWijUIw+eBLEMFBPZgWMVbJTt2Brg4NBC
	 gfgmIFDgvQMlCXLEFpPGwghpoJN5xmxGRETiFEJUh2KW3JSO2/Q2RBSb04CUsb+yMX
	 CkAwo4+tUNRsjUFeYAltSu5LVKGflwVmsF5vLDYwj5h8zbMF7gr8mAcD+F3OJGJQ5H
	 +6RABzj6X5n6zvlaDcDLUpFrqpzeTXoHHINVi9q1JdwpCQX1NmHSEVtXoO+m+F4Oj+
	 KvTQTNpSDzbiA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9CE54C43217
	for <ddprobe@lists.linux.dev>; Wed,  2 Nov 2022 00:40:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166734965454.4475.14858818343720485440.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6495931de30bbbfd877bc9d135e27fc608f0db31e009715ea2cd77c309d5affa
Date: Wed, 02 Nov 2022 00:40:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667349654
