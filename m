Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5026312B77
	for <ddprobe@lists.linux.dev>; Thu, 13 Jul 2023 11:59:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C2854C433C8
	for <ddprobe@lists.linux.dev>; Thu, 13 Jul 2023 11:59:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1689249548;
	bh=sFmWVs+oiE4FaITXd6odyjlpsEUNRAuklw121bZPUCs=;
	h=To:Subject:From:Date:From;
	b=dcbxu7i2hbhraoNvbi7EwwMV4vPUf7EGtpSimja8N+xO6nNKy1l0/x/ljODhHemU0
	 pZbKhNdXRVMoiPPMBJVzulnuM6FDKqXizjIlDa+upSDaHvmhw7KwwY9irkBq4GiqnJ
	 3BwFg6OK+JWAGgphY3P7MS8TF1ANGVqsIVcJ3ZDYU68taxU4W2XnqIP4fLg0SHmbc6
	 +fbDddm7RmfcWDSTLrbMZcWG0w6gBHy0sCDGFKBP0X+BNeUsZieYDHoEljzBKvBTiN
	 97vYNS1e7Ev3tVI0j+6BZtlpmhGheGWSp7ocbDc6cBw+oZVrX1pP3o6yIH9Mn0G9oh
	 6Ufedoe68Vzag==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A5A2FEB64DD
	for <ddprobe@lists.linux.dev>; Thu, 13 Jul 2023 11:59:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168924954867.4259.10113350365232043712.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c5a30ef3209f1d424fd5010eb56edbb8a483dfbb9140d1081d81a04db53b72cc
Date: Thu, 13 Jul 2023 11:59:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1689249548
