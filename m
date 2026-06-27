Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5735B3016F5
	for <ddprobe@lists.linux.dev>; Sat, 27 Jun 2026 08:28:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782548914; cv=none; b=QOn+Ftmj8B8wS00ouSykQ4HuIxAC6pnvEOmgKkTQ8tidOTLWu0H4Ged/oByepO0+vemw/C4hnL9yyoUMLYe0tHlpYt76pXpX9hAI6x1Oets3qkJPMx1BTbB0sm7sJVRofzOUWYaGKP5LwTYiNUAMHKWBsygXe33MqHA4/P/P7pg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782548914; c=relaxed/simple;
	bh=QSMut9km3qPDqSc02oA447opV5sckve49mD7CfBN4rg=;
	h=To:Subject:From:Message-Id:Date; b=EL4UMWAMH7iFmOa/MAoa9CljWkU3RdWqcYYvA5TEbKWMYJuB87DsIxfYERdBOtKxnpyt0hNlkdcSC1nNyc0uHZsqj9Ob1KGP0joJu8UHssAbd44qDWP4v6TuKInXqEZ6xtj1YLKX3ysxYhAzvGcn1VNhbWKcevbAySN+diX+oRk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pxfzSYa7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pxfzSYa7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF9ECC2BCB3
	for <ddprobe@lists.linux.dev>; Sat, 27 Jun 2026 08:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782548913;
	bh=QSMut9km3qPDqSc02oA447opV5sckve49mD7CfBN4rg=;
	h=To:Subject:From:Date:From;
	b=pxfzSYa7jEbkwwkElBbPYD/WI4kv+INd3uiGVR1IQ1bNpjcXNUECj+CdO3q8qC+qW
	 w9gb1pefOs1PI9bQjUQ/YsxysvsgnEcjEWrxQ6GNuzxyeGCGG9V7kjCFWB83Uvrk+u
	 RAqVG96Hn8C1r/3lTRTdMZc2HKsGlhK4/b09O79kfKDUmCtL5GY5P1THXCXw+WOR+M
	 byhCigRdIHmdAn+IjpK0IesbjVJo6DY2lGVkpobkxwT6dfZ43cpF/TraJm6KTQPs+7
	 lMhRQgUXYC1GW9Sv8jNnqDPFMdLvwACJUbESXcsyjT7dXAY5T4lHMNAA2UDGmbdQ7u
	 2Ms3OWLzitKKg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0C4BC43458
	for <ddprobe@lists.linux.dev>; Sat, 27 Jun 2026 08:28:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178254891368.21161.16088360412805132567.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dd93f2ce7642c0034effc4fbc67276d677419990e584da4237535f9ca8e5cf8e
Date: Sat, 27 Jun 2026 08:28:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782548913
