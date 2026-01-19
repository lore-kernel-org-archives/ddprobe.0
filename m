Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 16FF82F7ABB
	for <ddprobe@lists.linux.dev>; Mon, 19 Jan 2026 21:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768857234; cv=none; b=lnLhbHsMzBn+U9r7lYRYAAZMDxQWvW+L80JOd8mKA6tQoO4qu9oWJwX5xtb8Kl38T0S7lgSKJHFkzQBsUdmKb5uDvk4nOKAcCkOl3r76NJ/XOdn9Fh2xyC7tlXZ7Fhu6CD4DX8IXegtv7JPYL1wVuGXed7WASq5ynIHh63c/nFw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768857234; c=relaxed/simple;
	bh=wuhaGF7p4GAxcDn751M0sHWD918/v/uBgVjrrqmSObU=;
	h=To:Subject:From:Message-Id:Date; b=SA6UIMq9aZFDpIsFxvnU2d6dX6BAL2kfMeGheJbhnosKwodezK0VnzSgQ7uybKpkIxYSxXR+ydDFBhWXqXGHiOjiOtGukDBqt8EAMUYa73GDftGxZPECVjPqJNMlBTpSqvTfMoEYd5vxpZRodf9Dc2eJBPC3i5ZK2I0yn2ggsPo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ixnEUVQM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ixnEUVQM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4832C116C6
	for <ddprobe@lists.linux.dev>; Mon, 19 Jan 2026 21:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768857233;
	bh=wuhaGF7p4GAxcDn751M0sHWD918/v/uBgVjrrqmSObU=;
	h=To:Subject:From:Date:From;
	b=ixnEUVQMnhXp9g8TvweRaCdB8PLu+ngz8fg3WWyLqcSmG9qiZy88WLKFNNx/tjlj8
	 7YqQhOTgv+NQPcBHdUDC2nRKN6CEgWfLW0llCzNNMBlDXOfVbIdQ7z3uwRIsuxw8vx
	 FtsSqes2cH7Si1CdPcoKGu89CwoZuhW04jkepdhxe71u1qHHx16n4QCRTKMt4WHIY1
	 fNNAk8K9AuA4IyGi36hRRO8882aDwWsa9WZARKxqxt/DBLiAVQCT5/wKD3Z8TxQdLL
	 jAA2xpRaBe+tUP+FYtawRIoTx/M6QOvK7xY5hpQai8YozBqRRVC/kxEpFNJobbxlwr
	 ULJw4Nh0p2Png==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90751D2ECEB
	for <ddprobe@lists.linux.dev>; Mon, 19 Jan 2026 21:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176885723358.15736.3472223059213363249.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7eeb7424452da16a7236681505e6590ee3f2028e2831678d810c755956ce6d44
Date: Mon, 19 Jan 2026 21:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768857233
