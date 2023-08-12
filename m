Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6ADEB2F50
	for <ddprobe@lists.linux.dev>; Sat, 12 Aug 2023 15:33:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC69AC433C7
	for <ddprobe@lists.linux.dev>; Sat, 12 Aug 2023 15:33:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1691854388;
	bh=TGllSCpjLUbzW1oWMs7Uk2kxWpyUh3fkVNAuukzo8D0=;
	h=To:Subject:From:Date:From;
	b=qlFxNRX9pZZr0QrAOpqCq5ztsOeZSDnntAg3AyShAdd+6cFUigMrdxXnmjLWta+kP
	 PG0OGPAclNCLN72zMKn6O/zmqGU0zJ/9sMGicPPAAzu1HPYmQVh8JA+z9WrJ7vLxds
	 XTbUAyVTLbcQV6qhrvXeVg4Dzhj9v16X76eFxzWUu2qHRldaS6fHcHfTlmOAePdEXW
	 FAtWvD75IuCsNTvQz+oeoMszAyNY9PmaYtfYWDTN8/p1QX2PNMU282vs+1NK58rIR7
	 koL1ite69iXBxy3AzYw8VxRYs1SjFgp4TcRXR+9wUTmM9u49G1s+zHOjN5fKhFO9eZ
	 SSB0/iAi5XZHA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABC60C001B0
	for <ddprobe@lists.linux.dev>; Sat, 12 Aug 2023 15:33:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169185438869.7217.6915233979363743167.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 48896839243d1376a72c25af374a0f74d1cc3e0873f4120646eb9de218180ba7
Date: Sat, 12 Aug 2023 15:33:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1691854388
