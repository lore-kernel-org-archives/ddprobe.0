Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B2C31B81CA
	for <ddprobe@lists.linux.dev>; Sun, 19 Apr 2026 08:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776587854; cv=none; b=KliW5eP5zWHj72XrFLGQbFPjtRPHlXtbobhNNf7pL85JwgrmcOeNwXwASOiu3XD3j6qM3DJD/GhnO3ZHzbxXqadpB9mHfC+fE3W1esY0RKzhdsxdJ4pm7r620ohY1Fa4NTleCIH/d2hXZ9LKB0bsYoDWVsT4oXNxIASFF4P9Mr4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776587854; c=relaxed/simple;
	bh=wBhT8M1idueraUWpbLXlMCB6NFSWNiK3DVUj+sLGB9w=;
	h=To:Subject:From:Message-Id:Date; b=OPWd48Q+hi/Vj9bV6hSkatBd6YpT/SZfSr5arO80tUUX0ShC4i42vO+JwjzyoYf96ygsLeVd0EiPGZlSqvLs2ru1ObM7e0Mc1ggFRu0cKigAz9WU73aRyJTKx5DNRXjaU+S4qjVua5wB7Gjgqrx+0b4IZxRWRZS7KUGRK39qxfg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EoAhc4Vf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EoAhc4Vf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B6D94C2BCAF
	for <ddprobe@lists.linux.dev>; Sun, 19 Apr 2026 08:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776587853;
	bh=wBhT8M1idueraUWpbLXlMCB6NFSWNiK3DVUj+sLGB9w=;
	h=To:Subject:From:Date:From;
	b=EoAhc4VfkSRXmDMYIcT886c3NcIRvo+Wd36V/E1lGAWwALERFJ80aDr4eZe+Bc5F5
	 3K38IWUv3qE8KVQjCLuue8iFfyxigycLimoPWg3y94HZloWsg7zhE9Ni787Yp/mADi
	 gQ4PtgDsdc9L5lZYDGs25dTCVS2zFsYKRlaLZomAcCV6aFQLzmvyBakc17zUBrvIU+
	 3yfXEjPuXXovzKx9e+cZa4/jpjtUL+Y6Od25hvu1gvTbDCHxNN4bp9EbQR20A4rR/z
	 ltxLpPm5P6VytcF9agc2NpwVqtWTE9zQYcVimCZzGQYRKUssNW5+iZ70vkHUV7k3RG
	 Bvep8iQTTbo9g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A964EEA7188
	for <ddprobe@lists.linux.dev>; Sun, 19 Apr 2026 08:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177658785368.8714.10121151114451222547.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 193d6b29d262862a3bb25ff34051a8b040aae2a4d4e7deb17aeef1779badca88
Date: Sun, 19 Apr 2026 08:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776587853
