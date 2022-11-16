Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B9C5B5CB7
	for <ddprobe@lists.linux.dev>; Wed, 16 Nov 2022 13:40:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6D7C7C433C1
	for <ddprobe@lists.linux.dev>; Wed, 16 Nov 2022 13:40:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668606054;
	bh=jGcq/nxsj5wPzIhvZjPRgPhWJq2mtywTzl5UXuh1CyE=;
	h=To:Subject:From:Date:From;
	b=uX8a8695WSOLBm57miSR9JIaapbJCJQimyYGXWLeFK8MK7YXP9uGhskiplfz+FKRx
	 sp6opv1mNmasm5dprwmf/HOt8gFiun31z7AUjxScC42kuKHJ/MrdCSIYNyu6QOvrzy
	 ORPz061QNCj0xy9MnpUsalmqScFNTh3otp/jAoLPjPvYU+/xhnNnNx1Wthn+RevwxH
	 GF59XAv4EniLMp6pKnkqbvLd3j/Nx5N89jM9gs3N/ifL+3KnThYTtH1nmnW28KL96V
	 5ymtuHbAgG34LJ4h2SOm73x28+Yw4P1DbCDIB+E0Z6AJViAShAKjXh2HxCqNbz3DTr
	 uVTqR0IoWx6+w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5625AC4332F
	for <ddprobe@lists.linux.dev>; Wed, 16 Nov 2022 13:40:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166860605434.25516.7566388881804289643.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5f676211a8d45cc751aa51cdbc8ada463237e30d93c55503f236bf072f996d31
Date: Wed, 16 Nov 2022 13:40:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668606054
