Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 44A70481A3
	for <ddprobe@lists.linux.dev>; Sun, 25 May 2025 16:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748191194; cv=none; b=B16IjnDbIq/MMYzakmFl0UpBuWNS2DtscmOI0eZGAArtY8UdLBLjaq0Edgxdp1jMSOfC8rxxo/wp2bL9Q/QuR263TFp4JjtOKJp7ceHUnXGqTqmS4F792A+VnYgsMirSk91vK/txZPBbySLtm1WqIVi1RoIt9sn98UjKqaduqZE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748191194; c=relaxed/simple;
	bh=YbtoR6rcRcM5S4hlmM4YbY3wJOPzvrhgWwR+KPEqcso=;
	h=To:Subject:From:Message-Id:Date; b=b2X8P+cYvCHIen4WIIzxhk5/xp3GfrNd2bP7X3KfWmQbQAMpv0VV0Jf3ZVUFMzq7ddGueM1EK8gE9e5lqTVkD2ZRo4oq9hjyxZ9LHEbIoppB5YBM4ZpghXvdSDSrULI4WGTpnPPSbHJpv+AjnQ3cBWlRwXU1pJ+s99DlF2KJzfU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kFHzZFmr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kFHzZFmr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B42A5C4CEEA
	for <ddprobe@lists.linux.dev>; Sun, 25 May 2025 16:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748191193;
	bh=YbtoR6rcRcM5S4hlmM4YbY3wJOPzvrhgWwR+KPEqcso=;
	h=To:Subject:From:Date:From;
	b=kFHzZFmrsv7qIRgacWeMw/jx9w5C3kLZrx2qeyw24Clz0KIlIRGA7xAP9Oe9TKUaL
	 MToI6tZhOPPgk0uUnmoZn+ycd/kCq3yFmGSu4sRPqsNWh+uVn1ca5f2amNBdrDQUfh
	 TpVjk2Q7n10ad7hT/gdmGXg5he0kkNtOJVh3fnTOVjN09J4BFGH48G+tzGDRuXzm5R
	 ixDW0soefSqFXZo/ucmqOqWoWqmAah3nodQScf3of+U2250Yv7U0IcP7cHy09bUaz/
	 YQv96mMbDVpFBV1+QcgqSEEjpG3ScyQsiNZH/tRwZ18KMbf4D5K3G1fr49ScNTC0Vo
	 +KLe+oXm/EEGg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98DDAC54E90
	for <ddprobe@lists.linux.dev>; Sun, 25 May 2025 16:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174819119360.21066.8666014740433164178.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 700a9913ed6ccb34b6c7ece01e8048d345541f2cadbda2557d57cb900da9393b
Date: Sun, 25 May 2025 16:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748191193
