Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DAB3B2F22
	for <ddprobe@lists.linux.dev>; Wed, 21 Dec 2022 19:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 89FD8C433EF
	for <ddprobe@lists.linux.dev>; Wed, 21 Dec 2022 19:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671649887;
	bh=p46YWG+BGf9YiLqUMxE6jy0SwqOKlsSgVs4qM8Nxc+Q=;
	h=To:Subject:From:Date:From;
	b=YuIHifn7dblz2Px9DDXPqSpJ2Pvj/qRnSRymP6uWypd5aQaW6rwL5pvOx/RWH+WaL
	 5GS18VDgrnTFteX273p4rD7z/e2cdbnZFUd7v2+OzxAV6sNl3bb69yeZ5IpjiGVXB1
	 SSZjzM/ge93CJwUHtcFfBh5JufJJDEqu7YfE4c9BSSA9ZZo+Ku5a9cUgnzrdb9WB1l
	 7EoBnBOfwVVi6D7QmI7tvBJPn/rGnK1gzJ2OR8oHgZ65UzuxV+9FZupbSS/OrNBYIE
	 xva3MRxSEYSgTRP/GMC3sQStD86D6jeZ2Od37mV7CGu9uzGyQMEbEpOLkchv5tk8RE
	 UBJowk1sD2MAQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6B879C4332F
	for <ddprobe@lists.linux.dev>; Wed, 21 Dec 2022 19:11:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167164988742.8864.7451678156777697428.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d1d052b88c9a3f93c3d0e1e8b24a103df6417e74b297b27c540bb412c7cd34f2
Date: Wed, 21 Dec 2022 19:11:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671649887
