Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6BBF18C19
	for <ddprobe@lists.linux.dev>; Wed, 11 Oct 2023 06:47:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tGaJ2+ca"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF9F1C433C8
	for <ddprobe@lists.linux.dev>; Wed, 11 Oct 2023 06:47:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1697006828;
	bh=Y/z4NhB0tbX29cbSrCAzHAcNg3T+5T5utQb5YGTUh2Y=;
	h=To:Subject:From:Date:From;
	b=tGaJ2+can8q1ksxJYNiP/G0XMN3684fM59hLx4oaQUjcLq8HuccVxqHjbTzYgsu95
	 10oSj2AqOpCu4gJE6h+m77mNgrywzbp6338cdq2+9fq0WNwFBUozjWrH7+mJ/X7+cx
	 m2qiInmAysyAl3nb3Yt7ipbS3e76j2nvfVafL9+fdq5zVnhzHUV2GyCQbggM2OY/Bh
	 SFTS5FCBUq4UXP+X85p712Ap6ZfBLXu01mWHzeczBOKIn1fa7VLareubq9BrvTLg5T
	 oQZN6Q0CG4H9oWuPtO6FYIst3cxs7aK20mXX8gNOpX3b4Jh5NXkanJtmTjyL30D848
	 6UKyX0/TPX8Bw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF76ACD98F3
	for <ddprobe@lists.linux.dev>; Wed, 11 Oct 2023 06:47:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169700682870.26711.8970459366360578553.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f0bdb9c2640bb18196ac07c0671337eb5472820c7ade25aacbe6ded92bbcb63f
Date: Wed, 11 Oct 2023 06:47:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1697006828
