Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 182AC3D65
	for <ddprobe@lists.linux.dev>; Sun, 14 Jan 2024 14:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Zs4AgCnU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 83844C433C7
	for <ddprobe@lists.linux.dev>; Sun, 14 Jan 2024 14:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1705241296;
	bh=53R+s3zp/Iw7f2jlUI5fa+dSOgUmV6UNCinw8fbuEWQ=;
	h=To:Subject:From:Date:From;
	b=Zs4AgCnUyZ57uV9jOGZ4FQiED0UVxwCPMrgQ2bJUI1GsR/PCgCBZGcP67U53lnXDu
	 hI52n345AJyhfuJDi4dHFQjV/ZIou4hOocFoLMZj265TSxwWqb4RHiBL+UOm/goNkx
	 KEgBwacSAAZToeqPEY4R2JaTeW16DDB2p5j0sUth8SVdHa++SwqRLa9c4EbAQl6gik
	 dXHrFI30Tyt9gw7nnpJ6OB+ivvvCziwU5vX7DQrNBwt6+KLyr9LbPWwLFfNb9tWj5k
	 nr6LnL1jQeaG0/m0ldbPBUt+IHMN5MDK109TmZJFDP0QDjPzS7gs3jYYBANnrlTyTw
	 1+thBbuM7Nu6A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 668F1C4707B
	for <ddprobe@lists.linux.dev>; Sun, 14 Jan 2024 14:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170524129639.23397.13428564025277945760.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9328fd1f5a66cffacafb91f5700e5271045a04e1e6b0a885913d5cadb3b3c00c
Date: Sun, 14 Jan 2024 14:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1705241296
