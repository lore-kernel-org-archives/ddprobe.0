Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7E821A93D
	for <ddprobe@lists.linux.dev>; Tue, 25 Mar 2025 06:39:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742884794; cv=none; b=S9oSK4iyc6vRxadnRvS8zopf8vFMOjTFYJCLB8EqAFG8dWgMLW8Krrr8tqMaW0U2ECOom8oYvsDsp8tFOFu7QzJgNjOLLoKQkGJFRwGR/SMXG3Fnmm99iOH6Xo8IrPQIa3DnASdBjwstWGFGmYLfeop8yC8OJy7O4JK0RmTPsD4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742884794; c=relaxed/simple;
	bh=NRkwWRRAocbMd7m/jtyAgmS8gmkOsu98mCiURgH2ArY=;
	h=To:Subject:From:Message-Id:Date; b=AejPuv9Y17NaFOgfFU2mIYTGlS06G+XWtbKtX/3mxxuSYCA2ySd2JgILwBNdmj7fPJYV5OU0LdDd2CpjxJcRyC4JUMnB+S8dDAAQeAeT6G3eQuBDyPEYtF3dTrBrCHgvwAFlRA8XFPgOyOF6mlUKvBxezxCjGXv8LoS4xFRFROo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qx6jnRno; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qx6jnRno"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DE16DC4CEE8
	for <ddprobe@lists.linux.dev>; Tue, 25 Mar 2025 06:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742884793;
	bh=NRkwWRRAocbMd7m/jtyAgmS8gmkOsu98mCiURgH2ArY=;
	h=To:Subject:From:Date:From;
	b=qx6jnRnotqhmObmWgu/X+49rW33a+Zr/ISbRpAktb4vRO0NCBGcEuIU3Hy/KoGMMd
	 fDG75me6O17d2pYPL4QcBkHmE48TO4/zVh93kfsTaYKgEUWnZ8RedHmQ+n9Zzn4GFR
	 cC+2Fy7fbpXHKhw7dZVkO9nbLEMeCM7UH4/gC+5lQk2sTH9mVvmgk70oyklP6tV6jH
	 vlTiDoC/205PpuVd30QkFgbsMdSYDtlDxqvMtnm8MVphJPxvFc/83WZtQCrMHsze5d
	 F/D/2raQnsAWjzrFCQcpNQF0CCYBtUfkSooKunJRrk9uxTd0eeLDoxo01EsvkhUERS
	 WXyAGQTxNvw7Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C1925C35FFC
	for <ddprobe@lists.linux.dev>; Tue, 25 Mar 2025 06:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174288479376.2711.10637489361468357708.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9d9f9936982a9763b8d59996000fa5d72ddc9ee93312af1a3432dbf9f75182f8
Date: Tue, 25 Mar 2025 06:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742884793
