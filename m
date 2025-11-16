Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3256E7494
	for <ddprobe@lists.linux.dev>; Sun, 16 Nov 2025 00:00:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763251254; cv=none; b=ZnEv72sQIckecj1dTEjpL+k2rD0b91topTw2sDNPup0AbrMeF13WCAPGiLOwdZZjRBNB78Ea8twDNdlgMGR6LbY7PCTtDVTM7nqTIiS85bkMUGNOF7CINCBRw3pPXhqeRM/Sq5QyIM3WW6pmOpMcNBaP7EzjemqHDOcDUTz/oGA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763251254; c=relaxed/simple;
	bh=/j0lhRGWh50RP45PuPkbTVx/tNjMbExo7ev/Dxqj6B0=;
	h=To:Subject:From:Message-Id:Date; b=Xwibas3UrGni/N34FVIVQ3Oi076b4g7+sPfAuB6yv4Xh88ghn5S+YhIcOxda9fETwUJvRM+uwR9B7aOWXVb9/UbTwHO7eY6JjyTzgXuXNJsvEEV1X8fJQT0ow554k28QSiIe3n+aGDFrBwbcmhe4p5qGMi4p2nG1pTzPZvD7aQw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qreEX7Nz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qreEX7Nz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8D78C113D0
	for <ddprobe@lists.linux.dev>; Sun, 16 Nov 2025 00:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763251253;
	bh=/j0lhRGWh50RP45PuPkbTVx/tNjMbExo7ev/Dxqj6B0=;
	h=To:Subject:From:Date:From;
	b=qreEX7NzkxAiSyjJSfU5dVM4iOzr3yb1WEWip7QGgUw348TIulIhVZyoaLJiBdNtk
	 cI9rPl65X8Sy2BfclgOOn6njPWHcfxN0q7IOQ60BOzAhBlxda4u5OM5Q9O+cqXCd16
	 jyR1g1bzCw8IWsplIKxo1JIGfrXUyegz4hm46olxY6syB/az9GqXL91XWh8mcYjeIk
	 I4zA7dD29W5EsG/uwB8NCFM6GHXv1mQD7MvZAWbhkpScvyfIum9jbbKsA6Tua6SERs
	 OsLqd+84TYgJV002Vg8ZU0AVqeI+k9XXfOVwOTaDEUI19NP5ckG92DAYStWqko01Jl
	 5qGYh3MfcKF+g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99615CEBF87
	for <ddprobe@lists.linux.dev>; Sun, 16 Nov 2025 00:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176325125358.6470.1953962413745887293.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7df6d58c8a2200332cef62d7e1990d2e0cb447d5265e507cd2e2e0a7112b0017
Date: Sun, 16 Nov 2025 00:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763251253
