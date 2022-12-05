Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C5D6C6125
	for <ddprobe@lists.linux.dev>; Mon,  5 Dec 2022 18:00:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 71FC2C433D6
	for <ddprobe@lists.linux.dev>; Mon,  5 Dec 2022 18:00:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670263254;
	bh=kCK+dOaXvBkN/sS3gJ4KeuGHHL0TpA+65YTXG/YwQOM=;
	h=To:Subject:From:Date:From;
	b=SglHtMNVR/wgtlULB2rVvXiCCgWaI8cqRVS106ZYGLRbq4AHYthEygFfFSLkPH2nf
	 DLnmCJ7i+vJGPCVq0xs8Ccu9YMrAjLwvbxXmfbc6u5NaM1WZRW+Iw92xyITY/k9phM
	 mwlFLHM6cMOzvWwDARRE1gyWsgZmtdKEncH8mb4pLQgZdDWtg61ZOn66nG0IMiiHL1
	 jLNWWPN6Kk0Itddhj9AWReFM9SoNCskZ1NUYFha5JHTzXN0zO2+OQfQAIBkxKWh9Hd
	 VTNYRnKLkZ9wL0lGgfZWT7xe3BvlT/CQnrMqq6P93fsl0hnQ+eR7Ustl+OYs3OY022
	 TPNaTusJZV4UA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 56520C4332F
	for <ddprobe@lists.linux.dev>; Mon,  5 Dec 2022 18:00:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167026325434.29347.16842244365267180445.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 12f2fca38e805a7862493f4391795ff24677f955c978320177180d7e9d48029e
Date: Mon, 05 Dec 2022 18:00:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670263254
