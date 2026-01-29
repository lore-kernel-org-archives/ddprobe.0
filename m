Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 15CB82EDD69
	for <ddprobe@lists.linux.dev>; Thu, 29 Jan 2026 18:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769711034; cv=none; b=VVod8Fzx+eDj1KC8ZGsbOY2dfJMu1a6NbRO2pOf8DU65kYetRapIA6Rv0VMTClDsIai7C9uXqTDFaOTCEnxH9kYFKgrG7SObLf+paGrsxmJOKJu7RUPesr0O2fU0NZjhDzMT9tezcw9PeX6i+GwdFdUoNCnzI7tjQKyp1JYQ6Ys=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769711034; c=relaxed/simple;
	bh=2AoO6W/vhb/OJKTic4LXGO6un3zxa0Y+hjNsyNxFkzI=;
	h=To:Subject:From:Message-Id:Date; b=IEwPWuPl13LrvIEI5n0PxLatUWUY8jo/suWdLww6glpnRRfxOWXWFdx9lfRGDaoHQFSXnH/1RDkKFedT0tTrK5i1tW4lJrv0Ffvj31L6POHWJreecBotJlBM6Ns6ztVRh2XuLBzL94iVufq2y64yLjLhLCtPJ6vDCDEw6sUSL6E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gf4xB42S; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gf4xB42S"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A007EC19422
	for <ddprobe@lists.linux.dev>; Thu, 29 Jan 2026 18:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769711033;
	bh=2AoO6W/vhb/OJKTic4LXGO6un3zxa0Y+hjNsyNxFkzI=;
	h=To:Subject:From:Date:From;
	b=gf4xB42SXszOQCJ7MtkjXUh2hencCPZx7BMLmBFtEoIoOFd34BnFL1ek/p3dOedpw
	 0QaXelD/zKrgtv2L4FnHXnvW8uVVrgSBxn0vAyPgQOt9bzTbgSTzJmGw8ApQYVrUfW
	 KxKAE6Q/dM2s3HPXU5Mzht83r5B5cuy2WW27i3ho9MLbuOMhiasYm1LHhBRAQakIiB
	 QqVIe6nw+8tdIsqGsgaLcbS5PWE+5iamwcGRdpfEQVJNGIkmIY0RVx6vXAgdCN7zBz
	 S/292HWi/DvXpXVj2i+6Umy1eo93UoKu2cRWTZEyYEu9uB/J9Jv1lU1hYypgx5QBJ7
	 X8LfFpO7GWCag==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EE75D73E80
	for <ddprobe@lists.linux.dev>; Thu, 29 Jan 2026 18:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176971103357.2089.9907213020115400645.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ec70d5e769595dc04ce3907b1d7253c1e64670524337eb82fa545340748659a4
Date: Thu, 29 Jan 2026 18:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769711033
