Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D4321FBF
	for <ddprobe@lists.linux.dev>; Mon, 20 Mar 2023 16:07:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E1036C433EF
	for <ddprobe@lists.linux.dev>; Mon, 20 Mar 2023 16:07:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1679328425;
	bh=LoepnbNJcd2zUz5MMwFmkZKBuCphFUtYqsDtypnjook=;
	h=To:Subject:From:Date:From;
	b=MZWgBzgvVp4JGse0cOb+gcx6nTgfbazPLmIFJpr/ZErkmyPVCkxuY5DZkfjvv4rxQ
	 UF6HSpvPupbgc+dGUQl7MoreC/Xv6rdMo9cneREf14YhPd3EOn2Dj7BiJ7Eg8A6+hy
	 KZNUoE70Qhf4uuMwKYVVqDIMjJh5btKkdPvm19mv3SwvizdgIYfZwX2uzb+MNaSfrj
	 utbWtcQAkO8yVwa/wLtt46eTxMqptILAi4FavgB6fZl3T3EABVzz6W4Mom6Mj3953l
	 0yTYGC2gtylqU2pViLJ/5UHfhMmhD25T3K9WEPHK8Uad8f9iT0gNB0pbNXXqNhSnaN
	 Ac5S1ebkBseZw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C092CC6FD1D
	for <ddprobe@lists.linux.dev>; Mon, 20 Mar 2023 16:07:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167932842577.13355.11967280738779821350.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e2f34b70bb99c55d21e6c6bac78a17ff24f6aee375aa5a92e61b255bac28e585
Date: Mon, 20 Mar 2023 16:07:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1679328425
