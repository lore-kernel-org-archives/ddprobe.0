Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 76D9717D0
	for <ddprobe@lists.linux.dev>; Thu, 22 Jun 2023 03:53:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DD850C433C8
	for <ddprobe@lists.linux.dev>; Thu, 22 Jun 2023 03:53:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687405988;
	bh=CAiz2m8X+RPlBhNh+w7/7l6vyB3AAmx77RHIjM/Lhu0=;
	h=To:Subject:From:Date:From;
	b=V+Fg2BwBacF/As/u25UqmBWphpL4nSFMGS3E7glfl4msvfkKkckEmGwfsvr+kZGrf
	 TrLqhOn9ulj6EhUEFjnsDFMl34jfs92iZrPLZydfkrn7Q4c2ITPAEHxxOTJdmfyXc9
	 yLq23jC6X0KQgNQsycYc+A71FfslkNQqnvz4ulq23o0M1kMp9Jsr3pGi5Yvpmmc/Bk
	 QwQRSWjBYd+5BDLaCTh+deqIT/YWXALjDZ5LU5BBGpWceTgqqmKoYpyNpkuCzEO3ry
	 jxG/K3YSdWm/Hby960P4jhYRK+AWT5szWwhSOBw4QI5B/W/6V70ki537PkEWsLYJJU
	 VN4UcyMjvdzdA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B736CEB64D8
	for <ddprobe@lists.linux.dev>; Thu, 22 Jun 2023 03:53:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168740598873.7847.13679515404917519832.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 59c1b57322556b0e2c0137ab0972605e308c58c7d83f7e74de33eecfd657454e
Date: Thu, 22 Jun 2023 03:53:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687405988
