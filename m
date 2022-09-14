Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B921F3D62
	for <ddprobe@lists.linux.dev>; Wed, 14 Sep 2022 14:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 71458C433D6
	for <ddprobe@lists.linux.dev>; Wed, 14 Sep 2022 14:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663166453;
	bh=FCpiMkv/ZePCI5X+mVyNOlxL/osPEDbgjWjvT9R+aeo=;
	h=To:Subject:From:Date:From;
	b=O7shaEoQx1XsljOsnv28DQvb4uQjOcnIqLQXFWGIn2yAJlsaxksF7BZl8/o2ru4bC
	 81UgYIDXYC15Pf06jKOTTrtI01sx9Xd7rhfN3RTp1xsDvbgUupbVC+UnR06YfjYhXx
	 X7jqEqAbFLbYxr/2ihunWRFL1prhhFB88Ja/OuPCzmHQ/KGiCsR+ccUgOUNwQi4ulL
	 jcZqV7zqC3osG30A0aHLqYK+GaViXNssYaHZZ9T0HJk400+yfuAP9XEQOuMCjtIlzv
	 KmS7ZDSlTbn3zv+8mRLSi0gEyTVQiNVDMdyOMCy4VxD2f+alEhI+nSL/COKnrccFJ/
	 Hc0Ywl5rfvpVw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5A202ECAAD3
	for <ddprobe@lists.linux.dev>; Wed, 14 Sep 2022 14:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166316645335.24166.499204978287890077.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fea67e172a00fdfdfdb839298b00000ca7435007dc13413b930591f8ba13d52f
Date: Wed, 14 Sep 2022 14:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663166453
