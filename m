Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4957F3FBEBA
	for <ddprobe@lists.linux.dev>; Fri, 27 Mar 2026 18:24:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774635894; cv=none; b=qagA2aWKai1+HtMr0klpGNk8TdFJ0qL1MirbW6bwPowGvC+IZMKuQAXVc16JVf7TNgTA6BeXMu5SJEDzhGp7dzcmFd6ReJL+y+ZUjv2hPeKgI2nA2uplthPkU/6/x/Jextk64jnn1YkgBE/sQUcmCNSAf8nDzGqFO1Ce0gZ2DCI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774635894; c=relaxed/simple;
	bh=wDs7LsMgDc6w2GUBcF7W6kxbM1escucIQtUx35KcBxk=;
	h=To:Subject:From:Message-Id:Date; b=EmJVuAssZEX7M4rIJt50+3kmSDqlCYHlk9HR72K0IdcYeo+WgpX5UOLP8Rk8onSc7Ou8c1dmR4VQj72c4dL76ySih/rhXNAOhrJBaQlFNuUX7xrpv2/sZORomDcxu7/NZXJMGOvSWkKM/kCEx+8DOdV0TY/HcogR5h+YmKYzhGs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qPvgE0Of; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qPvgE0Of"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B221CC19423
	for <ddprobe@lists.linux.dev>; Fri, 27 Mar 2026 18:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774635893;
	bh=wDs7LsMgDc6w2GUBcF7W6kxbM1escucIQtUx35KcBxk=;
	h=To:Subject:From:Date:From;
	b=qPvgE0OfsN5bjQ+3oL3z1O9dYcQHnOG4TQi9bRdg6H8rBiF0JoJM+cwh4vcHJnhEF
	 2vDYPljAPuCfYuCxXuyioBgHcgE1gGOR3Tc2JQCaCgqNbuORCFNYo2mGGBRXb5vaSD
	 /auxsjI3d2B4TwOmO+DKoq0AGTz/yy8jcM4JB2OqWZr2BJPk/5twV6/6RSKjqbj7fD
	 Jv5vv9hx7+Osx8Ha6SSlmlNYrgJiwqoGiISxhx40VotoySZG8hL9vqcGAtnKLWxL/1
	 YYLOzoY+aGgrNlxKsJPm5hJ5GNNW0iw2Kxbj/JX9IzjgnceqrELg9k5V/R9HDeuvTq
	 aQ1GSHeB8embA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A16D710F2865
	for <ddprobe@lists.linux.dev>; Fri, 27 Mar 2026 18:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177463589362.22512.17496207367943465644.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 096875af82849f87bc9774f6df29aae2740a727d764efe4e21e5f43eb199ae23
Date: Fri, 27 Mar 2026 18:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774635893
