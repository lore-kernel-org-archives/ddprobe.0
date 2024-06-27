Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B51B199E93
	for <ddprobe@lists.linux.dev>; Thu, 27 Jun 2024 23:34:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719531263; cv=none; b=kMuNIv0UzBsaZ8JRPbnhmSyxYQrklFC7mcYtF7IA7jS0ItV/Nwuya61vA5H71MrgHYd9drIaYr1Lbzel9YIL9QE2lU/6wwOo+8iNr786CoqFdIjECBUB8+xem7DmskB8IGm8RyEa/aZl3nC1OXHV53cWt2EltXIyJZUDET4mo+Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719531263; c=relaxed/simple;
	bh=P+1AUj5UgbbjcjfwDQDZVb53Lfk1iAn7TYrQRk37SAM=;
	h=To:Subject:From:Message-Id:Date; b=YMw70cy+Jy9kxrvO9n2Mp7CmDm2gTZKdNHryj82La/aEYoIJ6ev/FcIXT5SLfyrs2g7LaCn/BZ/ah1H8CYpqDwYgqKzSYlF7fAN3wq6jcaToVI76pA6C9FjNdJrlg9zngLpjbY/usOXrJwWqCwGLqEQZHSi0PuKQe5RNsCcvHIo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=i/NH6QYS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="i/NH6QYS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D00C4C2BBFC
	for <ddprobe@lists.linux.dev>; Thu, 27 Jun 2024 23:34:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719531262;
	bh=P+1AUj5UgbbjcjfwDQDZVb53Lfk1iAn7TYrQRk37SAM=;
	h=To:Subject:From:Date:From;
	b=i/NH6QYS+qWbO8x3lgoK13nO6zaPJSwSGKXqsg+3JZ4hGTiG7MFpF62ZcAmSs4uQd
	 SkNa1du2Y+vSFljJhq9lP3aA/SOgJ7xhKWVEHiKwp5cmyeZH8ilo+kw6RcV77hN1oA
	 JvqlPx4g5CIdWg06M/SCATXK6dbAWgl9mOk8euu+PHXljoAazRJgdf9didQUvQgjxJ
	 7fjdHv32Z6epXlnPwJzLyroNA+RQwOUQrNlptaXhdnQG9RILeBqnGPjIE0hx0yzyBw
	 vP2mzYEt+0Kn0QMg5Axo6ertbtRmG9J1iRc9SM6X/s+QTWCN7P1wgRoYlB+6clpqnh
	 NLfrgUyPGb2lQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BF56EC2BD09
	for <ddprobe@lists.linux.dev>; Thu, 27 Jun 2024 23:34:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171953126277.10271.16823585328210027747.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fbbdd641c9b5dd418e098b0f464115239ed6ab1b73f57f132050962a7eb8681c
Date: Thu, 27 Jun 2024 23:34:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719531262
