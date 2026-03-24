Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0B0A7175A80
	for <ddprobe@lists.linux.dev>; Tue, 24 Mar 2026 16:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774370094; cv=none; b=ssWMLp/7E8S7XjGeq1i5/SKAzU34/+fzpEMXn55nMEVfOFZoE8BvX2jGJaja1gPHAE9gkyuvrzJQi0qc8ze1Rf31XhbrNJuN+BObJ+7XZtRmHWYGZVLnYg5LJRNhCeQ51rMw0+ojrlRPGpbP5dqAt8c+6HSWwg2ogrLSKrXTAPk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774370094; c=relaxed/simple;
	bh=K+r1dvCfmRCKApNJ55GWf/IAFhC5M4rnRChN1j6ZI68=;
	h=To:Subject:From:Message-Id:Date; b=i4FHAZAUtuVyNIUqqRJeaxXW3ZJyclXB48rdZK5EAPpQCekuLSK7slFMGMKSqgOHHx3dFoXTf/gbHeCq+P1ivFKXodLHXOMQiYuOZyZtuCzeJsyB6naKNaRljwjooVcsaTMkxbEO4CPUZXkOaQiPtLxSqoxKLLyLYdrUxmiXfKM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UzB6CnzV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UzB6CnzV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2066C19424
	for <ddprobe@lists.linux.dev>; Tue, 24 Mar 2026 16:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774370093;
	bh=K+r1dvCfmRCKApNJ55GWf/IAFhC5M4rnRChN1j6ZI68=;
	h=To:Subject:From:Date:From;
	b=UzB6CnzV3f0vBIzQMYp6NxBN5P2Gma2zc8qPclZY2nknDtCJHJwIExItFlJKX7dyu
	 di85e+NNfzywJU3VVgz7Eb9Pwt5onAKCz6f6dIg6pEAUBsQZxdDI4MhVHfRFSbiPhL
	 tG29Ynn7Di+w6VtQBc0yyKOmnyZMJx27AkUKqBh2rPwvBhkp42qF5clT5GtuNtWroC
	 AlEKUaxooBK50Pq+FnPGuJczfRvpvhGim9rwyArcJoOVZf3s5mesrVh5I9YV5O/1H9
	 AsNvG39FUuymkRkoSOZ7V+OCQ7FU8VQrcR9s4M0zk+yl8akXJ53mKP/eDGjO1K0jpz
	 A6VUKGfZJwwBA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 918E8F54ACF
	for <ddprobe@lists.linux.dev>; Tue, 24 Mar 2026 16:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177437009358.8211.18058263839582482993.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fd2eb13a3d5ce0bf9de775e39af3ac4a93b1fa3806bd71907f0b919d50461548
Date: Tue, 24 Mar 2026 16:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774370093
