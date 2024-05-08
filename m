Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 044C3622
	for <ddprobe@lists.linux.dev>; Wed,  8 May 2024 16:32:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715185943; cv=none; b=LavqjNxdiIoECfFO546e17Z1kUL2nVivf7+qbsthOLMW6VA6kbZn72gbIZD0nzGaH/80J0js17H7LeHnuqYwIOmUCMpZhXOEgXpZM7UAxfLblSdwTiJNPe6VbCKRlKcor946Tx89jgEyKYexAgfKvU78cfOL+0nV2YHk+ivJh+Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715185943; c=relaxed/simple;
	bh=ui0kF7PqaA38dS3wccujrAgkauGxZO3rOufvJbIUjjw=;
	h=To:Subject:From:Message-Id:Date; b=nF+D3cxOnyqoC0bkkEi36IBLFITE8+y5xkadAC7ZcL9jl/WQapc9XrWohJFbpODzfwKAOxVVuMNtdpsbhiz0vGdeXK1e1CNts9X1qpU3tCNUhNSLnzpfoM5HCDbM5qguiqGudPKhKKEZF0R8dFzj3Kf5vcIfBxFrDS/yegOnCGE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=usCZMdOG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="usCZMdOG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3AB2C113CC
	for <ddprobe@lists.linux.dev>; Wed,  8 May 2024 16:32:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715185942;
	bh=ui0kF7PqaA38dS3wccujrAgkauGxZO3rOufvJbIUjjw=;
	h=To:Subject:From:Date:From;
	b=usCZMdOGq1lHXgPZrbRbHdguoGo3PZe7qDDWpwEabGT+ylaDEYKnfJgHGxhzMHKbn
	 UT8Fv0tzCck5+UtRiFaf0XTdn8pG4I7FYr+JvjnrG0tZwp4aJSPRmH6IeT8ixmhTy0
	 mm05TmFwGvnqwlHuOSREbEMqyF/d+G6Po9u/vZCZnqtGv/zGuimQBqM/1vMsAxXmPu
	 UZZI2RoSUR2B6ctg4uAOoD2tfBAq9lM8assM//r4qpCNxNgolZ3mxyYPpvMXJZFfAA
	 LT1KTY6Nfj9oRDWFPjb3em2HmFADMC5W1drEcobrPSfcDDOF3VY6I9a9wV1jXJYljc
	 hJz8s9Sn92XMA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BFCCAC04FFE
	for <ddprobe@lists.linux.dev>; Wed,  8 May 2024 16:32:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171518594277.409.12943484737599004700.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d787b47f70b090bc60a92b4706382a46c8c4a10acccfa8cd4adca505bca243d5
Date: Wed, 08 May 2024 16:32:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715185942
