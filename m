Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DD57F2D94AF
	for <ddprobe@lists.linux.dev>; Tue, 14 Apr 2026 17:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776189453; cv=none; b=ISZp6AlL5QpC3ud9pZcDn33snc0e4u6AW89vRlCmvPg7xpF5VVtq2DjEHq401V3jaxjL+73P/cpce7xJPg6ftF+C0B1Ps4DoWW8PrGaJXioO7OV8mS3Cn8BRjStRFqduIYMbkNgXX0xajbu3/WZyoYAoR0U2J7fZg3AhFTOGcT0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776189453; c=relaxed/simple;
	bh=uColPNZw7g2r7jDIf45TuseofdCYs7H2ITXUoalr+rk=;
	h=To:Subject:From:Message-Id:Date; b=ezShPQmOBoV7TmN+7eYP6rWqg9tnddFIKU6QVxuGxMjhOmq8yKORFROZchdypaAIwcprP1eYErFtFbxLHcAK5ixfnqDEmsw4+hFJ8ChmCoOEAIs9aMgceqzkHRMlKp+QRM4rjlZ5iFgOVayMKUsf2B9WGTdYpIg3SlgT0HZaOt4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ORXVWyl2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ORXVWyl2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1140C2BCB5
	for <ddprobe@lists.linux.dev>; Tue, 14 Apr 2026 17:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776189453;
	bh=uColPNZw7g2r7jDIf45TuseofdCYs7H2ITXUoalr+rk=;
	h=To:Subject:From:Date:From;
	b=ORXVWyl2u6Sb++wgP5vXTWwPFiCWyznTMGQJRqA3Is1qUJpNxnSRsPYBL1yIuR+WR
	 xg4iD7g5nYMrX+DlG7oyHbmL+lT8IJJ+Uz5ySj6QJ6h1NvMwKceCpWRJN8n/9YXbL6
	 c45gWsDpdW8aJdLFwcsBnkhgo6u7gswXfxbsvvaovRse/SrSCUfsvHiani9/19B3bD
	 E4NgDqdlA/zD1770N/7JBJj4HrZOBCd+i/U8VlXR61wOK0+H6yrtN3VingqSZ6fpVX
	 tewPloj/76O03Ja9c7uVWpOK4U0zO9mGRlcMTWvuTarslvlm3PAaBoITGu0xGkGXzZ
	 1Gi6QJiPN6g9Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B15DBF9D0EC
	for <ddprobe@lists.linux.dev>; Tue, 14 Apr 2026 17:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177618945371.5782.13917732835683118913.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4b5ec47c30d603a31aa029a954d8b4cb20302477e16916abbd76191bafd379d7
Date: Tue, 14 Apr 2026 17:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776189453
