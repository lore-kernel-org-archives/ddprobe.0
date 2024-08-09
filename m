Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B90F3A1BA
	for <ddprobe@lists.linux.dev>; Fri,  9 Aug 2024 20:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723236954; cv=none; b=c64dPwycb04pkWEd4iH5ySTnk+bRAHjYMqG7TD07bsu3KQQPEuPdWj9XOMotooQaM8ildvjPvGiiGRmQUygXwrkqAx2JHZIVO4351LMZrFzisAXZtMICB/hkrHubhNuPSjOW0XlgT+p1iDMkQt5C7MWnihpVjFj7XZjh/IgD0u4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723236954; c=relaxed/simple;
	bh=f6mekS+yESqPOEg1ClcoQdHx2q5t4XoNhokarJebxIQ=;
	h=To:Subject:From:Message-Id:Date; b=N6BDGcF+zycMw1qa4Ao+lVt7qaPo/kbGsd2vxsdjaXtqz1uxP875lwH40aT0GW0YEkJ1GVg/6c3WXvFB+RlJ8p2Z+WJoMkgtd+WuZjlgj9SloDsKJGP3U/1TKipDykpRClxDGpkDaJVhaCbGIOP+pNQXD8/tO01LsFoSIB2byhI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FKUXWbVS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FKUXWbVS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B5409C32782
	for <ddprobe@lists.linux.dev>; Fri,  9 Aug 2024 20:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723236953;
	bh=f6mekS+yESqPOEg1ClcoQdHx2q5t4XoNhokarJebxIQ=;
	h=To:Subject:From:Date:From;
	b=FKUXWbVSflxV7ej3jX2U5VfsYz8GD+rdfIslHOJBoBy9zJQVs4iFM4AKKSVTog9FA
	 qyePrdRu6lNKKxZY0/INOU2v3MzE5sXj7152xYAKUJiNKCS1uBwQoEuiRDJ+shVP2C
	 ZCSx632KlOazLRf5ZmvzRgRQHkVUEK1rjZXDFFuTViwgNxcxuqyxv7syeUPBw5sqgV
	 0SYh/zlPZoJWGmJWd0JYV/9NIxZ/kGT3uiKYkI7c/IL0sxEaeJMX6zY9gvtSIXuUl8
	 u/AInib6tVtdIMGPW9qaiuCe+Hgf2FF1eXtGhSWM1E1Fpx4yDaORpit7bAL1dsFoDA
	 +O7oN5owVIRhw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C4CCC3DA4A
	for <ddprobe@lists.linux.dev>; Fri,  9 Aug 2024 20:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172323695360.29848.9249184050884868847.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0da2cef27fa35411663fc21c957377b9930d56beba5bff59a0a5e2358f1215e2
Date: Fri, 09 Aug 2024 20:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1723236953
