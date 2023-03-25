Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4ACF83C27
	for <ddprobe@lists.linux.dev>; Sat, 25 Mar 2023 18:52:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id EA5C9C433D2
	for <ddprobe@lists.linux.dev>; Sat, 25 Mar 2023 18:52:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1679770325;
	bh=dsDCi3IJwZkI/93Dk/HgambZbGhvp+1JnTGY+iZodxw=;
	h=To:Subject:From:Date:From;
	b=SqZHIi/JskEdtCfYvZlLVbnb5+N+UCdyX2KzRmCDL8dtJUUliWgb87OT9YWPiQl48
	 DRpV7Ne76qtibs3s4Oboyv0UPGsIzoEeZrBVzzAmD4t3M/Ry/hiqVhkSSOg1x2ld5J
	 AAutys9amZbD5Dau3WQmQ0043Cf7TzvOjnKvcbDs30DACkmy8LfFRmUzPwgLKP+yU1
	 2zs8lReZybE3Xxxc5NxRqN4HIOT3gtxMQGNJNSCMRzRVS4mTNiZuRQjRvB3kq1ufjl
	 wwcXeos8uSPGt83fjkefJTofuobOArAeUlnKWTfYWX6dKA75/h98+/aUa+vMcDPxZp
	 r7MZwnUd/p4bA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BDE50C6FD1C
	for <ddprobe@lists.linux.dev>; Sat, 25 Mar 2023 18:52:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167977032575.13371.11995457217132530124.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0f0fedabd4f6c6a6a0417293f9622192911a3c913bf09f30355eba146d400c36
Date: Sat, 25 Mar 2023 18:52:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1679770325
