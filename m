Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0A540818
	for <ddprobe@lists.linux.dev>; Sun, 18 Dec 2022 07:21:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 96C9AC433EF
	for <ddprobe@lists.linux.dev>; Sun, 18 Dec 2022 07:21:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671348087;
	bh=iBUIKp0buG6QVMAameMfvjJVT6929ivb4607VHsVOTs=;
	h=To:Subject:From:Date:From;
	b=OFiPs7FEiDHqGlGbRtW0cXznZ9/mQ2eZ/zwvmBo19fZHSr/457Lm8AJShYylMghyb
	 c2XwUcS+QxNdptCeQS9CUNp2kIajcYH23OM24KkJiSYFBWIDOjukXFVkEWCxTn+U88
	 2UEZzbAqub65iXrMXf6oKK+dXTkBOaAv258S5HVJhYkFGYVoUFVd3lcUDwfaT4Tlhu
	 OKsSgHROWtx2meR8Qock3Tw4SIHGHR3ERzi8E8Ui8ZcEQ8Rkh3brM4GBKGkkj05rw6
	 sB5Jx7vmP0xaJWvlKfK5CbJGmoOHtHp/wYFZp/YLiBQUzUvPmqOFUWiin+aZbnJ7PP
	 dP0W8carkZNtQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7409AC4332F
	for <ddprobe@lists.linux.dev>; Sun, 18 Dec 2022 07:21:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167134808742.15917.6398810780781954378.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6992818d3865e0d8a81a1d5799c9cb0d38d1f8e0fd18157aac9b8a56b75cf0b8
Date: Sun, 18 Dec 2022 07:21:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671348087
