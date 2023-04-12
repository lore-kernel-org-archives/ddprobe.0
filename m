Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A2493C02
	for <ddprobe@lists.linux.dev>; Wed, 12 Apr 2023 12:22:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6ED6C433D2
	for <ddprobe@lists.linux.dev>; Wed, 12 Apr 2023 12:22:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1681302125;
	bh=ybgYn5JHZvmEHk6lW7PVhVc5ZfSsIEUT/1O8Ccnqhn8=;
	h=To:Subject:From:Date:From;
	b=bthhUKSwoMCethkiCK8Et7MLbUrVn4pugitDEY/s8eolIZlDasAYk//OJ1QmF16CT
	 w08tftCmiTw60y4f7rHFglP4L5P8R41U0hFNR9yUpfOsNeVJGHUNWrbxtdH5WOEFRA
	 CWlFm7itv3BaU3z0TDiiSbiZfxll7zC3Sf2FoKjXDVaNv+3Hzx4NqKrpYU/x6OZ8Ne
	 gp2ZLqGIoBxhRKoZ01vvpD+HI0YMKBpU5Z2Bh0T5F1MVnNU8htw+TML6YEJt+u/RiD
	 NaBoefCFztQdfm45xgeRIkmSVUfmHvEnDJgsC+q45/zkFd6+koEOpRQrv0wmMUNpW+
	 vAhwyO6+Pp7dw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BA6B0C77B6E
	for <ddprobe@lists.linux.dev>; Wed, 12 Apr 2023 12:22:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168130212575.23086.3011798615522307342.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8cbb4452484209a359be480d774793b3df590ef6b8ba5cf144fe4ec676c9bf8b
Date: Wed, 12 Apr 2023 12:22:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1681302125
