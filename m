Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D17043FEC
	for <ddprobe@lists.linux.dev>; Wed,  4 Jan 2023 18:51:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7A9CBC433D2
	for <ddprobe@lists.linux.dev>; Wed,  4 Jan 2023 18:51:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672858287;
	bh=fPtKMVw1wuojNsU7BdrmelKlf2UVWU9J1pG6suUb7Cw=;
	h=To:Subject:From:Date:From;
	b=ptbDLvicRCQOpXemyyDNUhRVCqDi4PIKBigYhmCspUe2SNvMpOONLhH0CNi/8gV99
	 kc2oX9wMhone9g1n9SClGw4NUSoZGR2uC38bDmiPh+jfrHHhhst3IFrFbimLHI3X61
	 rZTYtNpOTl/6Fkx/BxDV4AcXEK5BuwBMm5azMAQujvQiEwoB1MLF4NzRDHDdtEfh8D
	 JTIM4xPtplFuz+IfVW5bXktGm01rvSwo51H3kZxfFri4BoQxitEN/BlD0dso6p3NBc
	 RZt2yNjDPKdUe9/1F2ocB7Os4Y8P2JVWPEteOklI4nlwjXOdgsHpllrQx5rM/G6umB
	 n4plVRJ790f0g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 63453C46467
	for <ddprobe@lists.linux.dev>; Wed,  4 Jan 2023 18:51:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167285828739.15418.1000956651250888737.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 57cfae3630d30df3fd37e7399fb605e4baef561e4a585c9170d6c9e0a638d95a
Date: Wed, 04 Jan 2023 18:51:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672858287
