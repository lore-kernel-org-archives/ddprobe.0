Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CDEE9190462
	for <ddprobe@lists.linux.dev>; Wed, 21 Jan 2026 03:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768966433; cv=none; b=DAr9KrGeP98/oLSIpbZLVGdPKpve1lIm6tSj8Ty1dCwx6Sz36g4IgFvb0cyvKJdLDabJrZO7LKID6PiPfAfR9Bduka3oLu4/aU7BgGn8NpFaA42PKuf72mFoc3M4OHZs9/Bt4wmpaGgkOWoI+uXcLojRdlybEnSKHJ9yLnuq0i0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768966433; c=relaxed/simple;
	bh=+sZjY+bjC+pbfyGqj4xDRvbaDdz9aXuNXY/ZdOaG49A=;
	h=To:Subject:From:Message-Id:Date; b=i4hIBK6GW9kson/SuH0oZMDalCyuFpurj8dA9Wg/VyIP/BGmkSfVTII8BXJCYL/JlSqDeknkeLGwX81Q0kV0iFP9rovm8voFcnnfAMZKchGxZL1wmiry1mguqAyxtZUjAxnzViN4DGGVFj5kkuM07DIF2vTcWF0PikKyXMdTq6s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=M+V9RzJS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="M+V9RzJS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1CBFC16AAE
	for <ddprobe@lists.linux.dev>; Wed, 21 Jan 2026 03:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768966433;
	bh=+sZjY+bjC+pbfyGqj4xDRvbaDdz9aXuNXY/ZdOaG49A=;
	h=To:Subject:From:Date:From;
	b=M+V9RzJSDOGE+pA8VsRbyJFz2HZk++qnvzHrwKKlpyrLrybDsBw0kiMPSAJRvGhhI
	 kl3e+qo8ZKKROiSzxIM9y5ORb7ec/wyRLkJTCjeeKSzrJKkAJCgs1A9A/MCF+g8w06
	 PHbqQO8dlINWiET24RzZOqMPpvJHHEKe47IYSvu3HdYg9PdwuxAIY0NZhHPdYuam2X
	 YGYWxCcBrPSlhHAkLwkvnRZM1ubl6mqEG9c5ODtUacsf72j8nEwWGnJIz4YXdd4oTP
	 RhcDqjPTwEupqvrcEHkfBrk2Y4fUXOiHEOQ8DnlFf5gqd4hL5yjxbBqo69Iths05g/
	 4nJRtfi8PhnWQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91FFCD262B7
	for <ddprobe@lists.linux.dev>; Wed, 21 Jan 2026 03:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176896643357.19074.12482243951046682490.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 47f8cc628d694e7353ffd06da83363124ab65ed8a989ddb36113320ea1f5e0ec
Date: Wed, 21 Jan 2026 03:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768966433
