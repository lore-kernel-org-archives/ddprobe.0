Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E37812F34
	for <ddprobe@lists.linux.dev>; Wed, 18 Jan 2023 22:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 94AA5C433EF
	for <ddprobe@lists.linux.dev>; Wed, 18 Jan 2023 22:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674081687;
	bh=452Mmr+61b0xvIa2Tzvvzdqz9bjj1uuU6srVApSbkoY=;
	h=To:Subject:From:Date:From;
	b=RpzcuyiesW+fbRz/sEseJyHbDBZ3GJNQ88DzLymMxWZZ1HVkyfauOSiogocDtpNbR
	 L05HoW6ljCE65bplhT/6TshoRQUurlG5Z4P66tGdzgPIoTW+WUkxF/EEccTcsxYeJF
	 Ovcp7UebkF3nQhp2E8UY+VIygkz+hZZUhAmepwaC5STLG8bwxyQYpcoUkuSpWnTHDE
	 8bk7l1yfYbqBPfxMZUKe5TbJAS3U8y7IknOPooLmb2+tplEpJMLookoCnM8BoSUkPI
	 4M6/C7ZZUH8bUwUNvyeDkA4jFSMo+SzHmmb52+/a99RzwhUWNYTniRMQUTZ2n5pTP7
	 LDVlu2a59od4Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 71962C32793
	for <ddprobe@lists.linux.dev>; Wed, 18 Jan 2023 22:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167408168745.30126.9510083630282255931.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7b0ff57ae988c6793d4cb05d0569c6b09e32efbfb18b0005d2e3ad7523cfcbaf
Date: Wed, 18 Jan 2023 22:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674081687
