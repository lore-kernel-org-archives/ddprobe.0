Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CEFC47484
	for <ddprobe@lists.linux.dev>; Sun,  1 Jan 2023 22:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 85DE7C433EF
	for <ddprobe@lists.linux.dev>; Sun,  1 Jan 2023 22:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672610487;
	bh=elx9K5wPbaFWWxjKDCSuFaOjg1yFOGo2iLx5HCIuqJ8=;
	h=To:Subject:From:Date:From;
	b=YjaPBjMsxanj8v2UEz4wWz26rFrkYk5UbkwCq/YaSLAym9U4dQ/evqZ1/MKjJJmKJ
	 I1Z8eswq1TcEfMR8aqDAp+YsWIxeQhE+eatGOFih8wmBlSV2TA4bet2xsyHMFkpCNF
	 KBQPLUtIfEZo62Ic1b2AMNa0kIjzvNdMcXlcktI0mEefUsnlPaMJcJpG57eKVR9ADj
	 DnDBSGJFPKTr8gfM5vnNCD1aXSzeL4bg67d+p6WbEkwQbeGWTbub7SDhgdSnO6IVNL
	 TtiFFJO+7a/L+qmwWKjPQkByBl3VjCARDi51dbG1rSg7L5SJfC+ELjML5zXtNvG00y
	 I2TPpIo19RQYg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6DC3DC4167B
	for <ddprobe@lists.linux.dev>; Sun,  1 Jan 2023 22:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167261048740.20056.7007890795602423910.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fc94d5f267bc3527764fc69a6dd6b117a41da66a4b996e41381a19cd4494ba5a
Date: Sun, 01 Jan 2023 22:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672610487
