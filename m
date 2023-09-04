Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C56065D
	for <ddprobe@lists.linux.dev>; Mon,  4 Sep 2023 05:14:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C2777C433C7
	for <ddprobe@lists.linux.dev>; Mon,  4 Sep 2023 05:14:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1693804448;
	bh=gpxRuBtna3MRetFw27NScEaGxFTX7TY/8EVltlzl0p4=;
	h=To:Subject:From:Date:From;
	b=aRmYoqevirRdBlfs2Yvzj2sjb5lDNsaXPKJ2i4X6yzQz8vbnWX4rVgAV2KyQI0wWt
	 LIWMaaHQM/woAi8ci2tY8HRuqh8CP5RAbFyp0qKHgK4vcI6GVbMuPQYoIh5Ytkpl+e
	 W9Nii1V+bC/z27HRu/2qUHq2vFbCUAINhGqWcVmiMNqSGb0C/2FSGRQn1LoqROC8PB
	 Qz+5I7QpScO2Htm4Igi6M/kpawO3kZkDOxXfrG8QeXA08iDwW6m0BdxqsHzeOTrqQH
	 Z8d2GkiQK1an2wrUfO4bYqlU0tg372sTN0JF3fyQV/a15OGB5qDq/+iQxeVlpGPCXS
	 6j5a7ToLtPLZg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A5C16C83F2C
	for <ddprobe@lists.linux.dev>; Mon,  4 Sep 2023 05:14:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169380444867.30985.5146760100734187334.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aeefd22d9525f8c4b69d4f2da3a57d9334c0cba59a6ff14e482d3bb86ee66db8
Date: Mon, 04 Sep 2023 05:14:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1693804448
