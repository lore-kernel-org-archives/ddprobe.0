Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36B3C372
	for <ddprobe@lists.linux.dev>; Sat, 16 Nov 2024 04:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731731754; cv=none; b=BTkzw8kkG4o/+Bbcv4KgHzQA7+Jh7C9q6eNqT2VTwLeLHMYx9xXwiUfA6lNG5jJf7o2Za3q9JdXMJ8h3YGyZzRzb7X/nYYXmd7Xgcs0xFcsOHm5nYqaz5zYDCTGWacoHuz6LuTExqzNoO7BXplbgrreuJUDrvnEjoXonIQ2fdiA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731731754; c=relaxed/simple;
	bh=AKy+McuMAm1txUld9izBvmUJEMSG9v1he3Sn53G9D0U=;
	h=To:Subject:From:Message-Id:Date; b=nFoKQEAKzyDQulT8O7r0E8gKO0qWFbvd0KZYTRHYiKeecH3oQGjozJaQz3nB11/YnJIeZSw6N9RTY7FUjPIE8PSyYDD5YuDitDsRr7+RgR3wQcgKf+R4EMaoCY+uURcpIiCke8dH2fE1/BLrsg4sSnO6QzMO9hxCp3LRFT/0C2I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YQ3t1/f9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YQ3t1/f9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA36EC4CEC3
	for <ddprobe@lists.linux.dev>; Sat, 16 Nov 2024 04:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1731731753;
	bh=AKy+McuMAm1txUld9izBvmUJEMSG9v1he3Sn53G9D0U=;
	h=To:Subject:From:Date:From;
	b=YQ3t1/f9nu3Uk5N2QixT8NTYu2pG1vbeArRd/IWf6n9qcrWQsH0Q64BBrR+qOznRz
	 NW8pCiHanq4cWghWry1GS//fneMvqunVljAK71FPq2d1EZ9qXcgYutmtmSZsVTdbGM
	 8n+9KUYGtfZ6paSsau8MAxSmR5iq1NX8eYBpQxbsT5lM692Okws9zXKGgyEUUZjlZB
	 5bxtR6nUuYaWKo6dZjfO1XBEY+UMqmQqZi6einy3ndo2+anZblMoV9Na7a18q7qA3T
	 cHZfup0eNVAWUsdSAqNg6TqGOtQW3mr5YWvRjVsSThsn+ZnVktJYMmsGBQ8nFJbxvs
	 oYFdnLzZ4ZOfg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E1FFD68BE1
	for <ddprobe@lists.linux.dev>; Sat, 16 Nov 2024 04:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173173175361.22269.13747121270466397475.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 96c9359295bc456c90e4e799cfa5258db0ac01ec56da033fe42339db537fa0ea
Date: Sat, 16 Nov 2024 04:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1731731753
