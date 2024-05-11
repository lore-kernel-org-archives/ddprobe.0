Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F72C10A19
	for <ddprobe@lists.linux.dev>; Sat, 11 May 2024 00:42:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715388143; cv=none; b=oT565f/Sa3dJnBOz/Z0sUkw0ASkId+chEyPs0PqD79AhoDzbBjMigB4dXjUCdPo66VuJkBo56Svtne6DeCBz2fsBweZJQzzTewi/eFH7y0+eSm3UAKZ5od4g4VzuqTIWctqBRmi/Z6IDPo3ZOcbbR4jey8R6gfigWVngtsz4Z+s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715388143; c=relaxed/simple;
	bh=EJ4fRsx1xc67OnPt/ON4kyHiBYXEQEz9z0c2YpLl2NY=;
	h=To:Subject:From:Message-Id:Date; b=OLVgElzRlBmqmnHlnNYk07/F62av+9P0YDwzyJDGo0KWy49lcb7y/iUoHTmfKtOFt2CMDLYCBHEAFNDyoNrX93OHzJPjWGFXzMXBe9423508ONEbar5hlFbDBv/KJWmCsE2Sxr9azxQ0GJS+jG5wRb7D8VD4Z/rNYPLFb74+jGE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=X6N4+f9P; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="X6N4+f9P"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8994C113CC
	for <ddprobe@lists.linux.dev>; Sat, 11 May 2024 00:42:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715388142;
	bh=EJ4fRsx1xc67OnPt/ON4kyHiBYXEQEz9z0c2YpLl2NY=;
	h=To:Subject:From:Date:From;
	b=X6N4+f9PIpTyQ8wBQ1MoRstVaQ6XOljyjoVdLQ5BlCAz7sVu+0HErixKIgNBNrE7D
	 Yvm5BGUmviszd3sbX2QxIfrzZZMt4No/pnlGSO+29is+Xm6GKG9xCchPM6AZb1zLuu
	 GhxM3Zud/inAIvhbNdVZR/gQq1x7tQnCBEst3T3ehjuYnbPpSGoXZvbvhhYR+Bo1rC
	 nKSdQbPHV+zh6IJJqzgkLyYWqyPvd880T6ts2O4YIi6FI36K1BWntH1q3SLYoPbAWz
	 IqEojEYGzJpVyL/Mgxx2jgQ0FwvODuUHUdzeB/zMxK/5u8t5kfhCgpx2XZVSLRe5Zv
	 ot1t/iqCLyy4Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C5C1AC25B10
	for <ddprobe@lists.linux.dev>; Sat, 11 May 2024 00:42:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171538814280.11048.11237118209368389050.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 98302b34c5ab303f7508e23ade20f2b71555bdd9039148bdd62773e107735823
Date: Sat, 11 May 2024 00:42:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715388142
