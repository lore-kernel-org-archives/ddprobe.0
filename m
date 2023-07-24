Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6AB141848
	for <ddprobe@lists.linux.dev>; Mon, 24 Jul 2023 07:02:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CEB53C433C7
	for <ddprobe@lists.linux.dev>; Mon, 24 Jul 2023 07:02:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1690182128;
	bh=BQSw9EYc7lS7hLdWcFIPlmfBbmIdaaFzcC+ZLxZCJ9I=;
	h=To:Subject:From:Date:From;
	b=ARCtvfSz2LDIQ3qOzO+cn+6ERvdlUUIb05uZ3DTSDXyZ0x+/vvEdTKsStndM/f0vF
	 ey4kr7aqTgHw80mY4Rsnm0FUW/RTy7wTjXyH3wacMYCbT43ue9P8a/tgSId0E5uFc4
	 kqruKEaBi1evnvWaSmM3EJN+pnNIWi2QgrqwLLWYXfxpi5bo/xKKvmLI2qcEa8iiVT
	 gVpFrxqZl1zU9P6IFixdegYUvoDl9H2z4PJ1fbL13jVldAsTe4IeeWQcbxRkONYbeH
	 O4hSPiqCJ+OlEj9Omg7tLxnr23yyVNp23f0OiYBzlrUMHlNrkPSq74EdSuqn5WxaMr
	 Cxg1MdHJdN1sQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B13BAC001B0
	for <ddprobe@lists.linux.dev>; Mon, 24 Jul 2023 07:02:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169018212871.21300.2115361491442821326.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 40928e479693fb074f56dbe518ec96169d74acdfd8acb4a7bb89ee313e261ed9
Date: Mon, 24 Jul 2023 07:02:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1690182128
