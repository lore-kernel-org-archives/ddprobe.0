Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25CEC1F866B
	for <ddprobe@lists.linux.dev>; Mon,  5 May 2025 12:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746447594; cv=none; b=b4Y4+6ADhJRbFBQl3kXA9CvfdYtJm0becy3MtgVzIkEKFtspZXNqI7DQRIz0MJ/5IGb0K2m1J/F4b5dVxh92HiRQ+R7YJ9CymHryj/IlqUMS/BMOw2/K1M3oXddT+NbAiFpooXMp0988fc/ME0qRy5FOnGmlV8xhPStXzc5n9IQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746447594; c=relaxed/simple;
	bh=eQMaM5ByUk74NyM06vGWg5gc0fLuWMZAT0CJY2eI5S0=;
	h=To:Subject:From:Message-Id:Date; b=CkvjWfytgQO1nn4J2pttUweNw9y48dUHMsabQ4QHDhb2gNyA4fV7cNyM5O4dHNNRIWmRA6MWjYIST3G9xcM5TsXbn4hV8aY3hp339ZC0lxU2KRGWzwsj3/Gy0JwS17WakDWZHvbCa+Ws961kbq6+JVnzS33f8XN4yRAicum19eQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=etsZo65f; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="etsZo65f"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DA75C4CEE4
	for <ddprobe@lists.linux.dev>; Mon,  5 May 2025 12:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746447593;
	bh=eQMaM5ByUk74NyM06vGWg5gc0fLuWMZAT0CJY2eI5S0=;
	h=To:Subject:From:Date:From;
	b=etsZo65fdjXMgoloyqOVuHFSVb9PdPhuQ6EUWnUZY4VTbpAL37RhQsPpDkACKvHLX
	 N1eiP3A1oJOeG4jUAzhrqU+X3Cx+KXkI1P16WzwXLx6fGROy9v0ZP6o4Pwl+UmWUXK
	 zigcDRzvrbzD8dJ0I4diCQVDlDE+yd4heMKfEkQe40iTaI+6LhCtPzDNJUH/GL8IrH
	 Al4MMerYdJJj8eDPQKX654MDf48Q9cPGLuy18RWYqXMhkXoU5Zb0tXy+aTu8y+AILr
	 xHur/rQ/9pIee0fWkqeOaRGEWmto2Vrw04IdeP4EcES8WFEWGF89MSWNuQSo91s0DE
	 XeVkqOXJFXGXw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F751C3ABB6
	for <ddprobe@lists.linux.dev>; Mon,  5 May 2025 12:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174644759357.6833.14956075029624904796.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 013e543a84ab758d0f46fb90e9f517be71cc62bc32514415ddf358bc16af97dc
Date: Mon, 05 May 2025 12:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746447593
