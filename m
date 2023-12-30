Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E568BE49
	for <ddprobe@lists.linux.dev>; Sat, 30 Dec 2023 19:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RAZZZ4b0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8101DC433C7
	for <ddprobe@lists.linux.dev>; Sat, 30 Dec 2023 19:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1703963296;
	bh=5ln8/HnMJ3w7y/+QQv/wa+I5GMHYDR7ixDk8gUnoFAY=;
	h=To:Subject:From:Date:From;
	b=RAZZZ4b0K9tfZKrAb633CiDNlx+qkOOP2OczbaowZ4a7WQqqPSA9QNHspro8Zser6
	 xR7du2JpgEfseQqAbi1lsHFmlHUtP0Ar8ce+Cz65B20bp3S5/PTxCJRqEEqHa7gqXU
	 ev0qD1yqX7yaPRPFRzcD9wjxtQU++5ki4cMXezj9nvkyxDgGkM7UNpg6o5QfM8BX3k
	 RjguIYnuouwGe37KDQqUMZod2u/7CSPF02p11DjcqM3vf4WY6dFYStT0m0U3F4WpLV
	 S/smJWBN/00jg6iock5vBBScYvn4hIA8EXB/LT1zuM8BlxN8IZczncr2mk3U/F98Pm
	 vWn2eoCtc7Zbg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5FEF8C46CD2
	for <ddprobe@lists.linux.dev>; Sat, 30 Dec 2023 19:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170396329637.29793.7267109345446977894.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ef886ab62bdd8dd301276acb3aae42c2a38c8438917f7b30dec47d6892d78bf0
Date: Sat, 30 Dec 2023 19:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1703963296
