Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37DC712C7FD
	for <ddprobe@lists.linux.dev>; Thu, 27 Mar 2025 15:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743089994; cv=none; b=LZusBTSRVL2sTA+5P/kOdgZhwPt8AsdiXOW958Aop27t6xpp5eppXCwjw+Lx70xaag2OJ5nmEBLOJtd8d3LTnWhLGjJUAq7+mQ9HRq9CXrCWfoHdVaEDfBqr3i4icRlVcYrFmZVjRK2a6XhJaStbNU1ZY63lHiKd9S/X2DLqByg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743089994; c=relaxed/simple;
	bh=dtWestoceUJ9yuLI1ewY0vj7xI8pdBkrQQlTw9UV5NM=;
	h=To:Subject:From:Message-Id:Date; b=McH3CjHTygvOCJv2HYl+IWN+3oixkchOILmeNiQFiSDday1Zjx+xPIwsjRhZgDzBMe7A5Fbd7VM6/pjamDzB8bm4+ipS8WVRAl0GZJq9OfAPR6lo92CEj9qwJU6mQ2xY/Gdo6c06wGOj2I51mEzS+aX1jKjGJJcYJ+XpaOUZBmE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=T3VK+VFr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="T3VK+VFr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8D0EC4CEDD
	for <ddprobe@lists.linux.dev>; Thu, 27 Mar 2025 15:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743089993;
	bh=dtWestoceUJ9yuLI1ewY0vj7xI8pdBkrQQlTw9UV5NM=;
	h=To:Subject:From:Date:From;
	b=T3VK+VFrL+MAVJ9wXq467LDQ+WqPZkKd6jEhTs/8n+Lxgqbr2xL9F86YdWbAGjH6g
	 j/FbppbuldLnGOFebmQsg8BuQxy4BveDS4PUeKh4SjDWqbbGGgcc6meeGm39ltWVVx
	 WpuE4Ec2nM393ycSIZRQ3qRJxe0CNWxrANT7tdVG8OMuYr6sJvuDa3X7WxpGWzaQfP
	 TWezsS3YV50SlK2KsaX8xTWg6TWI/opTwWkUQKQyQvNiuN5ZHJBas73Hw50qyj7Uvv
	 hrAuaZkEfwqEIJoyoYJQAUCK/GDo3zXNuuL+qiYQ8tbeYiC47z1fI90Qtl0ixddDF9
	 5GBKfNw2deczw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97D6FC3600B
	for <ddprobe@lists.linux.dev>; Thu, 27 Mar 2025 15:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174308999360.15159.219931103190675112.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fa416abd801caca652b8fd9642f9d86e958c483e79687657b6a9e510ba44001b
Date: Thu, 27 Mar 2025 15:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743089993
