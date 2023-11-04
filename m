Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 126BC1FA2
	for <ddprobe@lists.linux.dev>; Sat,  4 Nov 2023 02:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WWZ8/Dhi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7991BC433C8
	for <ddprobe@lists.linux.dev>; Sat,  4 Nov 2023 02:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1699066096;
	bh=Rgv5fdEipZ46x59S/EcL3aSRIhUf0P3WPbym34DnJ3A=;
	h=To:Subject:From:Date:From;
	b=WWZ8/DhiDeFmUbPUTIqQqsocW66/jEiYLRRXtRU8pvs5InGgZANJFucTJE7SNuv+w
	 pUN0OU96xN3ilRUl2A+yjAsLxmsb9WYpQ4oxQOWDvunMvl26JWc254/WuQIB8rFufz
	 Q7XyYAIFFi98dJHFqYIsvpZHMqdFjEORfxGwt4nSHIZJ77XO02JeHIMIYUqH1XPYfV
	 Vqn6LiO8qUzSEJ/MtpkLdniNROsjC96JQBmSxVN2w2qqPe6UmptHBOgqzTKcaHCTcZ
	 PSjkQOmjNAPqlj9R90SlCkBUo5EODpnni6xxADsS4XMbJlvIK7RYKIMdFIlYt0C35L
	 H54T/spAgatmQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5CD54C4332F
	for <ddprobe@lists.linux.dev>; Sat,  4 Nov 2023 02:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169906609637.16311.17955038692162945862.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 11dec690b326a47aee121870c23cbc788bfce66b4928343debb49ed8e27ccd23
Date: Sat, 04 Nov 2023 02:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1699066096
