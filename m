Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 00F6A3321BE
	for <ddprobe@lists.linux.dev>; Thu, 18 Dec 2025 10:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766053434; cv=none; b=JWLHPe4mrak7IH00kLeTb7ngf9xnjbUmxTUmoOHB0qkMoDfxYZ2hmerc4gUxxgW3aa2yA6MjH64btijwlYTNxuNwLhapbMpfakoeTASJbW8uXh4TcGC0JzCdAZh2UEBrT/38QFeF3U/R0HB3cJvU72mQ3mLzBCViJsysWuAtZX0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766053434; c=relaxed/simple;
	bh=+zzpCUCbypBjqS0CwErpxbsK4hMENI5Hm6Jk0g+xmXY=;
	h=To:Subject:From:Message-Id:Date; b=I0JlYTChqtuG5GQNQhy/AtYk5FJI9M574SFPrJ66XFpIN/1dv3ogIPargQi2ILzVo12FoRI+p0Q5ppA9g4U+sTfMf8xYo15Q9GswGt5Yop+s6EunRECW+6cTcNsLptn+vsuSrLaLczzjhomFHQywnIIdwdt5QmS/9hWpFSIfrA4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=U1Q4ruOZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="U1Q4ruOZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A71CDC4CEFB
	for <ddprobe@lists.linux.dev>; Thu, 18 Dec 2025 10:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766053433;
	bh=+zzpCUCbypBjqS0CwErpxbsK4hMENI5Hm6Jk0g+xmXY=;
	h=To:Subject:From:Date:From;
	b=U1Q4ruOZNjjq5Pxkpjui+9EkRmgUExwQiKMmzvX+Pnb2R+LW2uCK5CJQADg249fWt
	 pOL+zgdyCM+qtdNyLH68O7rkuvkmcbBvTGfR+j3cxzmAPInt1i2BIpfjfKbjzeyMcv
	 B7YjVuoi/fayVL16mWrvLk2Zw/8rViwNowODWIdfa8QWmXs6JWjr/9Kql9gcGnG5TM
	 RqwjKdapSsiizkFeyMqQAFpHSWLxUTHztaJwM/UWbaHNgoOgnLnWpO19FMw0o1HRyJ
	 o3moDr1SilLFYjX+Sf3NA5P/RNSC0zUxUpNVzx1RWWgM8YxucRpwUVMgQfupeKJ20G
	 VaasdME9rzs9Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9BAE1D68BF6
	for <ddprobe@lists.linux.dev>; Thu, 18 Dec 2025 10:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176605343362.17278.12060684789228332289.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 99342a09514ef4805cc12e1c4be5ad49e4b10873f7ce0977d2168be27dd14fbf
Date: Thu, 18 Dec 2025 10:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766053433
