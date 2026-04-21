Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DF68431F9BB
	for <ddprobe@lists.linux.dev>; Tue, 21 Apr 2026 08:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776760653; cv=none; b=j4bw1FL4o6P+FhxpNdoqG+rcQW+ztiO5iix87eQEqs1KBHVKD63KksUqwpzn0YeA42VNkHe/HYYR/DXUTLBzNqM/jH63+Ddtyh2XhxeBvSOx8v5dyTAMgVjpGkAY18H/6Gf9XdJOgXCshgmK+t6g2Pj2iVMZXHu8W/bxPu7krZ4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776760653; c=relaxed/simple;
	bh=xcAjTxwInuYTpRSM/fW1pb8p4M06NJbcs/heqgwafxo=;
	h=To:Subject:From:Message-Id:Date; b=bYDSlBdBEwPbDdnS8dIMkT+AkXLBtzeh4dK0BQDxC6FS7Yy0hDS9ZQ0VlkJa8aXI9PTK5HTqD9/bkQ4XChvrvxNLQzSAFSeiE9bLgxCqyK7M0xtwdL4Sv6AB836Kv0sha/nf7HbtUtB+eVvC6RrBSmAcSQL2Oyr9Hj/6QgSIrxc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qmnfeKJ3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qmnfeKJ3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8F70C2BCB5
	for <ddprobe@lists.linux.dev>; Tue, 21 Apr 2026 08:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776760653;
	bh=xcAjTxwInuYTpRSM/fW1pb8p4M06NJbcs/heqgwafxo=;
	h=To:Subject:From:Date:From;
	b=qmnfeKJ3lQa3o6CVvdGZjZf9FYq8/CFSSFoRQGV7V+5Lro9y6KJactwm+lqp2QNE9
	 6eCfdC55gbjBQ7qYNTzPVe1bd/nSqnvORwNF+qZPFAq9rWEFpwj/75SQXeRwkQXn7m
	 yNAWzSI+mZqVRbG2oBaOU6hS+deNF2s4Nw1JwOJlGz/B4J94pXoonRxjFeggdg/GS0
	 1BQ/s5chOM5t1sSm38LD9EuC+I/8bW773qv0oVKvG+LyAahclcLmUErpU2LJdP7tG3
	 sdB8wDUkkHAaSm9iU5W4KhC+5azpL6zTbSufIZA0cyc1wPG5fe8WmH/0t4kAFyyNEn
	 slX8uVFxtGKZA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA3C3F327C5
	for <ddprobe@lists.linux.dev>; Tue, 21 Apr 2026 08:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177676065368.22882.14002595410741162974.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a8bbcfbef986820cae2eea025c0813fd467037fba6df2be482682015e7e4cb00
Date: Tue, 21 Apr 2026 08:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776760653
