Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CC97F2912
	for <ddprobe@lists.linux.dev>; Wed, 23 Nov 2022 23:50:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6DE18C433D6
	for <ddprobe@lists.linux.dev>; Wed, 23 Nov 2022 23:50:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669247454;
	bh=Wd4eN3nCk/T+k4Eurjn9cZzdWp7BH8+tB22YSgaGFwY=;
	h=To:Subject:From:Date:From;
	b=V1Q0146KWtUZwA4NhcJZNsv0+8e2g4ez+2YVIN5AqYLu+0W0KykfrPgF05lx+8hOK
	 0oyeEiLF9euPJR469QBQScNbBK4YO4Yj7t9G8cUs68TMgC+3z59DW5ZHwagRX1058P
	 6RUIloQUzu0VcqWLqLm2/vo333Rs8tY9oWP6NF4ZsOKB5w0vGpNcYyiAKoCtmKRG/0
	 jMoUQzKWb/XTt5mCPA7LOLbzEg6WApMfOtRoLPqU0SkIVgfn/dq2C8i3gXHXonSATS
	 KButQbBWFsFHef5v0VrxljBxWZHDdEQETvejzeEMjz1VmQV1Kvftmz+5KJmFK8xoGq
	 MsLdvhFnZ3o9A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 534D6C433FE
	for <ddprobe@lists.linux.dev>; Wed, 23 Nov 2022 23:50:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166924745433.8739.6583886552240103149.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b988a49dd9254d77b274244ecb95ef24978588e03d0d87701e6ed3d34bc585d6
Date: Wed, 23 Nov 2022 23:50:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669247454
