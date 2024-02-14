Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EBBCB3FB06
	for <ddprobe@lists.linux.dev>; Wed, 14 Feb 2024 12:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707915497; cv=none; b=h/b43prlr7BDKNzt58mrt1c9EbR7rtnGDVCStcdLG4dN8n6kwn8L427GSgkX35gWZn3t9ywnrb4g90JWv15njfaiddBbazIJiivqUn0I0XNJIP/qVY71xYADC/RnyqtBRXNoQ1wEs6b4cz3FtpjSEfNljVIwvHr24ZQ0VzGxwj0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707915497; c=relaxed/simple;
	bh=N//QKO4HDqtCcCFgIzUHyCn7XrFJxGrpfGbQmH8KjKY=;
	h=To:Subject:From:Message-Id:Date; b=dRXCpUxKl1iCAbBgiE50x/Tr+36p1cPWB9tM7bfMNWv1Em/61DlfQNs9lbELeqztsUCFQkLPh2/rWA+23FUUdPxN3uvisBT4XnMRd/oLdmeQfI/YW2vDZ3Vqq4q8ZU/6qNKzozL3Ply2/qAEWcUl8aTZshw4QyxkPEaQvgwRF+0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hH2215K/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hH2215K/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 81E96C433F1
	for <ddprobe@lists.linux.dev>; Wed, 14 Feb 2024 12:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1707915496;
	bh=N//QKO4HDqtCcCFgIzUHyCn7XrFJxGrpfGbQmH8KjKY=;
	h=To:Subject:From:Date:From;
	b=hH2215K/po1JjbYsu1CjmPqpzO8wpWxPhWEfNZMbaJjK0palmQzk8BkpG3Q05zDEf
	 WWbRAx/hMQO8cpFGVFmyKTMdtMk8xdizyGshi3kYV5LYLcr1xSw1AyL6Z0vEfz6FFS
	 BwYRvHRe9J4UqO89JrO+7EQZt+sH/TY1jlNeZ6RpkX4ZvlHQk4B7YopDfnxEEuWs7C
	 Nf6srFtAek31HKPnOjcNt/qtpCuEv0qY6p9Pr5C0gEfeWdRRu2sGeiCjdp6U9B2wxk
	 yWPyiBoVHbmBFhzj0v+PEVLyLkRaRaeydDAPtKR8h2XdwcIepdmnOuYYAir+G/5wna
	 D6MRAU71Ue29A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 61F95C48BC1
	for <ddprobe@lists.linux.dev>; Wed, 14 Feb 2024 12:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170791549638.17323.8818826375354601184.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bfb203f34ca93d5fd66f88795fe0932fb92a7cef27c86559930a683f93554242
Date: Wed, 14 Feb 2024 12:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1707915496
