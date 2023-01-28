Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 48B24849C
	for <ddprobe@lists.linux.dev>; Sat, 28 Jan 2023 21:53:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D84ECC433EF
	for <ddprobe@lists.linux.dev>; Sat, 28 Jan 2023 21:53:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674942785;
	bh=OWxkG2W0/jCb3Up57tfiXU8KHd2F5vKO9khy+qQoaUc=;
	h=To:Subject:From:Date:From;
	b=frrEvp8uua60rvbYjhCURguFJRi6Qb9F1VBDzoIUEpJB6fQW7RKSYh4qBH27Ng09E
	 Uq8lVuXENcBwum7dZi5uQ5v7KCMwstvFRRQtc97612HdmeOtWgi9Kix/5JJ2owsnv3
	 GMNps25XbUqCUP0JTGm1WvCQoTHTpEhjHcSXCoh+aBS2Gccvmpst6wLC+hwmIiSJlW
	 00mhGZBOLc0LzTRycOisdbDljuFcqMt3Egy+nx3WKH5RVPijH2+fMfIj/XraCJXqeG
	 A0jKnrs7vFIIETMA98kuGr5yJld6i9UtDHUcOBFMocoIzP5E9DemVZHh3cEa5OlB3+
	 W2t6S2QpXyP9w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BD012C636CB
	for <ddprobe@lists.linux.dev>; Sat, 28 Jan 2023 21:53:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167494278576.1154.5285181714165534794.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2559debbcd3b8cdb075101264ffe47d92e4cc5a3c55eb55ac2f8ad9d07d4f0dd
Date: Sat, 28 Jan 2023 21:53:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674942785
