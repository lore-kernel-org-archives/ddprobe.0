Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BE7C417E9
	for <ddprobe@lists.linux.dev>; Mon,  3 Oct 2022 18:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 740EEC433D6
	for <ddprobe@lists.linux.dev>; Mon,  3 Oct 2022 18:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664820653;
	bh=SWIhsZeA8aXJ+mRySAgIxe4e5LXtm+cYjx0xQOCBbJg=;
	h=To:Subject:From:Date:From;
	b=eezH956PkGtfJ0G8RWU/X0sNI4pZF6ew6Vs2gpznu76prKW0EXeAFiPo6nlHKp/8o
	 3shLOmLIv1LEgHythvvFrD8JLwvT3S50a0N4U8GX4mEAfX8Av2DRjXxuci1PGX3qwY
	 m3QuBgh3iN9nCNfi4/XmJZqOuKhSOBCoXG7oUY1UDcp00xDpblPRgwWvmXja+vs87Q
	 kBPk1Pc7RG5Dav1PnVP+o3eGfO1xJ7UGGC/i58O0cIbISLUOxATxwCk9t91JKn3nJ/
	 KW7Khg8K42tEvCRaJIb2VkXFU4Ck9rLWMUPC1K/1gJxFMTzkc09HVuSd1oXt4LTejr
	 3GvwopuQPlfvQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5C3A5C433FE
	for <ddprobe@lists.linux.dev>; Mon,  3 Oct 2022 18:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166482065336.27606.3201325422544457975.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5fcff113ae5ef3c45c2467794259c43a5e198c963be359c64c9f1eadf24d063b
Date: Mon, 03 Oct 2022 18:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664820653
