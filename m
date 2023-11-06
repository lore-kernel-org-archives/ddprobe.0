Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 03D611CF89
	for <ddprobe@lists.linux.dev>; Mon,  6 Nov 2023 22:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EBurpk/x"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7F08FC433C7
	for <ddprobe@lists.linux.dev>; Mon,  6 Nov 2023 22:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1699310296;
	bh=TL8iuKeVnw0C2V8v/bk/WNX4IDhcHo677BPikg4pKIw=;
	h=To:Subject:From:Date:From;
	b=EBurpk/xsc0S3PLXyhHdQ4HwSOPWBuoUAAkGvyVwYc88YWlRlIRvwFHx/Ecy9gah5
	 aoncgEoB1bkrGQo4tDk95Uf6mYUoTwnMFfPp4ry+l8bJnmTiiOUUsb1900Qi6nNICs
	 hfjRtae276NHPd7gwCZGoM5PyxJkBDt8MVtB53W86c4c2iz2i22NMuLajpsOZKORfB
	 F6XsSP3IZtcsXOhYotXg7HRfxtqtKr4JVn1ENhyPEZmp/xbwF9Hg8SjBB6Ekx0gpAE
	 h99cC88g9aY3arn9+qcH0UGeiANwIrqJKNGTNsXhB7I92UlqqiXKAqrEIJXNjzSswv
	 HjdrRd4aNj6WQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 62CC1C4332F
	for <ddprobe@lists.linux.dev>; Mon,  6 Nov 2023 22:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169931029639.27479.7316497514775823487.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eee0e5017065dfe22d8285216741ec66f394ed27fa5b71d0b1327694d445979b
Date: Mon, 06 Nov 2023 22:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1699310296
