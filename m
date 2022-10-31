Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C30AB7E
	for <ddprobe@lists.linux.dev>; Mon, 31 Oct 2022 01:10:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6E956C433C1
	for <ddprobe@lists.linux.dev>; Mon, 31 Oct 2022 01:10:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667178654;
	bh=xpXfzF8wBQ0vaYcz4p/jqie+menPWuFxMH9vvMgtFA0=;
	h=To:Subject:From:Date:From;
	b=dnFHyU6FPsAux2KJSXG8Zwyy2/S3zdD0V3bbJfZkevqv1bSnbhqrpYpEqEj6o5nez
	 x6d3DjDtK2T6Zw8caJWH14f8rszdaR4S9iwV8ZvPKTE2VNKyN/IChSqmtLlkBizINv
	 EOzaAhnfbzUyXxZEtuHaaqZazczc4sB/E3am0xg/Og7f7wkoNJWmeur1TUePYNHGee
	 5o+Z8fZcHw5F8eO2mpQR2lw1P2H3Ai4yUNZSbG4GgMcPm9hHsqKd0QsKeAJ1i0v3Bd
	 kdDvdk4qPF1/Zl0+8TTdLqfOIfW9ITKdulhof9MKN2Kr63pohlqdg6fYWOGQikIlX7
	 KjQkpsC0woVfw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 52586C38A02
	for <ddprobe@lists.linux.dev>; Mon, 31 Oct 2022 01:10:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166717865432.23578.16730646662957750467.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e5d09394164b04bd94a2f246c623fe085506db8341e56df45e102b17d647a63b
Date: Mon, 31 Oct 2022 01:10:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667178654
