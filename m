Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 089D31527B4
	for <ddprobe@lists.linux.dev>; Sun, 26 Oct 2025 13:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761485994; cv=none; b=Cc6a76ZTdoaKxVfytUA1U3VW66tNcP4JxMXv7qZtKUTsjo7F4dI913w5TkbhbXWv2vmqObFwT9GCgzTK+X0AIt+JXP2uH5rTMNpUFnI7DJm5ii+FLEpQOqdDg0hu44BRCTC77XBhg1lFkNxtckheNWAGv9Hvwcilphz61eodp2c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761485994; c=relaxed/simple;
	bh=eF8p9CH0L6DZXL2jYjog7RJXktJjWX/y+Ph5PfdaZoM=;
	h=To:Subject:From:Message-Id:Date; b=WDD4spwiFi2a86D7htiF1pFH+LfoWIUfjq+dq4Q9pRO5j0i0kGCYF779QT8s5BwRGBagZYfSr03jdz6iVachFwh0P9yphHxO+PNTEjOL6PxTpkNEMbaXTdWQpC5o4tceBg3lWD88XYRq/7NSpuuxengB6QioMvXJBk4rfjAx9wY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nQsGGftg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nQsGGftg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 97DF3C4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 26 Oct 2025 13:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761485993;
	bh=eF8p9CH0L6DZXL2jYjog7RJXktJjWX/y+Ph5PfdaZoM=;
	h=To:Subject:From:Date:From;
	b=nQsGGftgLbYPkxWbOO39ClKu1pAm7hpIx3OQlSYnsFE0rJ2oaX+pKitZ88pB6ooI9
	 UcNrd6daPFpaKhnNj8QHjNm7TjmWKJgTOTqMNu20AFNg4kaOqbP/VMDZs/+Jty4ugb
	 uZy8GxGrNw2Gml41A2xFnxdZhOFAYbM8tIAtRzJCK3NIyAYxj0rGHxr9GRzhwSm9ex
	 zgtyKDPd5WqAbnHQquu5BvujbTEt4WFReqy1YLmXQC1WnB3dhohxgI64ivxEJ27Fe1
	 ofYDon2kCbIa5k4zpw9zyaQ68aR0VtCrXxdGHqysb+qEPYpSN9nPKiCX305qJzylNP
	 AkPU1sGRrAiVA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F0DBCCF9E5
	for <ddprobe@lists.linux.dev>; Sun, 26 Oct 2025 13:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176148599357.16552.726832798671300680.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 802b11fc9ada43b8130d230f2fc4988983699c8d250385caa59161380a052e9a
Date: Sun, 26 Oct 2025 13:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761485993
