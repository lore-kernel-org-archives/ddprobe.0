Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D4AFD6FC1
	for <ddprobe@lists.linux.dev>; Sun, 13 Nov 2022 17:50:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 71406C433C1
	for <ddprobe@lists.linux.dev>; Sun, 13 Nov 2022 17:50:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668361854;
	bh=2bsLr2fvK/cerNm1u4766Pb14ETUWENUfnFV+Uz1YzM=;
	h=To:Subject:From:Date:From;
	b=qtXuNcCJZMYiHAeCYYFH/HMnUAz8WSI3V84RyYa1FmeuYgicP6CvnQrLoyUkDfqTg
	 LQcm9LQOuFql1YBK73PR0JgqgNAQz+RPM4hOtO6Rpq0JUTKTM2rf7wRdULwMhf6kqH
	 oM1/v5q46jCQ/+/zTs8D6cSisz/47KAEWQmnVZUMLXpkz4Ed3+ER3Gcn/tR/PtHfes
	 sLptb+jKT2O069f0cSep9iDG9ymrPRYcVxOYleI6nFYmi1iP6eCNOLQwnU4R1hc+dy
	 1vDcuBmxFoFffJFL4wQ0JvdDM/eV7HbDYJxZIz75KJ7JveTJvuXOLQvySlyhBTK7Xy
	 SCU6y5DRW7AxA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 567C5C4332F
	for <ddprobe@lists.linux.dev>; Sun, 13 Nov 2022 17:50:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166836185432.19666.7180014575913203765.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f4cda715859fc29837338e77d9f995ba9ca3335ccb0b32df4c32d4a509b24fca
Date: Sun, 13 Nov 2022 17:50:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668361854
