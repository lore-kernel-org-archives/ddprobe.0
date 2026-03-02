Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 122C22BE057
	for <ddprobe@lists.linux.dev>; Mon,  2 Mar 2026 20:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772481894; cv=none; b=ar/A3P7U6dVbNe6sLcmd4XWrLFqpXgooZyisq5kFq8q0ZpaCnzUCxtgpaOtMpGJ1PJXum6aduKwnB4jteVCKobtn0KWRXuQNqBQEZJS04UHth7r8kRv+P3i1ZNg9p6sNaocVCrQtNB8rHuvzL/3T/IFS0faVF3qIFb4UoYjUNNU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772481894; c=relaxed/simple;
	bh=IAGdBGI7rj0KsLKTiM3NiOWu+C7ZOU8M2fBjspg5oGg=;
	h=To:Subject:From:Message-Id:Date; b=HeE8wDyLiX0dvq8hs77Dfi94aGN8CGnKkGVELW5nEP1Vt2y74wFPYhqxyzkmW4wPPysPJ8KKNvcJHKHR/ZpGwl1T2IPN+cQlVxnh3i3ilx8+DieiF6mtMBGKw6693/xFdQu/wTrVBcpYWd4YJizP+u4jxMLuKfvdgcFCgOcWDWI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ASZUK7o/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ASZUK7o/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C04CEC19423
	for <ddprobe@lists.linux.dev>; Mon,  2 Mar 2026 20:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772481893;
	bh=IAGdBGI7rj0KsLKTiM3NiOWu+C7ZOU8M2fBjspg5oGg=;
	h=To:Subject:From:Date:From;
	b=ASZUK7o/zy48yXBNzlpMbFOBO9eB7YobAPIZJv6vuHJ3zus5Mv7HelUVPbk1eo1DN
	 /P8o2Yv3zuwY4GcFuJ14X+1BYS3zI0d+WlcR29Q7hjxFaLI0M1xXmljyiVVgUGWJDf
	 GDqJ9yU7HlbXWnHjsyrAB2S+BagCtbOMpzLW01d8vsj1335gHdHNlIi23ZHCkHNIhA
	 x6HQaA1EasmVlOow49mJxLZ2IC+BfesfBNObqQ7eQxeV1+DhdJxCrHotjJ9KN16mGQ
	 acucv3cE+7j2f62cya2g8dM5vGzdrMk5/8TXT3oG+OP+Uz+/hS4BSUwFq9Fbal/0Ab
	 v2Zc5AYp6ctYA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A7B6FEB362C
	for <ddprobe@lists.linux.dev>; Mon,  2 Mar 2026 20:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177248189367.1748.15834165544406895927.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 22897443caa6e0745f07f106a74a7dfc251da4f95f7d1b898ac26b11c5180b7c
Date: Mon, 02 Mar 2026 20:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772481893
