Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EB6967B
	for <ddprobe@lists.linux.dev>; Sat,  3 Sep 2022 00:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 835CFC433C1
	for <ddprobe@lists.linux.dev>; Sat,  3 Sep 2022 00:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662164453;
	bh=HI1oQFs+tPhwTxLqt6aLLaBl14zYWBKqDMIp0CrxaiA=;
	h=To:Subject:From:Date:From;
	b=QI/0poVUMoiof9q1hUQrxsuaGer4rKkqr97W0e9CThIw/ZlGQU8duRi7PENawdLuo
	 +qoqdtFFZml9SbC4r6cpWgchFT7jUAtSqt38ewxk5SHRzsSRrj9X3gl3Xm96epixw1
	 aTaXxVZ4m1PK0tML11ii65XkX2j86Ds5LrmWwO5a4Scdmbr+YPu9oszG25o8ygf3mD
	 sgysxG5kv9DFVhBE23kpJp1eTAzMaZo8cg+3lw++IuW40ZEA02MdLptwW34hgXn+ZE
	 QN1x+FiGXZvXGXwqBDsqEeW9aqGvsGptFNa30qignwD+CzEiVR/m3kBGNKEGtuyU7R
	 s/VKHZzj1nAEg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 646D0C38145
	for <ddprobe@lists.linux.dev>; Sat,  3 Sep 2022 00:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166216445338.5889.16972226427852353410.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 77679e2f8eec11fa12fb26ca0ff928ca7c536d0232cc7a94e770bc1505d21d41
Date: Sat, 03 Sep 2022 00:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662164453
