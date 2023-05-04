Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6149DA2D
	for <ddprobe@lists.linux.dev>; Thu,  4 May 2023 07:01:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id F30B1C433EF
	for <ddprobe@lists.linux.dev>; Thu,  4 May 2023 07:01:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1683183666;
	bh=oECUK0V+MfOsC327jfhru00KiuN2FT4/89rwGaQ2kxM=;
	h=To:Subject:From:Date:From;
	b=Fa+rZHIH6Z9p6IlDfJxeUEtqVzsQMGkLkUf2bwG1q7B3xDUngRf/QNARmLEkpAxsQ
	 3bH1yzJtfECIu095iWFo1g/2sPEWRCbDDRTpSDtKUGd4sqCq6AJFzdh+ayMrqGstsj
	 40G/BDTpVNyUqLZmLNV9w2ScHMIWMyW7/JTrsEcY3QbWDj7c0FqRvUDJIrkMGEUVqJ
	 Yxsn6/GUCuCdD3tG9KssrQhSxBs/3zg1s9xsI3VQctVg/PE8s3ZUByf3h/HUgF5lCI
	 qLh5yUwywRU67Qz4Q33dgcE3OSptRhBCT1GP7wvoE5Fe6zDtWDWa0BYs7dphwOchUI
	 PK+mflfT/GsfA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D0B2EC77B7C
	for <ddprobe@lists.linux.dev>; Thu,  4 May 2023 07:01:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168318366583.15757.14115038527011202080.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 07d2d0978a5fc5ccbcd19bcb8efc5455ab63ff1fa3162d2f23008c2965f6b747
Date: Thu, 04 May 2023 07:01:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1683183665
