Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0949C3C0B
	for <ddprobe@lists.linux.dev>; Thu, 28 Dec 2023 07:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZqtfDP/C"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7F33FC433C9
	for <ddprobe@lists.linux.dev>; Thu, 28 Dec 2023 07:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1703747896;
	bh=VurwnHAkyLwAhj1M+TscjT3xFSlIA8j++dGJG3I5L/s=;
	h=To:Subject:From:Date:From;
	b=ZqtfDP/C95kvyKbIP4U6P9SboNee/de9lvqU2lUshVlPtMkmBtWjzRv1WytXHrWKK
	 MIc7FQWLI3x0F9g3WvuC4A56Vb8ExX2SpynvPe1nXfp/ra2gDqpI+GVH8e05gkMhJo
	 rMotgmTx//QfOVLWyIwTRegUpYQG6gG1FFZiOPweN0omRaXbSee3eWzhCitsB9hv9C
	 +nYRIrw6GmPgBDzCzsLBuggUSh5I5rixlX15/TB4cu/0dv3cPufHCkSznDERv0wsrR
	 L6Dv+M1O3uzVPbCyJ6ssTvOqdu1WP3etGRdKrwBZHdbETTPxCjVQdBuEAhmk+wveCF
	 xrbLrDhdD0CVg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6241EC4706F
	for <ddprobe@lists.linux.dev>; Thu, 28 Dec 2023 07:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170374789639.22423.18072762200900944659.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 148efc5e6d3aa7018b78e511bd947d7b2943bb01fe4e0c71940cd929ba4eda24
Date: Thu, 28 Dec 2023 07:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1703747896
