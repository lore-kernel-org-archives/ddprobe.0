Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25D6E33EC
	for <ddprobe@lists.linux.dev>; Mon, 13 Feb 2023 11:34:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4EBBC433EF
	for <ddprobe@lists.linux.dev>; Mon, 13 Feb 2023 11:34:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1676288045;
	bh=/dPMkjLGOY+ml+eBdZXesVoJHeKr0mkRjUz2dNXr/+0=;
	h=To:Subject:From:Date:From;
	b=KOuCanQozfyAaH3O2qBjdm7KSQwuL8ABcoBkWmdeKuwAnH969fpo6TxS/njy4lVnh
	 OrlZrvpX3MZbrTZcAJdvR0DzzhXHHuTwB2bDcq8TmH1ZWVp0wKwRdHtvcsKijarr3d
	 vKanis+2zRGxSGTTqxBF4mmrrbk49t87LJItXKCik69od1+3uW5axjnKeJ0hbNllZz
	 c6QL9rLO87wQbLueYpcXKZfxuoQ8APhEd1YW9LG7+mRYLZKBrNT7I/8KnBrYkb/sJJ
	 XNK4h9HDJnGZiU5qIoSRo0l73AqWvEuoP2y33jFFwn++Kczh8OeDNbqJdE4uYtlcnm
	 d1IU94wKOApsg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B815DC636CC
	for <ddprobe@lists.linux.dev>; Mon, 13 Feb 2023 11:34:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167628804574.18893.2871110377160560869.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2a90b8a5423b4773cc0a8b074edf87d0798b5028f5df85f677f67f359f20f89b
Date: Mon, 13 Feb 2023 11:34:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1676288045
