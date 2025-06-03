Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3980A27FD46
	for <ddprobe@lists.linux.dev>; Tue,  3 Jun 2025 09:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748941794; cv=none; b=m1HX3lw7g4iyQlRrzcZso8jF1kO54eQfrQy7/sZuog4/3PZ6V8ekx9990KdftpUpT5GkoKrpUzirusSxAFghSm3kA9Yh7eXxPStCWWKB/Z8KSSN/GYX9bdOqClh/9lFYEzWkSDWAdpvZCo4cDPXnHrey0PfbtCjfhccYz7LC8tA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748941794; c=relaxed/simple;
	bh=gSxub7jZgbDz4DbxhPW3jP04SUpSvXyxr0hlZcGl6RM=;
	h=To:Subject:From:Message-Id:Date; b=LedwPRhX/ZmjSOqYQpzHwLe0fcmF4RXHc5heI6p2MP8MGJ3A0C4x1QP368Xwxs2SI4gu+dij4tPL8ZhVyLhXbmTAwisZ1hTo4p04dhGFI879AwW0fbbIWkqvhzCZ79a6BSu1OoC1v4f5G7gTAJwZ/SgmV/Idi97+/hYYTT+SAcQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KGzKko2Q; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KGzKko2Q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9A67FC4CEEF
	for <ddprobe@lists.linux.dev>; Tue,  3 Jun 2025 09:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748941793;
	bh=gSxub7jZgbDz4DbxhPW3jP04SUpSvXyxr0hlZcGl6RM=;
	h=To:Subject:From:Date:From;
	b=KGzKko2Q/PDecRcCLfq8fpZ4JdLFI3WBqJ3GISzqBIxd5J5SQ4CT8FsxGyIDUKczC
	 akuEGEV1AQVAFeaIkFC3YcDy9rjCbxc9keuv+f1Xf4IK8ehdQjYV4u1o/yj4D9QKiz
	 2TngEPHNiozjXaPWORq0dzE03iCgrgW2WBz3Ov3CUz8Oj0VsZ1cIJd0pL4oX2mR4QQ
	 +FibtONjkkIaTf5urWz89z+DZHSMgdldQthk71gvb0MbQZunCFN1PyCDxfCbHQYkfC
	 2hY431EJOO+bC4jO/8MTZ+SxDqLGFehnPXGIQANi+NLyUHlkxFkWa3jy37qtUl8tWA
	 eZTREGqXyDbWw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F04FC5AE59
	for <ddprobe@lists.linux.dev>; Tue,  3 Jun 2025 09:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174894179357.22052.8642859126047730227.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8fe79b260f6ff38c730d74bb7235a354583d6dadcb7a39ba938b1d713b8bedaf
Date: Tue, 03 Jun 2025 09:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748941793
