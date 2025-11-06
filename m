Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 16DF98F7D
	for <ddprobe@lists.linux.dev>; Thu,  6 Nov 2025 03:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762399794; cv=none; b=BTiUl3mycFqh+t41lXKcGuKjHuI+p9oF7eRadlDqoOnPD5PXqAQo/BMhKFIe0joUfz5A/eTVf/6MxjMpA3fG7b82BWRr7mVjOEPzL2WKenZ4EY4dbcVAZL9jOvE6moj4+jf2G2GsY5mqpFNaeQe8maXKhmblU10BHb6tbSyDZVM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762399794; c=relaxed/simple;
	bh=qI+QuUXuiHJzDC1WY3KIggC/Q1NB1a90EUUawRAje/U=;
	h=To:Subject:From:Message-Id:Date; b=s0gujmgrFzaKnPZY7/wXPIKjC3ikmGMDTz/r1zVYkvRYHP4w2xqC6JtMuOXGooO0U+YV1DqhUq/msSFye6AgggZG0ozdbLPoWC0xG1chfpziIWKhz7MFPf+di39BXDtoK3vBFl7rFjVy9kdaQpJatW4QSg+K/7kQa8eMCCwWpcc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=l/rYmGX+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="l/rYmGX+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 95FB7C4CEF5
	for <ddprobe@lists.linux.dev>; Thu,  6 Nov 2025 03:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762399793;
	bh=qI+QuUXuiHJzDC1WY3KIggC/Q1NB1a90EUUawRAje/U=;
	h=To:Subject:From:Date:From;
	b=l/rYmGX+0d+QZuz5f81PA+E5gvqtS3q83dpM9kwvkW+zwQmjHQWt2YVMxB7NnV7Dn
	 RO9ZXtcvw/28vLBOZ1NbBc6TcvY/G5EhLj0KbHyCgvUj01YlAKe7zl2tyiocCKr8G1
	 tBloY/4yI19LV0lQL30m8cRFgfn48TDcrahv8SYP1bgq8ZaavE81f5iTwaAvfQ9hLS
	 mJiSNrpx8Ms+aLRA64mX9CWdQNIAcP3sjpsoFaDmRK6VtoJgO5NqQFZ762aTTTl8CD
	 7pKqNkNzT4aoqvkpKvfnyj2qeBh2WYoYE97CLNio9FGYRwe3GYsCXkL6NHN9Bwz8tH
	 H/KZj9ESfDL5g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F8B9CCFA0D
	for <ddprobe@lists.linux.dev>; Thu,  6 Nov 2025 03:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176239979358.20646.14110725704491930248.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 744c27998b703bc95c4350b8f53d4300ba6902c7d0cac83a3dd309010b071d42
Date: Thu, 06 Nov 2025 03:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762399793
