Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DE96E746F
	for <ddprobe@lists.linux.dev>; Mon, 12 Dec 2022 22:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 81AB7C433D2
	for <ddprobe@lists.linux.dev>; Mon, 12 Dec 2022 22:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670883087;
	bh=CQliU4dC5jhHkndolW98d9Xw/GooMuZZ5GMCvDUHnsE=;
	h=To:Subject:From:Date:From;
	b=bHbrNzMkgjsuw2A/tMJbehXE4jURVh9NZo7LIcNWRP/3PbFy03kbUwW2adLNMmg6Y
	 8DpTJ5ML+LYk5sBOc5Z6FhF18tEoJA8V98CVcSpxeFF0MTCNs3pNa/NKnfnulh4T+S
	 mWaH96T7TiIhCi+PA83CHzKl2fZo5OffiZdOmBnpiuQC46cT4ej+UJh2j9E9CaJgzd
	 gMUfQuFfpjY/1ed7p3887/s1IRukuOApqi6ENN5HmqrB282EyDVK+c14ydkkItMLDr
	 nS7KpkWtCi3XGeGGCHKZgHn+FbINY1YhicaGKyndMVFcxDuRqkW23Mvwovx5zkG+g9
	 xCxKX9DlAAMtg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 618EFC4332F
	for <ddprobe@lists.linux.dev>; Mon, 12 Dec 2022 22:11:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167088308739.9742.2445375087773696112.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 45b6254bae8fa34b5ecf2f0639020e1a7b2d1b2e665e7cd2c1e3a10837de4ed4
Date: Mon, 12 Dec 2022 22:11:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670883087
