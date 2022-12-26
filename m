Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D984B371
	for <ddprobe@lists.linux.dev>; Mon, 26 Dec 2022 03:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8376FC433EF
	for <ddprobe@lists.linux.dev>; Mon, 26 Dec 2022 03:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672026087;
	bh=p+1h0tm5/UokDd5yqF7mOJPJrO8CsEqeGRrVyA6tmmo=;
	h=To:Subject:From:Date:From;
	b=QWqiMnLp92w7oaRSfC7omkaYAlpRYh7DcqUOgdfm0duNpHe3oxqo8Tw/PHUujwP+E
	 mjdO2z10zHdZ7hkWWLFybfozCRoWq97ovpARs2/U9FMURQGjx2fTlpzm7bbJQBKdhP
	 tp//wfhjmYjRir4KUqloE2acGN4ZqQ1YBQyExXG3l+DG/kb/LqzMwzrS3aEAXebTDu
	 OQz7GgutQSU074r3RfusjwqYk9DZhLWxLeL+r3fHVHMOG8rbTTjQ1ZkUb8OxkF7uQp
	 Jk+ciIkrXk1TralxOPP7e25LYKYOb3FBeKtIZK7LSM7P2cbtLxsJzcMVlggsaUICvz
	 jt0u5kEvX9jIg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6AAD9C3DA79
	for <ddprobe@lists.linux.dev>; Mon, 26 Dec 2022 03:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167202608742.8394.10480343937061973071.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 90f26f3e4dc5d02cc3bc5de1248ace00da13c3d59d2330a86ba47f2c565dc8b7
Date: Mon, 26 Dec 2022 03:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672026087
