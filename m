Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A306378
	for <ddprobe@lists.linux.dev>; Mon, 30 Jan 2023 01:43:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id EA9DBC433D2
	for <ddprobe@lists.linux.dev>; Mon, 30 Jan 2023 01:43:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1675042986;
	bh=xwZfd98bzeQZghNpXSwCZ8MgBBvrMmJHR7Hajb0kkk4=;
	h=To:Subject:From:Date:From;
	b=uHcsTPifvWrb4lx9yTASnVMXQpYBgJvRUUn3BXZHDYsgQqgkl0R3wOHeinhuX1ZN6
	 NzCh+uzqjH+75CqZEwXRukPznUrco2ZgJnU/zDPD1JSsu8cfywur0HaLS9a/oLyPs0
	 qAROF5FWWXwwpPkh70qtc87HN2X2fM3vkq+W7QLeadvbPmUT26+y4jmKmd5WtYwoEd
	 ylVnkGkMpZ+iCR+wYs819Wnh+VVMEKbt0L+njJV2Wys1Db8iW85UQDwLjUVgvnGRZ2
	 zVmQBaDIk74VHcn9Q05n4LNp36rtU60mqPAcrib8rJQZDJty0X193m3sKVT+KW3GCk
	 gXY4RLyl3YAhQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C3B9BC05027
	for <ddprobe@lists.linux.dev>; Mon, 30 Jan 2023 01:43:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167504298579.15951.11647366711446492222.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ae6036cd73af1d9f07b14056a58d2ab33ad6364e596ecf049263763a87dd4f96
Date: Mon, 30 Jan 2023 01:43:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1675042985
