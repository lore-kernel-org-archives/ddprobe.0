Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45AB822D4F2
	for <ddprobe@lists.linux.dev>; Wed, 21 May 2025 08:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747815594; cv=none; b=OJHGFKun/ofNfM2f3I1KxIV5fElgG3aKHZed53zklMbPgWmjIsW66LUDtl3l54FjvMrGDxdKvRhR7Gts7k3cATRma9mwrjB+YeOP7haz530WbLy79vEBmn017YEcNIiEC5zSYgTuqXMWtRw+gg2hHapeHe5L9kg6wMqfuCB9QB0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747815594; c=relaxed/simple;
	bh=qBvkAVLviQBXJRair1Peqy5QITOaCZga19o+L2M4msA=;
	h=To:Subject:From:Message-Id:Date; b=EpwjsP8jgyi76SM34R1yKJwkrm3zlzH6vHXUBj7+qgWO8dtWimLYiT/1Xb1zkotKpN8pmv1brCAcxrhrk49W+jdTB47ghDLo6urdhKk2EpIDjhz48bzVqyX/4W5qg7IlL8AqKxFPPtnVj9GzOTXHlc6qxO5mRU+Xp/Cg5vorXrI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BGHy9GmQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BGHy9GmQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9C93C4CEE4
	for <ddprobe@lists.linux.dev>; Wed, 21 May 2025 08:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747815593;
	bh=qBvkAVLviQBXJRair1Peqy5QITOaCZga19o+L2M4msA=;
	h=To:Subject:From:Date:From;
	b=BGHy9GmQqOuO7a0ZD5SileeMnXTx8jHPSCJJKBI5z3pZGmkIKenHdJvXvXImApjYw
	 qembBgzMfixRSR8NaRRJ1VoHz+0sd/xvR6zWeEERbeXh6QtDu5BUBk1+TReBqe8Qy/
	 UydVDhPIfLL9e6CGSzs+V3YyoT+kIBSSHYDWug8u4P0fv66y1wqx4pC+XN76DdTxq4
	 WecXLvHv50SOEiP+s26+gQXsRcW12TjydDGjGLdWDMdiAQYa3IJt8JrgFIBOB1NUFh
	 ntFDT63IVDIaQU8WQK5pZnM3Cv4Qra49pqXYoubDllryFGyKYyyQyXlcCMpI2Kj84x
	 iYJpGMOukv4Og==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90A8EC2D0CD
	for <ddprobe@lists.linux.dev>; Wed, 21 May 2025 08:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174781559357.6966.3670773051984438639.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e6495ccb11f1a7b578c36726d23ab8f784060c942c1443bd19e2576fe0101642
Date: Wed, 21 May 2025 08:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747815593
