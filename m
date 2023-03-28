Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C4AAA44
	for <ddprobe@lists.linux.dev>; Tue, 28 Mar 2023 05:43:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E6284C433D2
	for <ddprobe@lists.linux.dev>; Tue, 28 Mar 2023 05:43:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1679982185;
	bh=AKW9sDSyBOzdoCPYm23yQT2ykRG0URSYuuvrZgbvAY0=;
	h=To:Subject:From:Date:From;
	b=mHfe9LA1vT6Wtzy6N/j9C13YXkKnWKLWUb3H9FrbhjGt4ErWEykGusuhrLo/xxuQm
	 QGcR0sMnGgKTL7Ee8oE6apVeP4L3OYzygo9PnyJwQwvXlEjxdavgdKuoqVdN9wMqBe
	 Ns7ysNWNZXjD/b1jwDtUYJ4TXIKJrmAXlNT6qK6Vg3kp+RErctQzvGfmlkYbgML5Lr
	 +Yv6XhvgRE9wUrs8BSLMI8ZGK23ocMXo3/XjmQ5c8x2x7nKa+RuYjnQB9CyY+VDdph
	 5s2nTjHxzPpa5L/pKMb99Czhwlu+G0IfTsHwyayL6w6bXF9aZh0Cu0i+buHouYlfPy
	 bVg4FygqoJqkw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C0EF7C76196
	for <ddprobe@lists.linux.dev>; Tue, 28 Mar 2023 05:43:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167998218578.11480.15588218683991594753.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f8aaf9a676df3bd2b074e20c614bae1e4ce416836bea1d8f4a73b6de0f2dbe05
Date: Tue, 28 Mar 2023 05:43:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1679982185
