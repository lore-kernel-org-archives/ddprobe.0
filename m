Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DA29110FB
	for <ddprobe@lists.linux.dev>; Sun, 15 Jan 2023 11:21:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8EFE7C433EF
	for <ddprobe@lists.linux.dev>; Sun, 15 Jan 2023 11:21:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673781687;
	bh=kK9PCWtK+jcKqNrBM6WeWKoVPUwkixWd6BKU4wPaFSo=;
	h=To:Subject:From:Date:From;
	b=SHd471W8034RbovqtDE7HMhOwDBKBX0A3yCYJVpPPhscUIZGcwGtQp3hdhQ0SJ2JO
	 Jcv4wL9QA7spYKYBKeWyxnH/t2FBJctpllyXOyBfZ8aH40kF0FWkTNp2o5Vu3ZRQnl
	 fnIcvh1y8yNmtYD/5wJUkWexZe7ELDTBxV9ZFYOmL02km0xwcNDhH26TwlNY618Tkk
	 UEALYw0eE0FeTFbqU284h4JJ6zoOCvmP5oT8M7/9L1rFq+MCJF9gzPlnCZpcJhUJgb
	 o8mHJ46mTGORkDQKKSE7CSksHKqSLprPP4Bblq/YrFL5S6BKQFhWVPYlp9Kx3EfKWf
	 iyl7/2ML9Gcug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 747C4C46467
	for <ddprobe@lists.linux.dev>; Sun, 15 Jan 2023 11:21:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167378168746.2344.4830040335611150577.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4433aa5a6ba2d54eaca0294dcef835e0c9aebf6f5c58ecdbccd02ccad3ffaee7
Date: Sun, 15 Jan 2023 11:21:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673781687
