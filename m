Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 44CB818B16
	for <ddprobe@lists.linux.dev>; Wed, 17 May 2023 14:04:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E4E47C433D2
	for <ddprobe@lists.linux.dev>; Wed, 17 May 2023 14:04:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1684332245;
	bh=UmNsymDsfMQCKb6PDDP7YvKXFkRFcAjaSxiYib68YdI=;
	h=To:Subject:From:Date:From;
	b=jnvZaUHI0VH3Y8+w/65Y+G1m9afc9ubC9y1i8bFkJ/trYTzJXuGujyf2gC3+zp/fB
	 +qMDhDMbPYRlCBpEGtFGP9FBq9J2elif/6bjESrvWgahS0SRyR3TYJwuszH/6CJV34
	 g4Ao1rG4ooZbHliPOpV6YOVtpNgkD7lwuozFCX6hc14k07tHUfHbKhcnYjdZY1HF26
	 phIHQfmZIOO/pn2bHOaTXo3QO/ePbv4oDuEm5LiWkGS0df22QWxlMQ7C5ezxTzxJLN
	 3M4jxq4nQAzteCRS+QKLU/jGCb/zFnT4KgcPvAraIDxipv6mH0cau2L5LjkFN0LoAV
	 SrjzuBcTGaBcQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C0676C77B7A
	for <ddprobe@lists.linux.dev>; Wed, 17 May 2023 14:04:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168433224577.23695.4093399215112082629.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 09b784acdd8a5e46808d272be088604d40da93d94b25724c0dfdff4975c1426a
Date: Wed, 17 May 2023 14:04:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1684332245
