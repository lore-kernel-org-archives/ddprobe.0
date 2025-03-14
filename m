Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40D9D16BE17
	for <ddprobe@lists.linux.dev>; Fri, 14 Mar 2025 07:38:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741937935; cv=none; b=VuKkWDt5D1jHwmFmhqfQlyT5/vYWl4cY0ZjmtQnX43fWj+o3guWHMybbxNGEZ8gUrL1e8eS6YvcIf8uNW0N/9tqej4ovvxpDS21IA8CqJHARUMTLRdXjk2YoUceC5BqDbDpWaVjwHwDOp/9KZxikwvs5MfoAoRC9PKgYmVoilic=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741937935; c=relaxed/simple;
	bh=K68/cPv3seRyqEBg748TqC7TmkJlvsWAns26HB4Q0pc=;
	h=To:Subject:From:Message-Id:Date; b=gKqelUSkt8QJNm8n82LkJif14zsAplqQHWnBien+sJK+fyA1B0CH/nqljBxm4wuTzKu2x5+oZMv0SxLuTtLEFRji8vn6mEcI5gqxX6UTSs3eV3Mr9vyVu3HCeEW0uhflKx2nKVOsxGWYCuQBblNTVJjkjpwj0g8yiPzBCXuZDQA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SnI2AcTA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SnI2AcTA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B4032C4CEEC
	for <ddprobe@lists.linux.dev>; Fri, 14 Mar 2025 07:38:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741937933;
	bh=K68/cPv3seRyqEBg748TqC7TmkJlvsWAns26HB4Q0pc=;
	h=To:Subject:From:Date:From;
	b=SnI2AcTAxccvjlzmIVb+fPnWsfiiGvB1DlrjMb8a1Mtw2PcAT9/7hqCeA3lkD5Wel
	 K5UgH9t4PnQrAtODvrEkvQfZFdveCZUojPIIp9mx94NQ+UW/7bkz4l1bprKsVXGdZ8
	 QsMhZDgEPBHt+/liXPQtWYnL2pntZ3RL7OJD2jmYNuYcY1lqdJtty1SHOOcPO1geI4
	 zri5/jP2xROut0+5zkm6r8z5N0BRSEcDrSCKk+5sZxSorIAWRqVqSo4m6z5ouNGDtT
	 A4UvRYLMl3kUm/sqXhkJUFSDLZ/3TmyHD2fv+hlfpGaKQ6cU3sykPsTBrQXvWzT35Z
	 xYlCU/M9yTTlA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98199C28B2F
	for <ddprobe@lists.linux.dev>; Fri, 14 Mar 2025 07:38:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174193793360.30161.33055594351661449.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 03fb0b29dce8b509a26466eab17074a64fff46364fc034f776ca94f15acc36bf
Date: Fri, 14 Mar 2025 07:38:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741937933
