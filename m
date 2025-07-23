Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35191280A35
	for <ddprobe@lists.linux.dev>; Wed, 23 Jul 2025 08:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753260594; cv=none; b=RynIHlqU43idvqAJQipB+i9wYMz2LSuBDMmq6I5BJVFv36TSmMTdXpO5nq5fj3Ogxnx6rhoZEz7XGMnUT/y599ngZPQ2aFyfjIqmGZj6DSpjwEC+kAgXpNnF+Y37B+JTEFhrj0geIb82ewQBcpChyLDG8MwkLexZG+do34S3w1Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753260594; c=relaxed/simple;
	bh=cgO2eCk8yJ7nQMEo2TDW7qGsWPwHucmzRS7pB03wKuU=;
	h=To:Subject:From:Message-Id:Date; b=TVYu4PuY6GZMRxhJRTm+Eq7qkZaQDC4yog38hvNOe4jP76txLg/wbZ9B6jJq0vIbLXylKEgaMj+bPWVk3mUcX44gTKlnbWVWCRu+mNn6Mmw+eTcZtziah5pm6uMArALjSj+eV0xmfxmGlsTgL5OItYUXZ2JM5zE/JKmr6PQfqHA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FKvnFb/w; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FKvnFb/w"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1FE3C4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 23 Jul 2025 08:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753260593;
	bh=cgO2eCk8yJ7nQMEo2TDW7qGsWPwHucmzRS7pB03wKuU=;
	h=To:Subject:From:Date:From;
	b=FKvnFb/wkZ61gxBHGoxzEJcxHb8rIxtFYaxV+cIyp6PxprvF6CHj/pVz4CBX9Y2p/
	 bOeMLn198sDOkR18R3IZCSxudGAOHSH3BQ8YrvY+dQDJn1guA0Q/n/5sNWOfr9NEuz
	 i+t0GkpmRjvGy3OhpdiDgfZydR/rzNf9M4KwnPplLzxiSUIEGGdptLMC40y97ZkAQn
	 wOnQRa+xowTCxFoQIHbnIj7ltqBCM9IKaI0k7f11Riwh2hrJ3HKzddTSWnWNAFYfaw
	 XACFIGungpTaRUWxltVce72MKbNPBmfaxogKB9SiHKjO6hGBBB8qntg2Bwsuq71CFJ
	 BAV/vWyMYFKOQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 906AAC83F17
	for <ddprobe@lists.linux.dev>; Wed, 23 Jul 2025 08:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175326059358.6074.17848097652280207766.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dd210823c40d303aabd277ceebca9632743f9fafe9085c7fb56df1350a50d2ac
Date: Wed, 23 Jul 2025 08:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753260593
