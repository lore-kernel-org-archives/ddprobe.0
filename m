Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 61B2436D
	for <ddprobe@lists.linux.dev>; Sun, 22 Jan 2023 10:32:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 0750AC433EF
	for <ddprobe@lists.linux.dev>; Sun, 22 Jan 2023 10:32:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674383526;
	bh=Rcsy25x3Ltk1tfTmAG6aOjjOoOn5RUAV5VMh5aqzlGQ=;
	h=To:Subject:From:Date:From;
	b=vDK4vu9K9zy7cPdLPX3z4RHNq9lGT082krPBY55vzOfWVpWLrYupEA+sqhhiSIJ9j
	 mnupGzpcgPyYZ31ubZsQczNLG25SKXrLcBD8Cc1eZet4bYdqS2tD/a9Hr2IThR9B/c
	 ScKJKk5HL28YhiR/fpFWdB9urfE4kWereSbrnUBgn4f4qqcAHxYZUTix6hcyCEWef2
	 nD96LBcga8v9mVU91oEk2XYXo5zifxLzI6XrHumHdUbK2Jgn4N+GNFH/3m10SK0/u5
	 eUyWsRq7fLXibe6ppThE0WUjrVdheDc+ft6FXp68UGQfYBoJ8UWwJiHEz7e23IhgnR
	 mxVKlLQibMQfg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D88D8C25B4E
	for <ddprobe@lists.linux.dev>; Sun, 22 Jan 2023 10:32:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167438352586.32658.3358845058207394612.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7bed0a8eab943c94be3e6cb0c5a1e3173fbba006ef94d3ebd3a378fdc527f84d
Date: Sun, 22 Jan 2023 10:32:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674383525
