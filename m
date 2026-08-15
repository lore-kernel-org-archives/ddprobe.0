Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D7D538B12D
	for <ddprobe@lists.linux.dev>; Sat, 15 Aug 2026 06:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786776034; cv=none; b=pzeBO8rvtPp0y/yLKwJRh307ruwEKPljqghwa0xfDI0cep9AWP5zsgT0B6/7fkBaNtd4U4EQCLJRl+IyfLKTuOW/ydZNNVxyNUjZJv4ZisU7w68NG+VKjNySvKetQO3Tyiw1Ee2HhhSvbF0loC6vHGAhQAcsrHr5mInZK3ROt2Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786776034; c=relaxed/simple;
	bh=pWXYtq5sSnG1K8EQJXEd1d3xN45SxS8Wg7Y87hIxDyo=;
	h=To:Subject:From:Message-Id:Date; b=CX5/IcLn3nTHAnesRgoddMxYxV1a9ygAIdvx3sCY2ZoypccYRlKFF9t97n3RSw6sHDeTHrsMNY0I69oLWLiK1fUm3uAER4FjRB4jutuPzQq/CWfXIa7BGmJOvTgsV6FqfN3+cQtR6s4Xqyq20gmfJyAiBdkFOL8yR6fWH/SQGww=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hTUV0KnX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hTUV0KnX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D733BC2BCC7
	for <ddprobe@lists.linux.dev>; Sat, 15 Aug 2026 06:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786776033;
	bh=pWXYtq5sSnG1K8EQJXEd1d3xN45SxS8Wg7Y87hIxDyo=;
	h=To:Subject:From:Date:From;
	b=hTUV0KnXXhldeDG9MvSPjGHNQuEib0VtqxgBikYtYPGnBGb5JLism1ceGdCrSkmgD
	 kC9qJgqAMYGOC7UAQKkCKG9v+7zh8pARB3+p+AjAQvGzpCYuFNUbn/7hgZ81bMoqdy
	 OiRJm01awXs96ZleEKrYLAjf+suKTbFokdbrLZbhq+erwxxdgYxc1INhSRu1napg9W
	 0ArqnScucB3CtywkJ9De3m+nR7ed7WLbu2QyrHQX6OBXuDl3VUhHnoIFkI9zvsFB/U
	 mouYN8v9NFHdkBXAcH0Xwnz4prPdCMKAML4Hytwn7xU8m9WVoGyGG+pRPnCHWQaXAF
	 rLvV6fG9zhmuA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0E49C5AD5A
	for <ddprobe@lists.linux.dev>; Sat, 15 Aug 2026 06:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178677603371.13435.13035734626018785791.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 545b0d7e071159662fada181803e4da9b014af6390027a11c31ef41f048f05bd
Date: Sat, 15 Aug 2026 06:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786776033
