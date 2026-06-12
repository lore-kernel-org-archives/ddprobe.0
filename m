Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F88B175A8B
	for <ddprobe@lists.linux.dev>; Fri, 12 Jun 2026 07:56:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781250994; cv=none; b=YVXsP2zG0XB56gXOnKiF7amLdcX3xDQQ4uJ4DURO2K/LKj30AZyyE3/4/5ScLGVC61NAiie5urof2pJ8AoHdXKHB2RjyHB8Nmu60hAgsz0lS3FJzeizVqPL6gRlZeqZBnSKFq9xD7r0JjNRBn6Yoiyu9PwJ13gejW8paJA6Xdqk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781250994; c=relaxed/simple;
	bh=OhooACMupwgHhAicFeLJ0nsPBrNdbyAdHhD5U3vtZHc=;
	h=To:Subject:From:Message-Id:Date; b=hSzK6liFVtv05tsTnkZTdmLHMTBI8giLQdRDvPlZro+H/uQPZcu58fZYsUAZkCvDERQdPGinQp6hz9HnYVY89N3Or/uBx/AKLuWY0/kRQ9QAbwAJSMrZnv6m59hItfIoYY2Dz+lvNqADy8v1XwW+QWlYOvfiZNx3GiIxxG3cPl4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Te+Qx+EV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Te+Qx+EV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2CA4C2BCB4
	for <ddprobe@lists.linux.dev>; Fri, 12 Jun 2026 07:56:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781250993;
	bh=OhooACMupwgHhAicFeLJ0nsPBrNdbyAdHhD5U3vtZHc=;
	h=To:Subject:From:Date:From;
	b=Te+Qx+EVPvTMnBD0EgY4h3uR4lGXlpBXgaY7U7JFXX9WjNoBJV9hh9iUOO0JS68Pq
	 ywnbNmtHl4e5sKdMOAJuY/c0GgssChpv26APby2vtjcl+a3b4RWsOiD3Sa8WKSvP3+
	 4qpmhTbD+G+uLxJvCLgppULvFQmLNxISBKMkOL+H82MqhiPZrzClC9dD4rSKF4PTN9
	 yvRy0hy9y9PhxgTrLpMyZa/MBFV9REFabpzlNQxikDCaMcXMmus8PL3/mCFYEdxNjZ
	 C6z0B5iVZriKYii28ap1/Szp3NG98bZXLIWaN8d/27ERhcwJmxAeBO3JD98Ehzub/U
	 JWBwK4zh/6dSg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9263CD4F2C
	for <ddprobe@lists.linux.dev>; Fri, 12 Jun 2026 07:56:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178125099368.4731.10645001951687640030.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2deafc3c0ef924e614ff561eae825656399b83f70bf548c432bdc556b3334fb5
Date: Fri, 12 Jun 2026 07:56:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781250993
