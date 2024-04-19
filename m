Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5AE4D29A2
	for <ddprobe@lists.linux.dev>; Fri, 19 Apr 2024 04:49:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713502163; cv=none; b=YxBk+hC+SH8126GZqRTMecBWDxAbgtLLiy+eYIvP6ThzsmZgb11hfDK3srRKOz2tTfIUEj0y7fPkMmRGmcDtZPg6DuCmS1Kw9htmpLLDZHP8K7cKCe33zI+vlWeBr7R/q9+R1ACS9QT8Zb0gstgFPitSbIcefD81tXg26ooLLO8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713502163; c=relaxed/simple;
	bh=ULiKR6lECVnALxxq2dV2BRq5SYt5KV8UUr/Xvta/PWk=;
	h=To:Subject:From:Message-Id:Date; b=O0saxY9YQU7HefgymAL4MM8VQFIbdBaBE8rXil/BAEXAkgqYEV+9GMBQhw3LDZ1LcqUG2FJql07KMQ1UlCztQZENYGbNTBxmBBocbGpNbwTdh/EEHGz7gGvvTb3Uwj7bUmLuBChKElaNUXQ2A/uxi7NLRmvGxUyBCW1DFnPoF1o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MobHzPSa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MobHzPSa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D56E1C072AA
	for <ddprobe@lists.linux.dev>; Fri, 19 Apr 2024 04:49:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713502162;
	bh=ULiKR6lECVnALxxq2dV2BRq5SYt5KV8UUr/Xvta/PWk=;
	h=To:Subject:From:Date:From;
	b=MobHzPSa6C/gZCsXQQrshP6kIWOg6regxgdBUGBqx+rITapY5CLBivPFjU/B4B0tV
	 at1pnGwf3FqR1tmWfaD0vVA4uxyRQ008cyWYkTr5hXAVY0Haam0RAu8o5kUlPkSATK
	 e0e+zDFvDXoWK/mSNMMzNgfSaDkI+U6hCKhBS+l6w1dovSjVHfd2LRRuGGuOsw9zQb
	 Pif4gVdTLb0a5XLsnPMP5cZ3QHe6dsSiFZuai/6Xfc/eKEkJGXY9etsveEMqSZ6AXK
	 81MAHZ49o6eLg5GoImBgDT34FdMSDpIYRK1RvIKj2To8IX9JJEEFJ6GqDz/1KctqqQ
	 KsOQoncmstxHQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C1A0EC4345F
	for <ddprobe@lists.linux.dev>; Fri, 19 Apr 2024 04:49:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171350216276.24750.9727454127882280212.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bb8ae1dc29860030e8a11f2b9bcd332406e2f80085377af77721a0ace8e0f947
Date: Fri, 19 Apr 2024 04:49:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713502162
