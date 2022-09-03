Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D5BA27E
	for <ddprobe@lists.linux.dev>; Sat,  3 Sep 2022 16:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7ADA0C433C1
	for <ddprobe@lists.linux.dev>; Sat,  3 Sep 2022 16:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662222053;
	bh=oStI4VzROaz/e1EnE+Ok5DdhKXx9ODTHlypeGEaZYgg=;
	h=To:Subject:From:Date:From;
	b=IEFj+8OPHuDG8NqR8Q7sJ9P2l6yux6anpl3OMH3p+/+If9t8/G8EU8y2ynvZFfN3p
	 C13EbLR7EUHHi6KrDxHqDnFAyqGO/GWRnQGyjmQva8pyCUYeOzDyicPvOYUzMfZFam
	 sz6qLafc7Y8ZKdDJ7sEMaC28Mn970I9FHwaNHf8sqVqkxZ82YQB868QAVIEGsokxTv
	 MwjweifEi609Gs0iapacmFSwBeS/5LVG12b0+ATGHZPmxg0Rn/v4IdWfH5x5AnNjGb
	 Wq47JAJTVhYAg5x+pxl+gD49Z5mdPMa7MDomWBNMBvrzm7BzHiNt5koDM4HAoSmyWr
	 +m/de8MSdZ5UQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5A5A4ECAAD4
	for <ddprobe@lists.linux.dev>; Sat,  3 Sep 2022 16:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166222205332.25223.10669750711585263482.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 81ce2b729ef94f052b85c8f8dc4c0a0368a189c0aef192f7e6587fd8bd8a2ab9
Date: Sat, 03 Sep 2022 16:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662222053
