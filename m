Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D08628F0
	for <ddprobe@lists.linux.dev>; Wed, 15 Feb 2023 14:38:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D91FEC433D2
	for <ddprobe@lists.linux.dev>; Wed, 15 Feb 2023 14:38:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1676471885;
	bh=a6X9YhUMByuIiVbW+aOews77U943Dpfa3q4sqPw3FnU=;
	h=To:Subject:From:Date:From;
	b=r+J0kYzKYZj6F9cNZeSeIDvX290uZGIqkXOIH7W14UaHZ0mP2EfAayxofw+Nfsomu
	 4MScQ0qqGiixrKqwotuWmMTBv+gGJlmiSiOjiW4/7f3WtaQq/93yHo7LB80aAM3kis
	 Xe3wq6aCm40f2pzMi5Yy1NPJ1I4Ac1N55Xg2wGUPD9t9VUsx01sTvYX9+af7GdTPWm
	 aL8yhvXxdGqKIJdYQbFbxRhV/6+tYhuCtYUOwikSg3T2a40yOF9/lC3syDRpC932Sm
	 YT64lnYfSlYNwdfBzrh5EIQqecWpMWFYstU9mOf3CV+5hSi/v7xWM/KvjNz38DcJXE
	 1NTjIzmf3KykA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BB3B8C636CC
	for <ddprobe@lists.linux.dev>; Wed, 15 Feb 2023 14:38:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167647188575.23003.15932330541355738702.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2382287a73e2a7db01e3096fc8e8d4d6f3c18ea43ea365566afec9d81b4bcdbd
Date: Wed, 15 Feb 2023 14:38:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1676471885
