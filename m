Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 372441CA9D
	for <ddprobe@lists.linux.dev>; Wed,  3 Jan 2024 18:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Hyui1MZH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB323C433C7
	for <ddprobe@lists.linux.dev>; Wed,  3 Jan 2024 18:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1704307696;
	bh=x/Ake1tKGMVe2OZ6bnHIIwnxa660Si07mPoLupVcdQI=;
	h=To:Subject:From:Date:From;
	b=Hyui1MZH2K/+d7ZVZ9M7lzO44wo0o3wOg4NgRAloXucdN6RbP0nLACAdK6lGPDDxF
	 86XM7iVFPz8R3mS3wzhrUumKqdGfSraFnkFuvdJMvZdJKQzOY2dIliOLfPHbvqBHwR
	 FCW2Zqwv2XHLqw9cqVa35RYGs53KeT1F9rasT6s/wswwGXRzHggzNRDqf9GCIzW/Ie
	 PvZsgjwm0tgqtNW0MinMLfbzAEP2Cnm+OSmVYdV+efeH28PFdCqMBWCAezPOXpZWjD
	 TLkNDh3JaPOJZU6idHPlEWclRujz82I6YPi6Dg3sg1Fe+vpd951whBi31uACitAuOF
	 uB762aXJ49uWA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7359DC3DA6E
	for <ddprobe@lists.linux.dev>; Wed,  3 Jan 2024 18:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170430769646.26912.2516678502891384421.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8eedbe6a9cf587c3436426b4bb59ba80f47fe106a899ef8201e308d98c059f71
Date: Wed, 03 Jan 2024 18:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1704307696
