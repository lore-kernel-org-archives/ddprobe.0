Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41D4033E7
	for <ddprobe@lists.linux.dev>; Sat, 29 Mar 2025 04:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743223194; cv=none; b=UwvoJjOKs3ysZYNVaGSa3a0u94I8PlQ+PFjgKxMtkO6M8gKQGi/DJo460Dv42j1f/zRWh4H1wcwttZqUCVtNbIcnnbIx4PAQaZ5Xp6y5HUqRzRHuUt64YylivmE7rpyRbd/vIiWBlUCQZIvMGmkg3NnikY8Ugyw6qsqYIN50PbY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743223194; c=relaxed/simple;
	bh=jVCXwSNWxb3Nmv5++dHeClOYt+kqg/eYfpN6cp1gyQE=;
	h=To:Subject:From:Message-Id:Date; b=EIwKHiX3sQmjspTwgf2dpOY+m+JWhAJLRegpiM0Ycdi0J2tEuumDF1joyk4xmufi3j44RE7P0MWF2cjU/reGrd9ALLbZOxoN5fx8fJiLgUtYgzAo/FKfc0LASS2ouxBTwe1InittEAGzUWMiUUqB2VrdYjpjUfwYFAuCbaWthgc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=B8xYwau6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="B8xYwau6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7F72C4CEE2
	for <ddprobe@lists.linux.dev>; Sat, 29 Mar 2025 04:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743223193;
	bh=jVCXwSNWxb3Nmv5++dHeClOYt+kqg/eYfpN6cp1gyQE=;
	h=To:Subject:From:Date:From;
	b=B8xYwau6xRw7Tk2CYgDjND4W+l5gxLEHmlFdiltUMXn9MFqJLDzWlWkE3A+4XISk2
	 FsSw9BsF7Ij3auSVQfe5cYv0POPfQkbx6cOns/EfZmSKMO7quBU/prhamWqBuUmAfk
	 b/zfr18reZCst0pDkBb6vgjic49qScm9QiZmkdD6W0z/24xtdWabbBP3iTm52vLgTZ
	 E/BceSsJOtnl7kJOBAeJNVJ2jBnC210i3qzozs+9RwUqSuHit8BJ1H7DuzLB0XMxC/
	 Zvwe2zQEk5yCq+G0pBLkmC5bgIy8Gn7OQgtben7Y/wpSrSWf1jj9NgQwlMViRfuB/L
	 IQi1q+YPfPrOQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E6C2C36008
	for <ddprobe@lists.linux.dev>; Sat, 29 Mar 2025 04:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174322319362.7852.1779480517240801620.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0d495d7fff103462877dd8558f746e17b456700ab751e83eb8c2f0f59212ee42
Date: Sat, 29 Mar 2025 04:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743223193
