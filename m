Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27A751A7253
	for <ddprobe@lists.linux.dev>; Fri, 19 Sep 2025 01:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758247194; cv=none; b=YMQ/AvXbGSFIwMGelB9JqL8Owp2kEGnJsVlMLwa7ygX/4854klzyTp5y0S3wm4vRunST5tFS0e/XZohp9yjE9+Zt0i7eXKVJK4DIcngEDp79qwC9jjWpsh0ZH8TIFolihGIALXyPNDJnvIgiVawKCOIFw+/PL6K4zwybJ8RBCG4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758247194; c=relaxed/simple;
	bh=7FqppVr0+ltuEdHtYMxp25D5z6e7YRAtMNlZBxB176o=;
	h=To:Subject:From:Message-Id:Date; b=ZAtuoTUWVp4qB9EwkrPOoC5QZTFgCVY6i3ZkgXDIyx3HBv0u+rQde5sq7xPrIQDqHp6CURSMyJ9iZIUNyf1rMzTmZp399gma4hFRazXeM9PdVWUCKcAVBF8lRxVToB8OOTFvGRZfddtCQjgetXGO3AuSZDY/Gc4fFUYjPUX6QFw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oV23IAAZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oV23IAAZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9E8DC4CEE7
	for <ddprobe@lists.linux.dev>; Fri, 19 Sep 2025 01:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758247193;
	bh=7FqppVr0+ltuEdHtYMxp25D5z6e7YRAtMNlZBxB176o=;
	h=To:Subject:From:Date:From;
	b=oV23IAAZVZhS9tBbl+k+0Ars2q7MDYVlBx5hheO1IdIeelja3ZadPJK4WexMKhlId
	 +OOANT3gmDLsjwlXhIBgJsG3zyBhBqfOZebFK0xY9z36MGvKyr5QB/Nd2oxSDxBNLG
	 16p5vPNyrtGWFuStD8XMh6T8q87hEgxRuCWTbZN7sQb8fAs8Yy509gVb/m5SzrTOmK
	 uvN142yVkyc2iCXT51aFZLGMUWYMrG/l0h7kdqkdG20fXOif6vTneYbC0pDaSd6fnG
	 Jx8uNwaimS4EaB+X8OttGGO/6zidTq5gaDluDjxPo/m/pSlRhRt5LxFkM9E1+uUlQJ
	 tKT8eqgnP9N8Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 933F5CA1013
	for <ddprobe@lists.linux.dev>; Fri, 19 Sep 2025 01:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175824719358.7726.18147901097319563182.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c602a6ede256c7ac6647d1b9a9493660be5ced597af288e197182194d104de72
Date: Fri, 19 Sep 2025 01:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758247193
