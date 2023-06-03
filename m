Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 51F01259A
	for <ddprobe@lists.linux.dev>; Sat,  3 Jun 2023 06:08:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD767C433EF
	for <ddprobe@lists.linux.dev>; Sat,  3 Jun 2023 06:08:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1685772485;
	bh=eekICprTdJ3RopalcdxQCHV7U1/H4YOrCmTZsIshlRg=;
	h=To:Subject:From:Date:From;
	b=mdSRAK9wfUdwDrH+kgn9dftHWsXvIK0Ib9Ofu6KHFv6ZZmO81HrbwZGlfp6QRuxXk
	 EzLpZkV0v882mw6RGokDLoRTzHGLR77rtterunTC/Djr22QnUc0Sg48JNliyuNqhSe
	 0Rp6LysbE5uDuGiwhvDgoZ/yjx0ZTvzOyICO+uCVWhtAQ02J5QXmw926LdoZZMfgI4
	 7msyyGGT+tLE+hPDUHqaOVCujvkw3nhbY8y8mresYvWVVjDel8e0BBgwvcgfrQaVAJ
	 l8BsOvR+FEweq70RMROf5leym0Z//DxW0x0ZULGWr5x9xYvoWsXqtWpTIGNu40biuO
	 uEcUmu5LOkL+w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B624AC77B73
	for <ddprobe@lists.linux.dev>; Sat,  3 Jun 2023 06:08:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168577248573.28044.17149378767715570716.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 806e589217b4388d7252300bd88769dc942b89500c1986395fc5543964fcc956
Date: Sat, 03 Jun 2023 06:08:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1685772485
