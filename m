Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0B6D728E8
	for <ddprobe@lists.linux.dev>; Thu, 28 Dec 2023 01:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mQ1awBJO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7FF53C433C8
	for <ddprobe@lists.linux.dev>; Thu, 28 Dec 2023 01:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1703728096;
	bh=aK/FRz1c8YambttCOoVFz+gO8KmD1BV7rX9Z+pjHt/w=;
	h=To:Subject:From:Date:From;
	b=mQ1awBJOHZQm2/zA3dgw2a+/jLmt8+MBYcxWqAOtluT2PRWzsJmOfRCMFus3EslDj
	 ZJ2OlAHaenaYl6E+alMrJfmBo6mN+R1y+RlTOEKSt+FsF0eGtIOgngsL8acdDEJe63
	 ++R5O1mBuq3Zfl39CWvFL3+NWI9CcVaUU+oHZe52nTSaXdhhK0Xe60gsc7Cg9r3REq
	 WYiVS1TMAFqKTvrYyAfPOXi+TxdkZCr4MdEZZxbUBGq1GBlDbpAvgIHJ9mMOYuimnf
	 M/2NOp9vkJy5bNsRjKWALygrzbmDqkEG7gwceAqgoUvWHv5fNR3iFyjqSkkERTG4ES
	 /9Qsrhco1FojA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 60977C46CD4
	for <ddprobe@lists.linux.dev>; Thu, 28 Dec 2023 01:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170372809638.17134.2682952644325486163.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3d405a3cf5b59c2d096fa9e945862d058e0f3aadd6357e6124e448b2274f2df0
Date: Thu, 28 Dec 2023 01:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1703728096
