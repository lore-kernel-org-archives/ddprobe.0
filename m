Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1641D1519B4
	for <ddprobe@lists.linux.dev>; Wed, 12 Nov 2025 13:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762955994; cv=none; b=Z0af/v9nWPOC3oUVdslruMiEH3teO4pxpOg8ZOwzxfgBTMQ8lCjy7WdVBLhuRrlUnlRBkIbqXidIpTrfO3GHSyfc8BJ0YR6Ry5jVVGIteLIJqYm5F2jFhFqQ1qed29RPP4IE6/fyhazsoTPV+UUxkOXVTIzAaLgOIcYW/+6bE/8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762955994; c=relaxed/simple;
	bh=N9baQyUZYHE3O3FeUE9/RdcRTlLugTjPZxmimBrY+qQ=;
	h=To:Subject:From:Message-Id:Date; b=dxH7cxS3s/Xnn75PGK97UHf8WQTKCn4CYGsFucWxNqy9TE7tICIu1xpIFq41GKnlXEji58cYbD4abpvBoq2kfI3IlZtonyUY645yVBRWAL9YbBLthNnVAttQIsF8hH+yMKUUI+XG7SblQADblPJQbF4BDahYK7pX0fYIpmr/JLo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=P5mTtblx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="P5mTtblx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9C002C4AF1D
	for <ddprobe@lists.linux.dev>; Wed, 12 Nov 2025 13:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762955993;
	bh=N9baQyUZYHE3O3FeUE9/RdcRTlLugTjPZxmimBrY+qQ=;
	h=To:Subject:From:Date:From;
	b=P5mTtblxB86eEIGNsgCLOG3xZBtoI6x6kKF0ueC1YBa8C2N0ApFhZKQXGQnGgNJ66
	 c2U3/5EkypbU1hOSV0IJhJn57UPoC8uNW1EZYD+YbtMYjo2wONW/M/YZpqSzuKFMIf
	 U4AQfRW8wr+hfjpWNfToO9/bxnmeqbqiRiFDTA+MnmLLmNcHkpZi6PZGhhmqD9qSad
	 WHzQVFvnOdbNgjX+UO8whxfdmsWBfEmwtDr1c+mUMQ/IEUdtY3cwEPJUzR7BItMrjF
	 VPScMTi//f69R3k/7s2ZhjfSWiNJiZ5VW89uylLA9hRDnAKOsoB4B8NZKBMiXgkCUP
	 6LwItvE6fg4dA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FE41CCFA1A
	for <ddprobe@lists.linux.dev>; Wed, 12 Nov 2025 13:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176295599357.8416.14459741528208850916.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d0e772fee5f5fc589b10502019dacb9b5df29a3bd86e644c333996463633691d
Date: Wed, 12 Nov 2025 13:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762955993
