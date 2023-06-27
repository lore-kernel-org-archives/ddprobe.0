Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 69DA213062
	for <ddprobe@lists.linux.dev>; Tue, 27 Jun 2023 18:13:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5FF6C433C8
	for <ddprobe@lists.linux.dev>; Tue, 27 Jun 2023 18:13:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687889588;
	bh=YGBIcTogfy7GK6F3yW6IdqKGdrlZxdvrbiFVNXhypjg=;
	h=To:Subject:From:Date:From;
	b=m7pIUGDsL5g61UNpVjz/t6+/0/3/L4qu5KTcU6Tfyp3CR8SISC6kooNwQkEo3ctPq
	 Qwi9aTOPbuvs/4U1BAvZMd8N9Zbwgf8Tqf1G+hJxhqrNS5IpBbugwrg4qkPjQ0HoVe
	 OUqhHDFKSS4DjyWA3hs3IiYFahLF86XFpJ0lGqscrL7NfV8KAK50ZV99dP+W1fuuKu
	 mxTPPHLuAXKR2DF5QuVexy7LrMsxf3F+cdpRlPzkYQ2AVg+q+RlMQzb8CHvDOYuqCV
	 zD2Ae1VaWnkSrEzcoGH3BW/4VY1XBKoI0Wvh1r+h2plSWEyEcCioQMcEZao0H5QkBG
	 zQQvzUADpyTUA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD3F7EB64D9
	for <ddprobe@lists.linux.dev>; Tue, 27 Jun 2023 18:13:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168788958869.21912.7583042036005921877.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 40a368c802402889c8d3d6d6ae24931b227d1c89dba724ca11a262240e00d8dd
Date: Tue, 27 Jun 2023 18:13:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687889588
