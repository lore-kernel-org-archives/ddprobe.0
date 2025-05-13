Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3192D28DB52
	for <ddprobe@lists.linux.dev>; Tue, 13 May 2025 11:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747136394; cv=none; b=CzPI+GjNzEwwzcRrQ1DaI5W6qSh3oUSkmO65wcp8rctE7XQpnT05y+YfPGDt1oHAmV/PuQ8JOgkeBy4Y5rr43nVY7vq9s+PG1rhHbHhQMnZ2wmpSGqyBt7NlNK04LG8j3uIjumSsLB3sBnPTejFzkE8DsLrLidCdk/95ZM+6Sjw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747136394; c=relaxed/simple;
	bh=7jqMySwbK3GeVf7nAqorKM9pE3m8hn2++eAC97Np6mk=;
	h=To:Subject:From:Message-Id:Date; b=NddazGTUDcCx3IuMnGhu1Ciqi3QtsrNRRBB1PG7Lxh671ead2ixbiH36s3gihcqT5VOnxPmf+Fj4GZ04ytcOH3Hf1jcmPC+Bt/IiArlpba5p2a1CEjyVXUCbjDZMVbG3zR8XsunK9o12Dxai/HkudN9lCzpK8LLpO0pEL72s+eg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=r10fGsaH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="r10fGsaH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0448C4CEE4
	for <ddprobe@lists.linux.dev>; Tue, 13 May 2025 11:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747136393;
	bh=7jqMySwbK3GeVf7nAqorKM9pE3m8hn2++eAC97Np6mk=;
	h=To:Subject:From:Date:From;
	b=r10fGsaHzoUBGHymdK6WsVjM6/fAg/OSW6PbEuX/c4lh7JJ+W+Uf4tHdRZeqcAFi3
	 ou3VyVZ4rk1gBKPWu7foufs9HB9Oeed3xCzp3kKaGWYlULo+obCOdgBfJyy9YVNhU2
	 Qso0hejkBHXKLwSJUgJwLJS3PXVuyeqk8HN+axP5euTKGln/NuLjgVv7nfWkX+IgWY
	 kemmKt2sSaIcWoTinbbNoGO/GG6bf1nlEfH3jgDAGV/kqQZj6UomXFISCLqHs+5lzD
	 4FlK7NgrM9L4KSLGi2TzemALP0aSIwgG0ia6G1xDdsTuKNp5LLETZTYJbHBx6O7g9P
	 N+DYLSSf+OLDw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E82CC3ABCC
	for <ddprobe@lists.linux.dev>; Tue, 13 May 2025 11:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174713639357.8363.12707495694073220885.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8671272db8e0fc48ce957ccc80f702a76a4f16896bd1598632ae9f630c5b071c
Date: Tue, 13 May 2025 11:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747136393
