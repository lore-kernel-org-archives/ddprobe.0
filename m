Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6C104BA35
	for <ddprobe@lists.linux.dev>; Wed, 13 Sep 2023 20:54:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DD6A6C433C7
	for <ddprobe@lists.linux.dev>; Wed, 13 Sep 2023 20:54:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1694638448;
	bh=urpVbQb2A6r4+Up/5Ar1A/wqtar9lSWzg7ArSYjrp3g=;
	h=To:Subject:From:Date:From;
	b=hPmllAa0FCnKkwF1AQxGwvkRgzxtddU8j4/Y9MUtKiPG5jc60YEhIkpW5IGVSr3A/
	 P1qH7TsypXMVlpEeEhg74fBgzichXMQ+quP8l1Jte69yUM00A0vpfpnGbzmLEOm8lP
	 A4xVTtZQKAztrH8sNRyrKpHczfcqktwPoJfjs7BGG5VouTTEtZwdVSr6ILWSiJyN3b
	 92ruE98GDNFmlhcnEIBNsis7TN3evEFkDBm+5RFRSvgM+VlYhKKNa/9dg/5N4b4CRC
	 0l5hlg9i45vEUqONt0eTJGWNL+ZKRlKC3E7ejOhSs5sGdwxUorZ4AK41Y8aAfmYScl
	 E9kSANv+oMRIA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C3C34EE020D
	for <ddprobe@lists.linux.dev>; Wed, 13 Sep 2023 20:54:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169463844873.1698.15146567111748334986.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2a74c4a026c2a6c0e69c1359ff761b9e9ad4adf4b1885f5474172c1ab69c440e
Date: Wed, 13 Sep 2023 20:54:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1694638448
