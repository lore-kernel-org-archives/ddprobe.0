Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 389A91C5D59
	for <ddprobe@lists.linux.dev>; Wed, 20 May 2026 07:40:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779262834; cv=none; b=pLGVjrUzz2KAYmzuk4tDXXYzW0oViYFASSWYAzQ5ZI6fNfE/NuPKRiqxplne7/SLrpx1MAyip4RmpUh8E+aemxv7IimqOF4TMyaR7DyfRJiWVnQUpeC9ACzXDxkMNddfbRCSi/Qxs2ZrxHcjSFimd2G9yfFcfq6smuEd+mGounI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779262834; c=relaxed/simple;
	bh=uL5DrMhUxaGJClE6Ytit4USkmzUOxMt+SZoDQFU+5L4=;
	h=To:Subject:From:Message-Id:Date; b=ntnpRGz44kHq284B9ISzz0I9Q8H7Pl7v7icjguBFq8HevJTi4ZykgtDJJO8Uplvxbq6gTssy5lse76TpWZQXFAqvw0IMVuDYBWM2JfQUeiQLWvO4GYts0DNA0VFcE5lNbTFhs++pxpPOWPOcRqnLtbP1Ofnn2+6ri0APQw9LcdA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=h90lD+ai; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="h90lD+ai"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C76B2C2BCB8
	for <ddprobe@lists.linux.dev>; Wed, 20 May 2026 07:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779262833;
	bh=uL5DrMhUxaGJClE6Ytit4USkmzUOxMt+SZoDQFU+5L4=;
	h=To:Subject:From:Date:From;
	b=h90lD+aiHtCswD67oXaAhIPsxYiL6ITz/QzX9n24S9Yfrh/XV7JJDLvB6xk7yLePF
	 KBJjY8aRoL5QgyQMIYvlt5AYEuMFApjdYmP+RkXeQm5cv1LGKk92WtxADZiZTTZjfs
	 wkzGI1OXmVPcvgKJwgEvTq+jYO8ef9g+JjoymEGRcHAQo2w0JVG4jMkkx9Baz/r3Hl
	 YoXsDJdFWywcUoXouUgKl9CwZArXDynIX7NXT/lBis+LJo8l3tB66C0Ureca94bOsj
	 Fdx/+dynFWB1Eq7bgW6JU6Jj2SWTvmV9docM7sEQlIxj42T+3LDN8wNHsgSuKZKeat
	 RQHsKtjghWpEw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC2B0CD4F5E
	for <ddprobe@lists.linux.dev>; Wed, 20 May 2026 07:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177926283369.17200.12806788586003438317.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c24621dd9f19429b21af793274ab03c8d2324cd08a9f6e81f8c4235819909210
Date: Wed, 20 May 2026 07:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779262833
