Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 62EDE1C17
	for <ddprobe@lists.linux.dev>; Sun, 23 Jul 2023 17:32:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C9734C433C8
	for <ddprobe@lists.linux.dev>; Sun, 23 Jul 2023 17:32:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1690133528;
	bh=jFCJnFmUP53M0B36aHLJ3/i0jjN4oacDfLqD9Vq8dZs=;
	h=To:Subject:From:Date:From;
	b=WqhHoYcmjWjPniv2egXyAJgwkqA7iucMSfO5qDUC6u/1Xp0fMNgQVyLXtFxRl89pl
	 5aleRYcs2va1iqOSL3z86pQaffQrbKmDvKu9c8BJPt8wvsMo2PSVGB+KLuq6rzhnoG
	 062LZvd3d5fQHUFgl7y/tPh53BuYGXUIHtB5gCXNll5uOffpcjgNvML0lAXWqgZnFZ
	 YyywnjoF1eyZquTicfP8rTJO1aZ4qrUbdeKfSSQm++FUQmZfvsc9T2U3Mt0km+dDbu
	 BOIWoPp6E+Mg5jHH2eoDmaFfbRZcsbMWDidKBUb7s1+uHpZwtIoSn8kxb9vX9gJupQ
	 3weuohhUq/pMw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABD4CC001B0
	for <ddprobe@lists.linux.dev>; Sun, 23 Jul 2023 17:32:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169013352869.10055.16211878811955351747.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b3d1224870dc7cbcdec27c1907320a66a05ca24a4b77e0d99d7afaecf1840a4d
Date: Sun, 23 Jul 2023 17:32:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1690133528
