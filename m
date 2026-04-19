Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39C7D1A3154
	for <ddprobe@lists.linux.dev>; Sun, 19 Apr 2026 11:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776596854; cv=none; b=R9rYJtXbkJnFb0mllKAeammOMhczlX4SGDcJ7gzK7BTaJp0QU+tYh+81Q3XWsEKyVebXEfRyEXxC7mlZcfJt3xG1NUme9Byqt/ytECbZsWhyg/kmV/5tJ6z2XsZkYso0jS5pMInpdbTA5CfSP6GFUJ8Y1TvcrGNjo8TdrBXkyfc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776596854; c=relaxed/simple;
	bh=nikX1snTXNUa21mSFry+hEbJTiZqagqBw52v6n7i4xw=;
	h=To:Subject:From:Message-Id:Date; b=IMgSFGkqvN/MXFXR8qjOnMt7DUooAGCjCsnicUL0QyFoTvPZYZyXgtiraW3azcbmGY9tJVhPpVKktdcD5Oc5M0vyJ2I3WYC09z8uHIvExKN5Bbwp3elXgt6ttUH1+oYjHIBwuHLCrlh3SXxXS1z34PgaYXTxL/gvW9R33EhV1kU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=M5/9ilAD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="M5/9ilAD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BE110C2BCB3
	for <ddprobe@lists.linux.dev>; Sun, 19 Apr 2026 11:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776596853;
	bh=nikX1snTXNUa21mSFry+hEbJTiZqagqBw52v6n7i4xw=;
	h=To:Subject:From:Date:From;
	b=M5/9ilADBBSY2P8N1a8z19tjRspTHM+IYXKA4LyrS3cgvP2ntWg/rZ/IDmH1xX8dk
	 GGfTKBpwt6h7ykwCAjZb1TSiErdZnkeJDYN+Y+dmhKRzEyKnP+A2J6ryQQ+aPlVpVU
	 52bd1CVCkGCDJnVsfV7jnwcNVulQ3FN/LJd4a6+CaHbLDmcjdQjEsHknGYxekjpZR8
	 w3yTsbot6FnMi03aMRm+V4FnPDTJJn/AGs2lXeaTCoAyQHPpL78sLYcIu/QeqzV2fl
	 sQGuRT4Jz5AxvI3T1HdDXRI6V/SKJ+EpNMdyQalr831lr7GwTMxJ5hfjFWRr8XpoRj
	 MV0DK8tNMdneQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABE85EA7199
	for <ddprobe@lists.linux.dev>; Sun, 19 Apr 2026 11:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177659685368.9075.10092470880193513623.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 61f9fb4508dbffd48ccf4894fd8640614e3377aabfe3949623f100161aa9aab8
Date: Sun, 19 Apr 2026 11:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776596853
