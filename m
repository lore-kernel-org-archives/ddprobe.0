Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CF89D7E4
	for <ddprobe@lists.linux.dev>; Wed, 26 Oct 2022 05:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 74B82C433C1
	for <ddprobe@lists.linux.dev>; Wed, 26 Oct 2022 05:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666761653;
	bh=bBXPZ8v1gPvAM0F4mu5X2q98MEszqwlKe6a2uvFUwXM=;
	h=To:Subject:From:Date:From;
	b=cQp16CRleP3FrwgBrKX2DQBAqxVIN740ltJil/PegOW78EQenK/wNEj8TCuWxqTCd
	 h4Hz6JisCGvj2xiH1Hl/61/kFwXsSjlRLaNyiZv1kOXtMEE7bYX0G7QtTONM9tNS8f
	 S5zcSTIdPSxyGnZms5j9LlGLhCVN+TjJDyqv8J6Qa6JqwJA1EHfBlwW9uuYha72U8+
	 xke99Y1cvklpKaYkGyU156HUOwq1gzyArYbBReOQdbIl22X0J1a788wFTZVqj2/RBt
	 yZcQvysOB7nOdZjCmBJfLnuHQ9sBEi2gexzSXwUSqtBK6Migg81Wq1GwsNyus9U7yD
	 oBJpk2qD5d7pg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5A909C38A2D
	for <ddprobe@lists.linux.dev>; Wed, 26 Oct 2022 05:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166676165335.19177.13549104139656332840.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b04e1a62bb37a07ef1fff8c0334453ea30c2847cfb457bfd43a6eceaff80ee39
Date: Wed, 26 Oct 2022 05:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666761653
