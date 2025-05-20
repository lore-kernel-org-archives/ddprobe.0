Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CF5821CC51
	for <ddprobe@lists.linux.dev>; Tue, 20 May 2025 08:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747729794; cv=none; b=GPQNCSvv6vSuAZqUTsCfzZKxWJbdD01oUjU6YNeIO9WjAW+jxfSS0lVw1EdVZhqHLPn+ZQAuOv82xPQrSeyeUPDmrl9W9y2C3LZq/U58vCNk9VO68pHx6XRU7jusr7ZOAZwA2XNYWrTy89WoG0F8/1HXkYYHjEUmPLJS/gpDXWc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747729794; c=relaxed/simple;
	bh=JWGtW855ufFhn7JZISUelJ0aaSbw9osobr9XgFVQJm0=;
	h=To:Subject:From:Message-Id:Date; b=F6iyejdiu2/oR8j5oozfIyqrxFqFYlmj45MSRaAVM9c3fhZICe/97e+zk4iC/gtunCfCrJZkeolo407vBBrlQaH2A5+QWU3s5E4mKEvgUTvQfrh6aBXACkPIh/ux+znoBfQui933CHboV2czA0lLGWf+7HdBQ4EaMTjOBGJlQTM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QXw8yVW0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QXw8yVW0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A30A5C4CEE9
	for <ddprobe@lists.linux.dev>; Tue, 20 May 2025 08:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747729793;
	bh=JWGtW855ufFhn7JZISUelJ0aaSbw9osobr9XgFVQJm0=;
	h=To:Subject:From:Date:From;
	b=QXw8yVW0qNFKL30gBEE7u60RKf2Y+6DCp/NVRk6AeZT2pry9VoIQFgv/1NzsjHkwo
	 cTajj4zP1FqPNVwDXkCwqxL5fgrw+4P7AzBq35/E2wdAk5N6b5c6zQAsLIjbSgaTmH
	 zv+YxFYoJHMlUgomaCWTXihz3aVK7g380wRxZ7WxEMlOR04bg+40jLnPl/JO85Yfih
	 +PgggA1s048ItFbeWQsePtzCqUZhS4wsOxCpC73AlRMcpBubeD3BvIVPy0JyrGydRE
	 o0GXiLdepPJ7KOgd+sC8VL1vFlnxPgKjbt6Wp3drOr7iKKUap3jsMOE5fbIABM9fdE
	 vP2eoqJWYCkJA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F3EAC3DA6D
	for <ddprobe@lists.linux.dev>; Tue, 20 May 2025 08:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174772979357.28658.5204038848114639942.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 88b6a9e9360729d687283b7bdc798a55318f8ed0851256e7d3dfca3ecb509937
Date: Tue, 20 May 2025 08:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747729793
