Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38C511A4F3C
	for <ddprobe@lists.linux.dev>; Sun,  5 Apr 2026 06:35:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775370934; cv=none; b=POo8qNBzrDZtTSQkzcS7BzlyWQB46FiUtlJmaPmASbDJjBC8tHQDBxAeti1V5+FODIKUfDlu+jxc7OU3gzYcJ5PcN8rT2WFYw9B5zULCTKcwflCA0Bmih5XFiWY/Ww0dTWvZFATiTJYOxtCOOpvGhNawFGT6thvbuZ2LBQNFGTs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775370934; c=relaxed/simple;
	bh=yKLABPL8L/jhx7y+99th9g/7nO9ybFI4hJ8waO80P0E=;
	h=To:Subject:From:Message-Id:Date; b=fkQzpbjRQfl51UjW3K9irYnfS19LdSEVWdO+B0M3uJBrLQXtJO0jLXFTC3WTXC30sJXKL+llVCCRFIFyymmyA97n/dBrRwOqkajGsu/XpVUTASI8jnApqz4PIoGTrqlmGHpUSzwj7QK+1NklaaVtCtJ3VMazrI7WUxlea32TUdM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Z0mxMkwZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Z0mxMkwZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1DEBC2BCAF
	for <ddprobe@lists.linux.dev>; Sun,  5 Apr 2026 06:35:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775370933;
	bh=yKLABPL8L/jhx7y+99th9g/7nO9ybFI4hJ8waO80P0E=;
	h=To:Subject:From:Date:From;
	b=Z0mxMkwZ+uQPmxGGG/yrhQz/Jxvuy7til67oHs4e/jOByUFYRMrFCbW/jL+K/5usV
	 HD4d1E6OA8R21AnQ6wzHlHT1nL0Adw6VUjskQmsknZ55Yob2nhm08KMiqr4NLf+4uN
	 8TmMyt2nVLu+A48XABQe/pSrk9FHlWGaqFpUbVWYSotfoUfDG925RXUUX5/rjzsknf
	 2tQ2XxmeQSmFa2BrqE+CpYTF5UTGkkanqo/PB2w0xT3rw0m4Mbq0qWIqxfFGCkOlec
	 8AIsXQp9TAaUTsRHh57BH5uCXBTQ4W9MTcrWvA8UBnMuTVCVCPED27yUUW46GL0GiZ
	 /YfK3J8ZjIxHw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEFB0E64016
	for <ddprobe@lists.linux.dev>; Sun,  5 Apr 2026 06:35:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177537093369.5442.909281061325161638.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 99fd0f50b656f99c0d13e7854fb555df901977f13e04c275e7fb392e0c06dd22
Date: Sun, 05 Apr 2026 06:35:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775370933
