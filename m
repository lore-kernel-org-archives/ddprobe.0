Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 619236AB8
	for <ddprobe@lists.linux.dev>; Wed,  6 Sep 2023 11:34:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CCEE2C433C7
	for <ddprobe@lists.linux.dev>; Wed,  6 Sep 2023 11:34:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1694000048;
	bh=5SgJ4EQR53eDI3Kp+1fYOjvvlmN8e98SPUj16pGL3Zo=;
	h=To:Subject:From:Date:From;
	b=q2Mp0o9d0qR0ZjNXZggPF7g1lXtR6JHcMpkd+LIUMeA4pqdADMN8pCqGzC0ixHuST
	 Vq4W4dQI1utujZu+/P6T5av9P1RoIIawGJIqOjoThii/GrD3KJW8S3sF3hKZA/q/qZ
	 Mg5S55AAmMnboM0+ash+ewXoMurIuqrQ3KmqPTvUIwvVKZ7GIzPReu1L12VwwEPke1
	 yI+kefUkOz3/R15Cx1WvZf3vqmj4Fs4hSzjkuQKFcu59zc6aKIj8hmSmg5RjXzPTM5
	 D+rZpZ31TgamsE3FdxfXGNoG2Y2N8/69hvj4XzSTAOE3h1/l5WYMQuPJ0rM5CEuwyh
	 QZUHU+9qt+w9w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEF14EB8FAF
	for <ddprobe@lists.linux.dev>; Wed,  6 Sep 2023 11:34:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169400004870.29499.13578335618589206213.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2ef082712c09fa7190c848622087e5765e81b1cc6f88601fe4e55f063e5a06fe
Date: Wed, 06 Sep 2023 11:34:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1694000048
