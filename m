Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6E3841108
	for <ddprobe@lists.linux.dev>; Thu, 29 Jun 2023 02:53:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7001C433C0
	for <ddprobe@lists.linux.dev>; Thu, 29 Jun 2023 02:53:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688007188;
	bh=u4nj9zi1FT04JOSxfn031GeRweY1bEUvLki6AwvSDv0=;
	h=To:Subject:From:Date:From;
	b=IW85Wk6iyjQ0+7rR2pfYjPPOqw/QUmdLOCjjUlfTnHyqcM8XC5XA5mLmbraPLkcxo
	 cgaRfVmRb9TbLxmQtFpn3AoAmgCLhrAgq4CeaRQdMphnwFHiQjaNP3Mg/ByUxBOfDG
	 ToGskTpMFb/lS5znyAwo34OGKkYUcn1QZGEcsa79/Hr2xzfhmQpnnKYkIEfv4FZsP6
	 F2azUNLL3qB7sWqmpf+X12knfaOQJbCa6HyqvP8R2hIpR1Abq9kFZEeN8B8EXxawUQ
	 2s9gziXKSTS5ofoZvXhqoPgyd0PxtlHflEbQTE4CahbvWxZfSEAc20y6MIvc5h2Gd8
	 eHrJzMDtYuJXQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B9A80EB64D7
	for <ddprobe@lists.linux.dev>; Thu, 29 Jun 2023 02:53:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168800718873.11013.16279686535675014253.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cea649054fc25986284c7e227a4f0ca093f711203f7bd35b93a77e0ca356e91c
Date: Thu, 29 Jun 2023 02:53:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688007188
