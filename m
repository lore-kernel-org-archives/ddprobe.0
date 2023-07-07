Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5D16517729
	for <ddprobe@lists.linux.dev>; Fri,  7 Jul 2023 20:17:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D404FC433C8
	for <ddprobe@lists.linux.dev>; Fri,  7 Jul 2023 20:17:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688761028;
	bh=pUMARYOQ0p9EovoaOWF58gxWCqwzGZytb39FtHXye30=;
	h=To:Subject:From:Date:From;
	b=HaPYSNE/0d2Gz1xc6Yf8KGJbWwTr24duqiCNosIPXtOnKSIBZcCBSMdmiUCvOVT16
	 2ejVfJLOv3v3+S6LkehCBWAAYefkexUVVuE254h9Zye+OG6akj5B8Lp+FbtnrA5Z22
	 4Bg4tFqt3XdLkyOjx5MZOKUbhU/GJROkZLpUGO7Al/V2YBZxuQ8mGQ51VxFbNNQwOg
	 bNJ2/JK84tkVR2T2llCROLBjee+fZSo6lElBJiPiYNmyhi7FuiM7Rqc6IReKoAzo+3
	 AF/8/JrEk/+f80wktDHwaETOgxf3BgHOielsizd1XMbwZFbP4U3Yc5XNjFFxjA7Qfg
	 WEIxqupHX6PqQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0E77EB64D9
	for <ddprobe@lists.linux.dev>; Fri,  7 Jul 2023 20:17:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168876102870.20725.9612533799982086541.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: af9525abfbfd586eaaab3a8e497af133d0f7c64aefdaa485ed6ae7abf1646fcb
Date: Fri, 07 Jul 2023 20:17:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688761028
