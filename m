Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0815B40DFA4
	for <ddprobe@lists.linux.dev>; Sat, 28 Mar 2026 00:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774656894; cv=none; b=Z7wpLkVeqLVbkye7acpf4VCyIZlaCt5UxY8DaPegJv+xeK83tVnTd+SS94Ha/VUXkcSR1iiMH3C1xAh40yxBJOH9boPg8l53Wxr+q7KJrXcG8ZyUqBakV+/GUFz/o0jysHtFYxQV9AQlrM0C/Tch+d0VKh4rtiK6/w+g/QoxGLU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774656894; c=relaxed/simple;
	bh=Y+oSjP/lMkBYCoK2pIIw1Jij8NC7jcrqYdXwqifvzhM=;
	h=To:Subject:From:Message-Id:Date; b=Fcku8VCy1hCbhgn9xtxZ0exB9MdkK0UjE8rafonUWw/EWWNzUdN542H6Gh2CQ2MQPUjha97feuyFX0PVA+ypN44FL5h2fUzCdX4KGZ1dJSI9zhWP2KN3Di5qqvbtqJ+tfzE7cR/JmmGPL9xEOHdKMoUct9Y2znmsEzkZ9+gO5JY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vLPA8l87; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vLPA8l87"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF4CDC19423
	for <ddprobe@lists.linux.dev>; Sat, 28 Mar 2026 00:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774656893;
	bh=Y+oSjP/lMkBYCoK2pIIw1Jij8NC7jcrqYdXwqifvzhM=;
	h=To:Subject:From:Date:From;
	b=vLPA8l87KO/NXuzd4RGHkZyWS0oKRqwW9p5vH01VxhrD8ikPWlRRW7O8CtD9hRa38
	 kk0jrLfTSnyN8Pzp/XIrwLtTRQf4Wpeuu/kpmUnbHrMfPzGYdvMKXYxInKf8tjXO77
	 1EdWR8mTOyKRdtkmiQ/bG1JqaMiuA8Lz2RM0YZKfgoXu/EFqYPaNo97cj6tpcRkXjT
	 ds1omqbOMxTVF4HVNuh/ZYBm62zGoVsFOLPK/WISQv1aAQC5E9UNpr7c9U1guhsU1Q
	 4iyXGpeORq2Vmpd3jbbqnj39KqE8/U/j5Y/OlMUdsOn8D0BF0vARwCj69H8bV6cKma
	 O4efQCuY8ZkSA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9DBDF10BA434
	for <ddprobe@lists.linux.dev>; Sat, 28 Mar 2026 00:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177465689363.15106.5393020087382118613.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 24ba951b56f26e17c687fa7f60a289549b55a53435c0af3e543040c70bc95079
Date: Sat, 28 Mar 2026 00:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774656893
