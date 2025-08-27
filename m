Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 329BF2D9ED0
	for <ddprobe@lists.linux.dev>; Wed, 27 Aug 2025 18:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756318794; cv=none; b=hx9uTRIJvE2vdx011T0+55M0RnZh33oLm1y99Kvxhw3L9gXMfhRialoctvc9MF8Z6sb9jDfPtFhOCVAityx7GaBHb9aMTeYEYDlORfUC7VRKOQkl6V/KHfmg9UjcIRgrrUWMytCn1YSuvlj2zNNL2ckZIHAsyWUfSOoNw/9sgnE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756318794; c=relaxed/simple;
	bh=6VLGQYvSOr2EJSGrL/+yVFRD+z1PX3gfP4qxHcXuJGM=;
	h=To:Subject:From:Message-Id:Date; b=IK8Mbh1ebXnwQlQkmZfqt/jIYVNECnuGSwC1WOUKOLgzEkKMcLLfSEsg2DYost2xhN0PUAhcqpJsevV0taSEzy82KBdO+W+ZoEFtOECrxdnDDe/GDJ5eFUqtg5/ihMt+eIsKby3NrE3iBdLdo8GJT0GaQvcFgpj5d7GZ58NamK4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TzUqBhmz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TzUqBhmz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5653C4CEF0
	for <ddprobe@lists.linux.dev>; Wed, 27 Aug 2025 18:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756318793;
	bh=6VLGQYvSOr2EJSGrL/+yVFRD+z1PX3gfP4qxHcXuJGM=;
	h=To:Subject:From:Date:From;
	b=TzUqBhmz4OaDFHUkR829Mat/tAjlkFoYGfnwGjaWTxUBIJ/7uhftXF2/QFNO7jhS3
	 Wp/NAH5kQJCYslFgDNWIz1jme3qAMjN1Z/zW3HBVZdoprJy+or9v0QUzru4fZWP5he
	 ltk8PSnF9SYkPhbvdi8Xw61qk3pI8+dhG28FT9NkZBidW54EJfi6LsFOZ7RliCP6FZ
	 Bvv6RH5N1KPodRHJdY0l1xN2sOCaYODGv3MWFrXMO48Amgzvjff085jfNyS7LgZV4r
	 7rvpC7tE7ipKRj9XdFyiyuWnNUNmnQsluShbiAAH4uGyzdcYfK7nuUTnemiAmX40EY
	 yhatP073BXfgg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 951CCCA0EFF
	for <ddprobe@lists.linux.dev>; Wed, 27 Aug 2025 18:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175631879357.23479.5783183527422630265.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 21512a28596d958a40953366a6c7910a22d86a27f4c722ab5e25f9db1a462a13
Date: Wed, 27 Aug 2025 18:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756318793
