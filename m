Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E6759179
	for <ddprobe@lists.linux.dev>; Wed, 14 Dec 2022 00:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 95A9EC433D2
	for <ddprobe@lists.linux.dev>; Wed, 14 Dec 2022 00:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670976087;
	bh=ydg7jFgzX27ii/llQHSz6cPu67avVwwB2YvBgDw2BmQ=;
	h=To:Subject:From:Date:From;
	b=DoOeEszAcus4oLIF38Bb+nman56CNVTqzWWca8eFUkhqEBP3tNi2zgK7dwpp+SKdx
	 eMxtfktiNSBvKMwf7sTf5CYIhUDCfz3P7QfgdIhG18z2CerReyioU/sEl701bq/1vI
	 LIKfPs1yhcZIY/19K8woGRiX3xqLIvR6dUsrDdqmhKBlJTgqtOoaIVOPYy+Z2NOUar
	 JW4j97gDgICWGiiR4rBpgqZbcJqGU9jEGrlSR/UaqY+ohPwmWP1+MeN92v6ra96yu+
	 LJM+hM2z5ENlzz5xBc/mQ5l7eSLWObie0i+x0p1AIs2+DtLD3qzLSwkvm4/WtUNcxl
	 vYdqAEszaxD4A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 69847C4332F
	for <ddprobe@lists.linux.dev>; Wed, 14 Dec 2022 00:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167097608742.8748.1593823708936157751.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ea0a6bfa979fcbab8160cb7133c26bb24d504bd62d5d2cc36ab14f273dc05319
Date: Wed, 14 Dec 2022 00:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670976087
