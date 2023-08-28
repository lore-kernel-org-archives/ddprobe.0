Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6C906125A6
	for <ddprobe@lists.linux.dev>; Mon, 28 Aug 2023 13:54:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3D2FC433C8
	for <ddprobe@lists.linux.dev>; Mon, 28 Aug 2023 13:54:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1693230848;
	bh=xeZZ5/A+LK9M+DAUHMF0kZ/Pd9VeWJ0USrRr/e3O13E=;
	h=To:Subject:From:Date:From;
	b=K13oBBPk1DZEwxMdIM7uUdBGuzRuHuQ3gUn9kUe/3pZIFimuz450E2c6LfLUwzduM
	 RZZMfd8Ay0ODy1vLUYETuzjblS22cWoQyXsgECflGbCloE27Ja13QhoKYMeF5d6imv
	 DrJfpYr1bJWa+zz0NXFGHRWb3qXFkSGr9SrAbJ3LX3EoTLxoqixJCQFKdIrDJmlIop
	 x2Ay/KjdUUlVGU8acXyOFqL+rONzOJJEMA8bTfqffl2BLvpiKwc/O4R2gqfb20LZ3b
	 51WXykkmBNGbGt1SdbinGLQwaivkhxb5Ld+iziCHebzrXheiV7Ib9a8RAFf44y0g84
	 1YENxCSPfTuHw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1643C71153
	for <ddprobe@lists.linux.dev>; Mon, 28 Aug 2023 13:54:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169323084871.12706.8660750726978191050.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fdf34cb140f98bc1399d5a27cccadad799a444b6137dd947fd1975d664c7f590
Date: Mon, 28 Aug 2023 13:54:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1693230848
