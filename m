Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CB0871844
	for <ddprobe@lists.linux.dev>; Mon, 31 Oct 2022 10:40:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6CAD1C433C1
	for <ddprobe@lists.linux.dev>; Mon, 31 Oct 2022 10:40:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667212854;
	bh=tSZ53Po3fAHs4ZLBwI2ar6HvpzC61pLj5GH9py5ft+A=;
	h=To:Subject:From:Date:From;
	b=BBB/0m4REn8otCHPfOk1DWz8ifmaw6LiyBkHQFb2MdB2j2/fi+0KB6iitpi9d7AUs
	 o4bgChKVaIuUJIIsG+ADyRfcTX5st/uICqfxH+8gjejn12+ZnIB0VwA7lwGmCYaJfQ
	 csx68l4of/EV2zU2ItZSDghYSQrjsuBSMbD8xV9PEMsbV5rqTGnuFko+9XMMfLfqrv
	 hebDvjfR/Ad6oa9fmv6QtZIf07mEP7J4LH4LPZ7vaHVPZFziPFbsSiVDfBOHHMYlpa
	 FS2Pdutl6j1FwU+O0QYMeHYhoX4FHlPDTmbG2Ctx8HDmzVPOA0fKju3rJVIGCQNdAJ
	 yte6GPJFaZQfQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 54935C38A02
	for <ddprobe@lists.linux.dev>; Mon, 31 Oct 2022 10:40:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166721285433.6032.17152024967076381959.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 094218b058516a377f5e8fb8f4eb0bf5a851aeb6891017ac4b17633ebdb79b97
Date: Mon, 31 Oct 2022 10:40:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667212854
