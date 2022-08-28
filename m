Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BAC1F2F45
	for <ddprobe@lists.linux.dev>; Sun, 28 Aug 2022 16:50:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6C34EC433C1
	for <ddprobe@lists.linux.dev>; Sun, 28 Aug 2022 16:50:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661705452;
	bh=yF+iUuhkT92rhxUHqODhPPixxVBra9QiHePhosItH8Q=;
	h=To:Subject:From:Date:From;
	b=sRCf8Uw2U7mMUftXesLTMhyDlKs41+GrEicksqQku2MBHiV7qOw5Gm3i38h7klsmN
	 PzYhMry6wURWClhKZfhbkul57AKT9HeK/St/n72wBTpXQm5Ffm8tHXT7c1ghTyJv3i
	 GhuaoiXqr6ynF1lfhf4MciFJKEvBada83Q93FHAUukW9WqOFDBl4Cdr7tugynON/MR
	 k19t6MB/zV2y0Q3GUNnEeEBJzrgsRyaZ1afryM7lpa607iLoMpiYqzLs3HafuvmOr2
	 aL2Sokrl+7+NmHmR6Q8gsSi9YLONHmdRhgKSiyB0y/7AVV4pd/XCd7+oOYL+1EAqPz
	 iW24wZb13J98Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5279FECAAD2
	for <ddprobe@lists.linux.dev>; Sun, 28 Aug 2022 16:50:52 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166170545233.18967.1851440526855735337.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 76a357512b7fe2009f3d83e1350c028e90d7b706177d646fc2c6a8654c215532
Date: Sun, 28 Aug 2022 16:50:52 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661705452
