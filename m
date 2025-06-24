Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 07B7E2DECA1
	for <ddprobe@lists.linux.dev>; Tue, 24 Jun 2025 14:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750775994; cv=none; b=jixvJp3E/kryPjp6aiYraTP8dtAuMFyJrtTfb8A0BZzYBojNoSNUwVga/W9pqLhgJtFI36zBNKaOWGATYnRj9B/lXrrWc9zLVJv8t+AZeUhFPFWSAmCZbwH9Bm3ouK+N1VW4sRT+Xb0R7+E2lBAsmDs+ubCzJj/0JZlE2KAmLk4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750775994; c=relaxed/simple;
	bh=c95PSyzHTKkf/7dNFQ99U3SMgz3fVG8QJvLz3vO72O0=;
	h=To:Subject:From:Message-Id:Date; b=aUrhH12hUWe5Qe6G21ncLtKS4+Y2hRDl/mh3n1EDC6AXvWtVN+nKb48xcMzfF3bj4+ZvPMr3akhqO2kE4SF/9yZT7dwUYln2s3t+yV/L5/0FARVOgKEhD8dI+DRqrFTF1T4KaEQpkgSFmbm+DUa0oo1RLIPaRqTrKEXdAX8zQwU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gqornyMD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gqornyMD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F14EC4CEE3
	for <ddprobe@lists.linux.dev>; Tue, 24 Jun 2025 14:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750775993;
	bh=c95PSyzHTKkf/7dNFQ99U3SMgz3fVG8QJvLz3vO72O0=;
	h=To:Subject:From:Date:From;
	b=gqornyMDsi4SKBe3dzZui7X029W3BwNDLyT581ZGSjnANw9Rzue87xS26wrVepIPZ
	 svEUY/GH7bkc+oh+MsWhoXn+Vbgd3dvsEb0wdlxpAe8H/FG/m+Rl5pBsXpmKk9fU5d
	 Dtb2ShCH+0TrSQGl+GlmILznM17NqYhLwOzfiluzdhIAYFvyOVJKa6XBUgQZd54oub
	 FMGQxrgsCNWz7mVV8h7Jz79Fl2sG7uLJ9EMXvwQew0OK5nYjaeJ1PrMONde6HzzIVk
	 3ugetXB5rsq0zgilWNXnSTYjc7SKtFhUBjf6lR0vgZ7FuFoRtlmkLzGpPtrxv3NZYY
	 Yco08oebgZxoQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F477C77B7C
	for <ddprobe@lists.linux.dev>; Tue, 24 Jun 2025 14:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175077599357.9814.7965298433469427999.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4df9ff67f8767391e5ca555a59d9526d6c4bf134cf9b0a2bab28cd3099988160
Date: Tue, 24 Jun 2025 14:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750775993
