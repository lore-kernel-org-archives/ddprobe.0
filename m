Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2366B1E0E1F
	for <ddprobe@lists.linux.dev>; Sat, 19 Jul 2025 15:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752938394; cv=none; b=ZaoWao1WqI1BR5HNhhOeJrAuobaEZzVEGY3+07gNE9vZlGcMuaVY+AW0FQFk8STmQ/zgR7TZfjHyCmhnN9fDKBXwQCSElyyTiZAI3QQEeTWfycfG+rOjRMhwS7zvtF4262LcWklUYHqCelYiFVm6L6fHTr9hGoTGPoGkkkSD3xE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752938394; c=relaxed/simple;
	bh=Xx3bRRV0FsLoDLnJYbj9OzthAXewaqAOaiCHK0Dn3co=;
	h=To:Subject:From:Message-Id:Date; b=aCQO9nj4bi9eCNi358C5Z5DE3Xf6L9geyqTXURXG9GYm6BVQ0tnVYaSWMSO411I9hphzso/4DFZslXqX3xbeDCwpcJNbEHRtJ987QwXH89H0OcNt49QcWOtPaMH5AWHMHPSnrz1aPyS4mH0GUYK93SIL9Zetr7DORIjNca1nUj4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=t4ao1QXv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="t4ao1QXv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0D9AC4CEE3
	for <ddprobe@lists.linux.dev>; Sat, 19 Jul 2025 15:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752938393;
	bh=Xx3bRRV0FsLoDLnJYbj9OzthAXewaqAOaiCHK0Dn3co=;
	h=To:Subject:From:Date:From;
	b=t4ao1QXv70uyqHzyRrazJzunTU8zGeqvSHymTnT6IbfWqoYoE+xuQruvSxjcMFrUz
	 vn/pKtTXQ3TB2+ONMMKd3Vounu4g+HYhq8CuZL4p71yForVOF8u8iqZPxYUwO5yVZ9
	 575DzTp+KoaLSDVVDuf1IFS9xUiTkV/dMkZHxfp4fBYWlhPPFz0Tp7Dy86ujdQXERI
	 xCdPEgP8wtsJNqxqYXVLPvUVG76NyxD/BRSwHDHB7OjCa6qG7ehJK6jQBx/+lO3FgB
	 7a8ESeBtphXazOosfEvzHZrMKsrpferjX7sx7Z/6MreG7VitZ6mu8RpVI6CTXfnh1R
	 9GmvnoUOehXOA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E660C83F27
	for <ddprobe@lists.linux.dev>; Sat, 19 Jul 2025 15:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175293839357.13415.12933093191693378851.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2bf11c970c23f48935a6d206cd10e30d01f956732c5a4d69d9fbc73de4528125
Date: Sat, 19 Jul 2025 15:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752938393
