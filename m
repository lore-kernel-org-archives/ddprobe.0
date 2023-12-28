Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CFEC101C1
	for <ddprobe@lists.linux.dev>; Thu, 28 Dec 2023 18:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pKa/qacZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8EE71C433C8
	for <ddprobe@lists.linux.dev>; Thu, 28 Dec 2023 18:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1703788696;
	bh=c/rk1eKwGA1OXGur/sIJ4XBBEMLp8OpaORHUCRmQ0yg=;
	h=To:Subject:From:Date:From;
	b=pKa/qacZxR/i3mIKzpOfmuH43ZdLynsqQurZ01nKSyD7XP2XRSFXdl8cPcPKond/8
	 iAmWc+cFWagSlx6KMc1/GoVx4+8tN03rdKmIB9+kzyDv8osXkpozy6Nj/mspHI834W
	 hGRK/47BK3vZO0gOGoXVSeor2H/CzBMxWmE5OuV80WN9EfguRZC8pEBSwCV8drZeWQ
	 LmYGj4RhOzIeJfqpdqIhVqnMhKbt0WzzVXNTHoN32iDzqNVbDyrrv2Fcg1BRTsRqCW
	 KOoalyg2sS3ZPInDfh/5OjjJZnfeQk1uHTokQCyB7XS6CVNKV0db77P+QmEiSMh+Nk
	 coYIRQTzXT5Aw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6F281C3DA6E
	for <ddprobe@lists.linux.dev>; Thu, 28 Dec 2023 18:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170378869641.24867.6901326164252684088.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 455b3dd94765b9bd25c901c56f49a5bcf6996fa5c5ca03a006f6d3cbe77f9e57
Date: Thu, 28 Dec 2023 18:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1703788696
