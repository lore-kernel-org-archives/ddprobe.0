Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25AB52D23B9
	for <ddprobe@lists.linux.dev>; Mon, 22 Dec 2025 02:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766369634; cv=none; b=f9N8s1bGtkxGT9aO8WyNgwkXh8S23/tPdbB5leOPwk0EtEcT1Kd7d66GAVxFh6xT8/intMARScKgF4L08NMd2m75riAaIyg1FptGkKpGgHzQPkENRMXV4buPHViL/LGuXgqOhz4SO0Q2XLjBU8nFVk3a7KoLcaX8AkxNLxNPlss=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766369634; c=relaxed/simple;
	bh=knyLYrCJkpQPYGOeTNdH9XaEVhWV3NiT95KRR6a0seM=;
	h=To:Subject:From:Message-Id:Date; b=KgyPdkvKw/mMrupxzrL8ibHHzQCdXAYBRZEeM745n4Deb02xO3hucAoaZ43rDUOGfgUIqtj3Qe+qm1Ef+wuIzJYqiOKO6Um7LTsR0v5Nndfsaj8c+kAgLF/ZI3aUvRdq0LhyCbULY2mjzqToqj78Q9IPeZ5uZLC5/If3XOAmOjw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nAnKLURq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nAnKLURq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A273BC4CEFB
	for <ddprobe@lists.linux.dev>; Mon, 22 Dec 2025 02:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766369633;
	bh=knyLYrCJkpQPYGOeTNdH9XaEVhWV3NiT95KRR6a0seM=;
	h=To:Subject:From:Date:From;
	b=nAnKLURqnmvtlflB822KmSeCDEc2GjPnPIreKQ6ywWhMHI1TLRQolFzZE3BFOdLAV
	 CzRwnp2nXvnaS2fnRtDQnQvHQ9hJtlcsWJ+bfEBSrRDAl4e6h/4CX6X668u3/fZhuE
	 1FAITn/vw4yf/+Clnp2z3xsJ51FC07kwhR2M0r50IBIeiA/zpXmgmfBOImmnuspcDB
	 XE6z9GVCPt4Ijt4zFrZBeTEoNYc0eoXmXa3XsWfl29qEhAMJpLUYrrsEzxm+/BH/Rr
	 39GKwEPxwmO8saTc+bHxArH/6wN9F42PdPOBhIzgcyCZ4c3pZJRu686l+5UxDZ8QQm
	 nhBWW1KLy0dfg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90746D68BD5
	for <ddprobe@lists.linux.dev>; Mon, 22 Dec 2025 02:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176636963358.16532.854091784239604321.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e69fd0eb7a78933a6bb1cedc36deef304dbbebed57da6df95f5ec3319f898366
Date: Mon, 22 Dec 2025 02:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766369633
