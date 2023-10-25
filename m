Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 337702D610
	for <ddprobe@lists.linux.dev>; Wed, 25 Oct 2023 02:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hLFa/Vfd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9336CC433C8
	for <ddprobe@lists.linux.dev>; Wed, 25 Oct 2023 02:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1698199696;
	bh=HvsxmSWZ1pL/go2WgVcH/oMx7ZJfBRCvA9em898I3F4=;
	h=To:Subject:From:Date:From;
	b=hLFa/VfdlqBNfbzYVzjx1j1yb6Hj7NReInE+D5DgP1bB6tO+p6ei3DcLI9hmfBqta
	 eKukwP1XnfGr+VZGVixS+CpXAhZN922+CtVsl3g6MfZF7wmQOPj22KG7WwuWpIN5Ok
	 8VJn6tTyWPk9JPgLxqm/J4u8Ge1D79FfaXpIYD3ptK9FmiAsd3WgTD1Jpt+yUDsV2B
	 P6LV7wDjG3d8b1SJ0YeW9Kyez2DnXNYhLfku63EI41JzcL/fschDqv1I/br/goodWB
	 D6ywZBToJPtW2WDZF8PRxHDs4hhsENU8ZfC25/SdiLUYHhy7NIOYUQdhefKlYVnrnW
	 Rtb97IcQtoQNA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 73E3BC07545
	for <ddprobe@lists.linux.dev>; Wed, 25 Oct 2023 02:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169819969645.21319.7647280880565624888.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5dc2875232b04b338fab8014cd560b024284281d824fc441dccaf5d6c4cea27e
Date: Wed, 25 Oct 2023 02:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1698199696
