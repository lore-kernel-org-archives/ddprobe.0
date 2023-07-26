Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5A38818051
	for <ddprobe@lists.linux.dev>; Wed, 26 Jul 2023 19:32:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CCD7CC433C7
	for <ddprobe@lists.linux.dev>; Wed, 26 Jul 2023 19:32:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1690399928;
	bh=KjRSsp5fvAy98dd0z1etxq0HmkhjTB/SCn2QLSh3oyg=;
	h=To:Subject:From:Date:From;
	b=ZUavZm5WLCstfJJukkPkXXSTkio4/ak9EHztgQZnKujCEI8DfC6o/bFWdbdUGaEhF
	 aevhVaC1T7xpSUpCU9zFWz+oQxqUkBzcNzYVphxP3HVTrcT9gurqh9zNYWjZc6NLez
	 dCng3TyCeTmIYr2JXkHiqybLxMXUckxLjlvyytlQINblj+jUK4APOPchiVBLa7M/K1
	 zsddkSLpFZe7ZHa0u2DwZGdZX9Rd7p8em+aqoi+XakluTz2Be4b4kvUvIK41G6I62+
	 RfM6UpNbcDqOJ+afdLgiwKYBEchT6NP+SdiMRSeDOLChS9xS6yd7HgCvSK+coMDCV0
	 D66GZF1WzYnKg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B10AAC001DC
	for <ddprobe@lists.linux.dev>; Wed, 26 Jul 2023 19:32:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169039992871.32677.8374914986968900103.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 673dd93e2bc0b5826f2f387153159381de56bd911b05401bb1a842e9f2c26f60
Date: Wed, 26 Jul 2023 19:32:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1690399928
