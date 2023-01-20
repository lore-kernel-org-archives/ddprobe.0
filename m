Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4217929A9
	for <ddprobe@lists.linux.dev>; Fri, 20 Jan 2023 15:52:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DB464C433EF
	for <ddprobe@lists.linux.dev>; Fri, 20 Jan 2023 15:52:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674229925;
	bh=IrxTWntr1SlvhB9pmyGTlBlKOsEawLTLX5Tsg3CJk5E=;
	h=To:Subject:From:Date:From;
	b=iB7pnxdvkamBlsfSTxyxxtK09QiW+edcmqxJYa5grTcvQvDRug9d2JwZuqxEaJ45j
	 1Uy+yHJvhcluEIVCnnGHiwDHBm3saAkSpf7D8orhS02uLj6LCShtfd78pttIF+tqgY
	 qGX/31y3Qxq/HNBLyA7TCIundLU6a/Rbik0verdcRy5zovN/oYy4b2THYL5nonAv0w
	 4NfhC9/X8SYBxoT/mY9uODzisX75IFkFv9voJPoz9w3CbVun+MiUAE4XtAuewUBHsQ
	 D/zqvzyI6mODMxdcCiMokC/TZmRpaN5zJ3wWAfz/6dNUNjT5NCGX+LEhP1TKeJauHQ
	 UylXe9rz5otaQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BC343C25B4E
	for <ddprobe@lists.linux.dev>; Fri, 20 Jan 2023 15:52:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167422992576.5389.11903011200295179561.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 51d459b6d95749adb63dcb2336bced4ba9f5fb6626dcbe318b74a3761d9341e3
Date: Fri, 20 Jan 2023 15:52:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674229925
