Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4191C6FC6
	for <ddprobe@lists.linux.dev>; Sat, 11 May 2024 13:42:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715434943; cv=none; b=lf0VrxHs9vzMwDw78bxP71hLKM1WYlMy4NyXdL1E/sM06acMhoerPWYOMsaHi6MrI6aci4tRTpPmGMTX+ZdeN9gS4lK6h4isURkcZP4iDjMu7oIyJiAllWylv78QNvamzY6zkfngNvlw3VXSotW/YviEiFdr0RYznz2gK3S2ZWI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715434943; c=relaxed/simple;
	bh=/PYD/l/9lKjr8hWlBn5HnAlKhre7Mcuzn3pAHxuyZI0=;
	h=To:Subject:From:Message-Id:Date; b=Xz5O74HpSUV/GAGCgr5YEYlv2aiXEX65GhmFdzC4rUqIRzOCy7CZ3evwn9ZKYhP3iNIgKJ4sWceyLJeykW+hsILoU8ggBMriHkv4cL25rwnm0t1vYsjcYBpBeRzZi8iQB8N4t1XAYXkYd/Ij/LGDBIcikbPi18zHupx0tSOXeU4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=t2dicH7f; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="t2dicH7f"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DADA1C2BBFC
	for <ddprobe@lists.linux.dev>; Sat, 11 May 2024 13:42:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715434942;
	bh=/PYD/l/9lKjr8hWlBn5HnAlKhre7Mcuzn3pAHxuyZI0=;
	h=To:Subject:From:Date:From;
	b=t2dicH7famTDHAUMCwpUubymTaRux3tyfB3x/lbXGQBgs9tmKWC2VoKyAmSJGeqg+
	 aAVsvCD7EMEj/TosPXVVjJdsk7uglQuSUY2pNsL6dBime/GcYrs0NmGLqRzpix4qtU
	 Tej2vqK0GwMEPCDR85q7ZxCJWeFqo4j7p9lIYw8jI/lfM9rYcPSDlZernRn3+oMTdl
	 0wz/q3OLu5QtrlT7HD/PiJiDJD1FgsBHHdNYV1/iisVggDp40PwLjTS7NqksvyW3yI
	 3uh7oWJMQQdzsGPgRGnvIoiPvYvabfgGPSQ8i/R/2iTT0isXpU2FmkvV5DP8EF8yI9
	 NPKvWDYQ18h9A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C6CDCC04FFE
	for <ddprobe@lists.linux.dev>; Sat, 11 May 2024 13:42:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171543494280.13647.5940024277118311436.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 47290329d4a24a7153abfa8f94193dcccb4c891228567522a390da4cf1b6f65e
Date: Sat, 11 May 2024 13:42:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715434942
