Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 177B9626
	for <ddprobe@lists.linux.dev>; Mon, 30 Oct 2023 00:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="l0GbZrR2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8BEE6C433C8
	for <ddprobe@lists.linux.dev>; Mon, 30 Oct 2023 00:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1698625096;
	bh=xssDK8Eab/CK9wIKSOrgKSY4NyYkRPb7X/s9dchbq6Q=;
	h=To:Subject:From:Date:From;
	b=l0GbZrR2vlvE+4lsKdGVfViGFDbQn/rybcBhl4JRx3Ue6ur/y9CMN2RHDfRIHtAD+
	 gBJ3BcaWXT1XvxnmfX+qMTfQhIM2hOKT7kc9aY3PMdhtu02s3hy+YCUhIUMy7xpUsH
	 Rxb9RFo+aoJ3/UmtUANsTGJ1+Y1HkeUJzyOpZBvclz8Gz01rOxetyKUbN/XAG7vWHj
	 iGAEIKCMko3TluuTG7TbRjX8yEx6vxRu2S3qU0zg1f+Xifmryo0H83H21TTNpfvgbi
	 +D0kFDWBP4ZWDlx1IoQ8onOhUqgLSI/HRQqJOpKW30E6ZEZpPMqCdBjPEIjcjO9aSG
	 9LE7vK0go2V1A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6623DC4332F
	for <ddprobe@lists.linux.dev>; Mon, 30 Oct 2023 00:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169862509640.25239.4550998927156155472.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 030f72bc82bfc558847fec9286eed7628e802514d745069f48a65d52bfb630a3
Date: Mon, 30 Oct 2023 00:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1698625096
