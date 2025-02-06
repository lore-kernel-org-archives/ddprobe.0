Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5B645236420
	for <ddprobe@lists.linux.dev>; Thu,  6 Feb 2025 14:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738852554; cv=none; b=pO9UaJk2U10nKvAPLiizjBbtXJcm5H6MgWXYXIj7eqpZ1BINfteLcu6s0EJaMASiWo/3ACej08L2ur0R8EmX6ZOkoOxOxZWXy2QEsCVv8XNhQAfRkfIIv4RzuLLXrwWivPbArrhMKzTF0PaZD5Om3omY/nzxmWaSnkpxPBn2W58=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738852554; c=relaxed/simple;
	bh=2M1WNbt1b2zISN/FjsqUMCkFbRO/Cfs08ixQmzRC004=;
	h=To:Subject:From:Message-Id:Date; b=LbhAMQNELkq6Zr8rU/TR8Zl+FLYGWuFu6J+6LDxCtXqWYxDjTI700MXRDLica9w3M9Dst3tLXCQsKKwyNUHnI3yp+4vpOi7GRob3dPR+hCaRm1sqeuOXNM8NibjpEyFYz8+PvJ4ER3YbQkThsaXRf2ODy00OKPk2FoLW53pC46Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GgBHDEHQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GgBHDEHQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C961EC4CEDD
	for <ddprobe@lists.linux.dev>; Thu,  6 Feb 2025 14:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738852553;
	bh=2M1WNbt1b2zISN/FjsqUMCkFbRO/Cfs08ixQmzRC004=;
	h=To:Subject:From:Date:From;
	b=GgBHDEHQjk2Sb6c8zic6gaDghvHsBcXw3cL6nodfo61JLHza51wFpuiUFgeoAqUud
	 afG/oJ3ikJdURVQP6wT1sFSQgDflY4qKlQG1XrwujVSuP3OBiPgxc1zOgMMNfSWbD5
	 cjMHnEA0hxtrJwWP+kUMnBSAPv83W66HEWjAjKAm3behrLQTSOn33D8Th3B44T+1BF
	 oOrAjQaLaUqx+Q7ebvSlI6DrXvHvCpiTdija585dn6W+BpHGfoFOOKtlqQDm7FXwmz
	 Pciz+SMwfDkn/pzyzjWzKeQOWqA9tR0zjDnAH4VhHIdOOfvfor/Y0h6hzYtKo2vVGa
	 eLqGOajmmFTgw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A60F8C02199
	for <ddprobe@lists.linux.dev>; Thu,  6 Feb 2025 14:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173885255365.20088.4114898707107251916.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d31e4a2f48c07ea3e5057703672f69b71d73e864a9f6e3d7881649feb8e73909
Date: Thu, 06 Feb 2025 14:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738852553
