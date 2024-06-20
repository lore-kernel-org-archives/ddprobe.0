Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5838318026
	for <ddprobe@lists.linux.dev>; Thu, 20 Jun 2024 02:29:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718850563; cv=none; b=l6EoqrudrnKfqvowAy1M0752/cFItTAzKNyW3BYfC9cqCjbd9WdA4v7bgV8d9flOSDr3WC/kPPEXo5AUZKFM9kD/wOSjR+OGHI3F0k8tbSiFZKSsnptNoFMV2zWnJYrCBObgrghKm2gSfGHt6g7H4kC2UeBqQeH/P13caV6DUSI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718850563; c=relaxed/simple;
	bh=9qIlTUY6gEvrb0GlfHc36Ni8jJ8QGxsqRLYFUULiVBw=;
	h=To:Subject:From:Message-Id:Date; b=jPl4LpYYNcNUfDLXK7AJFGcg+dxkZFyOSx5q6qXodx6YYv4+rEqjp4+Rlk6H53ryggBmuD7aLcEzS8HfH8C6wqg4DummX8FyYqlLlkME1Khru2h9qRxI+o7gJ/LQigvhBPKOso5vxtGCwbP3pJ/fyxnkk0q+NcR8vu1D3vvHIcE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kJzHJi/S; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kJzHJi/S"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D61B1C2BBFC
	for <ddprobe@lists.linux.dev>; Thu, 20 Jun 2024 02:29:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718850562;
	bh=9qIlTUY6gEvrb0GlfHc36Ni8jJ8QGxsqRLYFUULiVBw=;
	h=To:Subject:From:Date:From;
	b=kJzHJi/SZHHbkGzpFLlRAt8r/aeOpahAKisnzsmAjwFuT4s/hlL6Wl8Y8UESBXU+o
	 YmcTTS/FE4zecSUulLwl1q4n1ri7AnbopgNOamI+jGixahh2Zsup/Ks37zRF7/DCO1
	 mW1rQh2Ad2rp4JoKtD0DFqjnpbFnMus/OdFp5Bn0i5341ZCFGQXX/CCBKAVrzhE8Lt
	 swttVHCfOj8qpDiFgtSO2R3ytR1liwsHUhLnfpPq7POyv66+Kmnm9VQG96Wy5Ora1g
	 pzkxRysOEiBcOnsefDRYSTuHhzWutOiWqr0qIapY5+zQIDfTsBZL/kDS4TxzS1HyGA
	 EPIICwW4pGs7g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C32DDC27C53
	for <ddprobe@lists.linux.dev>; Thu, 20 Jun 2024 02:29:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171885056278.14147.2284041088333142974.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5dcdb9ced040b18e8ee505a9868ab925adf3e2727b3a72307161695acd548b07
Date: Thu, 20 Jun 2024 02:29:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718850562
