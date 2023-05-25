Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 338FDDF52
	for <ddprobe@lists.linux.dev>; Thu, 25 May 2023 12:05:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E50DAC433D2
	for <ddprobe@lists.linux.dev>; Thu, 25 May 2023 12:05:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1685016305;
	bh=fbLhH0mibZ5pMv4gzByLu+zgZmvXY9l+QJjouiy+8GA=;
	h=To:Subject:From:Date:From;
	b=SbI4DYm3DEdEPkxvSoijF2jcUcKMhocb6h1dKbN4JYcO7cDoAkG4LZxCcQOW7kJfO
	 BuP/WkpOjGJslv/Yt1Ot6eROlu6LZPTSUy9P+y3PBBF/ixQsS4nmAgmiLwin4qaXO/
	 aBApWY6V4RRGcI7n2dCbWLwJEQ4LE709h+Vr41ufh7wFts/3P3rJTBw4mA5xVx6FRO
	 HdmRStyIt06XS2ql7pHe5AAx5ONSRLRoH04QHjFjqWLIQ2p3ZgeDFxjand9ios+nNN
	 kTpDHyq2H5j2Z1seHlDwKIMhAoaWBlI7JbzWaYn+9PtSpcy1YdTRlcF7Q1XqdxlL+d
	 Fk4Ez1sJ6jtUQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BB11EC77B7A
	for <ddprobe@lists.linux.dev>; Thu, 25 May 2023 12:05:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168501630575.16560.16395941606579719266.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4aa0cca527942eaa6f146d66323420924a01ac1dd6e438cf0fdb0e841354bb77
Date: Thu, 25 May 2023 12:05:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1685016305
