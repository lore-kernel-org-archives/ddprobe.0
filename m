Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D0CB51ACECD
	for <ddprobe@lists.linux.dev>; Mon, 14 Apr 2025 07:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744616993; cv=none; b=uANXw6rsk7OIsQDWwQIGfuJNvcNXkbxwtnPowTSfJKnswLxMR2IEF8A+mkrz+qq8aUBSl29GEXgwJ0IvfLm5pHzNRHAM2e0L+AH+9+drX5R2OTEhtWeGeqzmgmm4cYpUGzIUnAc7Ct3jNeiNmA9jb9CmSgIqf++8Dj/SI5dA4YU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744616993; c=relaxed/simple;
	bh=Duv+iNkN+Y+BfvJHacX3XdlPqgWUazu7uAORYWCu5Qc=;
	h=To:Subject:From:Message-Id:Date; b=JZEIIaVnAI/mPLvrAfs8GFu9saUW0TZr7lR2uQ8zhRA9gQ2tKvXpJ7AJFXGfNz0fbzqh2xCIinM7KejdR/odRU837GBY6jwRQWP03lYTgor5xqzcLIF0V1SOZZRzWybY5+7G2ITBNUJLYZjYqHvgItX1Q0amtxEv7MDTGi009Hs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JrXsnIUx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JrXsnIUx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5511C4CEEA
	for <ddprobe@lists.linux.dev>; Mon, 14 Apr 2025 07:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744616993;
	bh=Duv+iNkN+Y+BfvJHacX3XdlPqgWUazu7uAORYWCu5Qc=;
	h=To:Subject:From:Date:From;
	b=JrXsnIUxfL6sIYyFx7DuBBN11yKLfszjO+Z2bcvISvKp/XQKdAcTZ5EbdaXq/MKjR
	 oxPiNkQkE1gbN+/JnwerhH6BqVcI2tQuF8gz17m19H1QILMdBl0R/cJTSwPaTqC7fb
	 qdPqRBcZvFSMvPor7tovPk+9RJX7YoYThRpDpeTRfVjFf2adpcags19AW1bjUfnjIm
	 f9NZQN8/JIYyNZGiYNZ9oOw2/QZ0e4xpktIVcT51Ff8MX/84tGMX7IQ1HLS9DTcgz2
	 1CTWfceL/FTbrXKhWD2bSiwA2VkceUsW8CY4UhjxJF9UdnSnrs3sZ7Ec5aulzCi2YB
	 1fgONvVHoeM/g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91D22C369B4
	for <ddprobe@lists.linux.dev>; Mon, 14 Apr 2025 07:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174461699358.2506.6212919865691079861.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 042bbae8d2b677ac75bd61bb88d66e9e76add53326a5b117417237d7fcbd27cd
Date: Mon, 14 Apr 2025 07:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744616993
