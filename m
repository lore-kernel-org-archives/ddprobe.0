Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7570E20EE
	for <ddprobe@lists.linux.dev>; Sun, 30 Jul 2023 16:22:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CBD35C433C8
	for <ddprobe@lists.linux.dev>; Sun, 30 Jul 2023 16:22:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1690734128;
	bh=QyZrync8uvxNNgZUFZSxhTCgL3jxZdHXXCqyQ4sEYBE=;
	h=To:Subject:From:Date:From;
	b=stPtyiHmgFfZE32CYJ3WheBQPaYKmM9pPcrSvd/h4wNd1bl7jggwbB9Pf+7HtI/2g
	 xa/PEeBc/8gmvXN5HlSbn938GMn99CPBE+Tb5Yqr4wppK7fgW7XMKn1YKwtXYQrMfa
	 s512b7ofBilOcdtJkEnwGblxY4bn7aUqQzfFEsAJRrJg0+6x0wXRK6u/a1oMiOHl8V
	 h+O5n0kkJI7pOPzKjN/Qz0hJwNG7ZIJpG0Lfi9YurlQGAW4WD4fZm6ys76auPVqVpb
	 Vxo/Oi4WrqXxokYp+aeDmb7KhCBqB328KB+ymhbGrqMGbn/XPKNeSkBkg2qHjr5bpi
	 nywKTRZ0cZqDg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB497C001DF
	for <ddprobe@lists.linux.dev>; Sun, 30 Jul 2023 16:22:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169073412868.28816.8753992596946287645.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 70a3fc20ecc47205196f8cce19f06248bf321ea8be5849a0b2729112eeb8ffab
Date: Sun, 30 Jul 2023 16:22:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1690734128
