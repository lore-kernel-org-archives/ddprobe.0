Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 54ED2374A10
	for <ddprobe@lists.linux.dev>; Sun, 28 Jun 2026 11:28:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782646114; cv=none; b=fh+wSS7PsXspj8iFrPLMOzwK96bvRivPjSfhLwRaPArGoZhS0+8k+1OXyzqjpBjQu3G3k7NblT2xF4Itq5FWTGFfo+EB+6rLU/+jXfH6XfoqPDn98oHlWvVy0rXtotEtMLqfXxYoHwDjh4l5fpyqsnaepU28GG9oPBZ1JLpmaw8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782646114; c=relaxed/simple;
	bh=q+eqLm+ycmrHNIS7GdeUP4rSp723n67fWc9oLR8dspY=;
	h=To:Subject:From:Message-Id:Date; b=BYq9nwUOKfcy4tQwuu3k96BYJmHVJ6DLneXueb+waVWxIwcm5fxM/9D54I+4kupDZTM6h1UyVABJWtJq/1sP2jpDpxO8PSJG2A17fGd/cYaKSzheoIxNPfX9Arc/bMRGdkKcQIoS6N/iQxeI6qiBTppME+U3bPn+i7DYqvOCjVo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TF6e9tVM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TF6e9tVM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CEB86C2BCB4
	for <ddprobe@lists.linux.dev>; Sun, 28 Jun 2026 11:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782646113;
	bh=q+eqLm+ycmrHNIS7GdeUP4rSp723n67fWc9oLR8dspY=;
	h=To:Subject:From:Date:From;
	b=TF6e9tVMfGPuSXqjSvVszJoXs8G530NrLDCpo4prvJgvUm9mb7FNxa36qmzZG/LK1
	 QK0n9Z147kc++8qDDHPQ0UsM1wHgNmF4KjP2YKHs2Sb8Q3fU3CLUeCQOoThAOpSPQm
	 hMZyIez9D5ZXgT8BimmH55Hqf8jYiYR28SEW9+NqyWqjq/X+HvXdJeahm9zHHzJjKy
	 4Xxq/AKT4OpDwbKaq1tGP5xpwFi0dBp/vu46fe3w+a+uQofkUf5k9/ZXsMQK7vv9qj
	 4kGiJ/hM4zYLTAFUwq563JRMlnmSgRgY9l7DRR/6ZnJr+zv098RLTqCZJN/ZXQPQb8
	 wo1sO9CQdtExw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B03EFC43458
	for <ddprobe@lists.linux.dev>; Sun, 28 Jun 2026 11:28:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178264611368.13424.18121619984249951445.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: df880172b59f070ed0c63f65459802acb2726fc677053ab887070bd83f1779c2
Date: Sun, 28 Jun 2026 11:28:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782646113
