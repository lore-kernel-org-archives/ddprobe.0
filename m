Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7338B7464
	for <ddprobe@lists.linux.dev>; Sun, 25 Jun 2023 20:13:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8D0DC433C0
	for <ddprobe@lists.linux.dev>; Sun, 25 Jun 2023 20:13:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687723988;
	bh=q6pRyiVEDwnjPVc9qyEFV1aOIkUeU2cTE8BwHIlDOgQ=;
	h=To:Subject:From:Date:From;
	b=gppTzwYRNG4QbEFQottqjHDR1qD+ufq4QmytHTkgLwaWinkIPKB6/l8lkQ4z8QfNY
	 9Fhd+ThY+ROqD9gpsQaGAwZdyCotIZctKj/FyODHauLFUD9j5jgwNcPArrlmnPslz+
	 YN89EnfzukxTk3OXkJWk00Hn4HOEoeQ1Mtwa6ZTkBYyjFWawFd4A52u0suK0nDcxKz
	 eS/vza/rNByeZ+ykuU8fCp3mSW3Ac2/gtvsZJRHT3pZbdjKMGGnZJhM1EpKviXgQZF
	 MKggjTbCn9RNXnLy6fVoxBXGsCsaSfLqn+Z4js2i4CQPajkSa3poxWb1je4sYDZ2eh
	 jys5VHg2+vFUg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B6CF4EB64DC
	for <ddprobe@lists.linux.dev>; Sun, 25 Jun 2023 20:13:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168772398873.21604.2181238388223248948.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d397e96138127fec0455e604b437d2f6106c58a019addabb4b61de9aa101c3cf
Date: Sun, 25 Jun 2023 20:13:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687723988
